<?php

namespace App\Controller\Frontend;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\User;
use App\Entity\Category;
use App\Entity\Slider;
use App\Entity\Book;
use App\Entity\Menu;
use App\Entity\WishList;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
class MenuController extends AbstractController
{
    /**
     * @Route("/category_slice/{category_id}", name="category_slice")
     */
    public function category_slice($category_id)
    {

      $session = new Session();
      $session->start();


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


      $repository_b = $this->getDoctrine()->getRepository(Book::class);

      $query=$repository_b->createQueryBuilder('b')
                        ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                        ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                        'b.book_price','b.book_amount','b.book_menu','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                        ->andWhere('b.book_active = :book_active')
                        ->setParameter('book_active', 0)
                        ->andWhere('b.book_category = :book_category')
                        ->setParameter('book_category', $category_id)
                        ->orderBy('b.book_id', 'DESC')
                        ->getQuery();

      $books=$query->getResult();

      $repository_c = $this->getDoctrine()->getRepository(Category::class);
      $query_c=$repository_c->createQueryBuilder('c')
                        ->andWhere('c.id = :id')
                        ->setParameter('id', $category_id)
                        ->getQuery();

      $category=$query_c->getSingleResult();

     $category_name=$category->getCategoryName();


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

  //  return new Response($category_name);

    return $this->render("include/all_books_by_menu.html.twig",
      [
      'wishlists'=>$wishlists,
      'category_name'=>$category_name,
      'books'=>$books,
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
     * @Route("/search_book_home", name="search_book_home",methods={"POST"})
     */
      public function search_book_home(Request $request)
      {

        $session = new Session();
        $session->start();

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






        $book_name=$request->request->get('book_name');

        $repository = $this->getDoctrine()->getRepository(Book::class);

        $query=$repository->createQueryBuilder('b')
                          ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                          ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                          'b.book_price','b.book_amount','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                          ->andWhere('b.book_active = :book_active')
                          ->setParameter('book_active',0)
                          ->andWhere('b.book_name like :book_name')
                          ->setParameter('book_name','%'.$book_name.'%')
                          ->getQuery();

        $books=$query->getResult();



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
      //  return new Response(var_dump($books));

        return $this->render("include/search_book.html.twig",
          [
            'wishlists'=>$wishlists,
          'books'=>$books,
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
}
