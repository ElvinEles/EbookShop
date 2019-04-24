<?php

namespace App\Controller\Backend;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Book;
use App\Entity\Category;
use App\Entity\Menu;
use App\Entity\Slider;
use App\Entity\WishList;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\JsonResponse;

class BookController extends AbstractController
{


  /**
   * @Route("/save_book", name="save_book",methods={"POST"})
   */
    public function save_book(Request $request)
    {

      $session = new Session();
      $session->start();

      $book=new Book();

      $book_name=ucwords($request->request->get('book_name'));
      $book_category=$request->request->get('book_category');
      $book_price=$request->request->get('book_price');
      $book_amount=$request->request->get('book_amount');
      $book_about=$request->request->get('book_about');
      $book_author=ucwords($request->request->get('book_author'));
      $book_menu=$request->request->get('book_menu');
      if ($book_author == null) {
      $book_author="";
      }
      $book_active=0;
      $book_new=0;

      if ($book_category == 0) {
        $session->set('add_category_success', 'Kateqoriya seçilmədi');
        return $this->redirect("/add_book");
      }

      if ($book_menu == 0) {
        $session->set('add_category_success', 'Menu seçilmədi');
        return $this->redirect("/add_book");
      }


      if ($book_price > 0 || $book_amount > 0) {
        $book->setBookName($book_name);
        $book->setBookCategory($book_category);
        $book->setBookPrice($book_price);
        $book->setBookAmount($book_amount);
        $book->setBookAbout($book_about);
        $book->setBookActive($book_active);
        $book->setBookAuthor($book_author);
        $book->setBookNew($book_new);
        $book->setBookMenu($book_menu);


        $image=$request->files->get('book_image');

        if ($image) {

           $imageName ='img/product/'.trim(time()).rand().$image->getClientOriginalName();

           $image->move($this->getParameter('product_image_directory'),$imageName);
           $book->setBookImage($imageName);
        }else {
          $book->setBookImage("no");
        }


        try {
          $entityManager = $this->getDoctrine()->getManager();
          $entityManager->persist($book);
          $entityManager->flush();


          $session->set('add_book_success', 'Kitab əlavə edildi');

        } catch (Exception $e) {
         $session->set('add_book_danger', 'Kitab əlavə edilmədi');
        }
      }else{
         $session->set('add_amount_price_success', 'Qiymət və ya Miqdar düzgün yazılmadı');
      }

      return $this->redirect("/add_book");
    }

    /**
     * @Route("/book_active/{book_id}", name="book_active",methods={"GET"})
     */
      public function book_active($book_id)
      {
        $entityManager = $this->getDoctrine()->getManager();
        $book = $entityManager->getRepository(Book::class)->find($book_id);

        $book->setBookActive(1);

        $entityManager->flush();

        if ($book->getBookMenu()==1) {
          return $this->redirect("/all_books_azeri");
        }elseif ($book->getBookMenu()==2) {
          return $this->redirect("/all_books_turkish");
        }elseif ($book->getBookMenu()==3) {
          return $this->redirect("/all_books_english");
        }elseif ($book->getBookMenu()==4) {
          return $this->redirect("/all_books_russian");
        }else {
          return $this->redirect("/admin");
        }

      }

      /**
       * @Route("/book_deactive/{book_id}", name="book_deactive",methods={"GET"})
       */
        public function book_deactive($book_id)
        {
          $entityManager = $this->getDoctrine()->getManager();
          $book = $entityManager->getRepository(Book::class)->find($book_id);

          $book->setBookActive(0);

          $entityManager->flush();
          if ($book->getBookMenu()==1) {
            return $this->redirect("/all_books_azeri");
          }elseif ($book->getBookMenu()==2) {
            return $this->redirect("/all_books_turkish");
          }elseif ($book->getBookMenu()==3) {
            return $this->redirect("/all_books_english");
          }elseif ($book->getBookMenu()==4) {
            return $this->redirect("/all_books_russian");
          }else {
            return $this->redirect("/admin");
          }
        }

        /**
         * @Route("/book_do_old/{book_id}", name="book_do_old",methods={"GET"})
         */
          public function book_do_old($book_id)
          {
            $entityManager = $this->getDoctrine()->getManager();
            $book = $entityManager->getRepository(Book::class)->find($book_id);

            $book->setBookNew(1);

            $entityManager->flush();
            if ($book->getBookMenu()==1) {
              return $this->redirect("/all_books_azeri");
            }elseif ($book->getBookMenu()==2) {
              return $this->redirect("/all_books_turkish");
            }elseif ($book->getBookMenu()==3) {
              return $this->redirect("/all_books_english");
            }elseif ($book->getBookMenu()==4) {
              return $this->redirect("/all_books_russian");
            }else {
              return $this->redirect("/admin");
            }
          }

          /**
           * @Route("/book_do_new/{book_id}", name="book_do_new",methods={"GET"})
           */
            public function book_do_new($book_id)
            {
              $entityManager = $this->getDoctrine()->getManager();
              $book = $entityManager->getRepository(Book::class)->find($book_id);

              $book->setBookNew(0);

              $entityManager->flush();
              if ($book->getBookMenu()==1) {
                return $this->redirect("/all_books_azeri");
              }elseif ($book->getBookMenu()==2) {
                return $this->redirect("/all_books_turkish");
              }elseif ($book->getBookMenu()==3) {
                return $this->redirect("/all_books_english");
              }elseif ($book->getBookMenu()==4) {
                return $this->redirect("/all_books_russian");
              }else {
                return $this->redirect("/admin");
              }
            }

        /**
         * @Route("/book_info/{book_id}",options={"expose"=true}, name="book_info",methods={"POST"})
         */
          public function book_info($book_id)
          {


            $repository = $this->getDoctrine()->getRepository(Book::class);

            $query=$repository->createQueryBuilder('b')
            ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
            ->select('b.book_id','b.book_name','b.book_image','b.book_category',
            'b.book_price','b.book_amount','b.book_about','b.book_author','b.book_active','c.category_name')
            ->andWhere('b.book_id = :book_id')
            ->setParameter('book_id', $book_id)
            ->getQuery();

            $book=$query->getSingleResult();
          /*  $entityManager = $this->getDoctrine()->getManager();
            $book = $entityManager->getRepository(Book::class)->find($book_id);*/
            $jsonData = array();
            $temp=array('book_id' =>$book['book_id'],
                        'book_name' =>$book['book_name'],
                        'book_image' =>$book['book_image'],
                        'book_category' =>$book['category_name'],
                        'book_price' =>$book['book_price'],
                        'book_amount' =>$book['book_amount'],
                        'book_about' =>$book['book_about'],
                        'book_author' =>$book['book_author']);
            $jsonData[0]=$temp;

          return new JsonResponse($jsonData);
          }


          /**
           * @Route("/update_book/{book_id}", name="update_book",methods={"POST"})
           */
            public function update_book($book_id,Request $request)
            {

              $session = new Session();
              $session->start();

              $entityManager = $this->getDoctrine()->getManager();
              $book = $entityManager->getRepository(Book::class)->find($book_id);

              $book_name=ucwords($request->request->get('book_name'));
              $book_category=$request->request->get('book_category');
              $book_price=$request->request->get('book_price');
              $book_amount=$request->request->get('book_amount');
              $book_about=$request->request->get('book_about');
              $book_author=ucwords($request->request->get('book_author'));

              if ($book_author == null) {
              $book_author="";
              }

              if ($book_price > 0 || $book_amount > 0) {
                $book->setBookName($book_name);
                $book->setBookCategory($book_category);
                $book->setBookPrice($book_price);
                $book->setBookAmount($book_amount);
                $book->setBookAbout($book_about);
                $book->setBookAuthor($book_author);


                $image=$request->files->get('book_image');

                if ($image) {

                   $imageName ='img/product/'.trim(time()).rand().$image->getClientOriginalName();

                   $image->move($this->getParameter('product_image_directory'),$imageName);
                   $book->setBookImage($imageName);
                }


                try {
                  $entityManager = $this->getDoctrine()->getManager();
                  $entityManager->persist($book);
                  $entityManager->flush();


                  $session->set('add_book_success_edit',$book->getBookName().' adlı kitab yeniləndi ');

                } catch (Exception $e) {
                 $session->set('add_book_danger_edit', 'Kitab yenilənmə alınmadı');
                }
              }else{
                 $session->set('add_amount_price_success_edit', 'Qiymət və ya Miqdar düzgün yazılmadı');
              }

              if ($book->getBookMenu()==1) {
                return $this->redirect("/all_books_azeri");
              }elseif ($book->getBookMenu()==2) {
                return $this->redirect("/all_books_turkish");
              }elseif ($book->getBookMenu()==3) {
                return $this->redirect("/all_books_english");
              }elseif ($book->getBookMenu()==4) {
                return $this->redirect("/all_books_russian");
              }else {
                return $this->redirect("/admin");
              }

            }

            /**
             * @Route("/delete_book", name="delete_book",methods={"POST"})
             */
              public function delete_book(Request $request)
              {
               $book_id=$request->request->get('delete_book_id');

               $entityManager = $this->getDoctrine()->getManager();
               $book = $entityManager->getRepository(Book::class)->find($book_id);

               $entityManager->remove($book);
               $entityManager->flush();
               if ($book->getBookMenu()==1) {
                 return $this->redirect("/all_books_azeri");
               }elseif ($book->getBookMenu()==2) {
                 return $this->redirect("/all_books_turkish");
               }elseif ($book->getBookMenu()==3) {
                 return $this->redirect("/all_books_english");
               }elseif ($book->getBookMenu()==4) {
                 return $this->redirect("/all_books_russian");
               }else {
                 return $this->redirect("/admin");
               }
              }


              /**
               * @Route("/search_book", name="search_book",methods={"POST"})
               */
                public function search_book(Request $request)
                {

                  $book_name=$request->request->get('book_name');

                  $repository = $this->getDoctrine()->getRepository(Book::class);

                  $query=$repository->createQueryBuilder('b')
                                    ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                                    ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                                    'b.book_price','b.book_amount','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                                    ->andWhere('b.book_name like :book_name')
                                    ->setParameter('book_name','%'.$book_name.'%')
                                    ->getQuery();

                  $books=$query->getResult();

                //  return new Response(var_dump($books));
                  return $this->render('admin/include/all_books_azeri.html.twig',['books'=>$books]);

                }



                /**
                 * @Route("/product_show/{book_id}", name="product_show",methods={"GET"})
                 */
                  public function product_show($book_id)
                  {
                    $repository = $this->getDoctrine()->getRepository(Menu::class);
                    $menus = $repository->findAll();

                    $repository_cat = $this->getDoctrine()->getRepository(Category::class);
                    $category_azers= $repository_cat->findBy(['menu_id' => 1]);
                    $category_turkishs= $repository_cat->findBy(['menu_id' => 2]);
                    $category_englishs= $repository_cat->findBy(['menu_id' => 3]);
                    $category_russians= $repository_cat->findBy(['menu_id' => 4]);
                    $category_others= $repository_cat->findBy(['menu_id' => 6]);



                    $repository_menu = $this->getDoctrine()->getRepository(Menu::class);
                    $query=$repository_menu->createQueryBuilder('m')
                                           ->select('m.menu_id','m.menu_name')
                                           ->setMaxResults(4)
                                           ->getQuery();
                    $menus_bests=$query->getResult();



                    $menus = $repository_menu->findAll();

                    $repositery_slider = $this->getDoctrine()->getRepository(Slider::class);
                    $sliders = $repositery_slider->findBy(['slider_active' => 0]);


                    $repository = $this->getDoctrine()->getRepository(Book::class);

                    $query=$repository->createQueryBuilder('b')
                                      ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                                      ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                                      'b.book_price','b.book_amount','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                                      ->andWhere('b.book_id = :book_id')
                                      ->setParameter('book_id', $book_id)
                                      ->getQuery();

                    $book=$query->getSingleResult();

                    $repositery_wish = $this->getDoctrine()->getRepository(WishList::class);
                  //  $wishlists = $repositery_wish->findBy(['user_id' => $session->get('user_id')]);

                    $query_w=$repositery_wish->createQueryBuilder('w')
                                      ->innerJoin(Book::class, 'b', 'with', 'b.book_id = w.book_id')
                                      ->select('b.book_id','b.book_name','b.book_image',
                                      'b.book_price','b.book_amount','b.book_menu','b.book_new','b.book_about','b.book_author','b.book_active')
                                      ->andWhere('w.user_id = :user_id')
                                      ->setParameter('user_id', $session->get('user_id'))
                                      ->getQuery();
                    $wishlists=$query_w->getResult();

                   return $this->render("include/product_show.html.twig",[
                     'book'=>$book,
                     'wishlists'=>$wishlists,
                     'sliders'=>$sliders,
                     'menus'=>$menus,
                     'menus_bests'=>$menus_bests,
                     'category_azers'=>$category_azers,
                     'category_turkishs'=>$category_turkishs,
                     'category_englishs'=>$category_englishs,
                     'category_russians'=>$category_russians,
                     'category_others'=>$category_others
                   ]);
                  }

                  /**
                   * @Route("/add_to_wishlist/{book_id}", name="add_to_wishlist",methods={"GET"})
                   */
                    public function add_to_wishlist($book_id)
                    {
                      $session = new Session();
                      $session->start();

                      $entityManager = $this->getDoctrine()->getManager();
                      $wishlist=new WishList();
                      $wishlist->setBookId($book_id);

                      if ($session->get('user_id') != null) {
                      $wishlist->setUserId($session->get('user_id'));
                      $entityManager->persist($wishlist);
                      $entityManager->flush();
                      return $this->redirect('/home');
                    }else {
                      $session->set('user_information_enter', 'İstək üçün giriş etməlisiniz');
                      return $this->redirect('/home');
                    }
                    }



}
