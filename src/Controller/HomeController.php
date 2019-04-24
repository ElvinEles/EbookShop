<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Menu;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Cookie;
use App\Entity\User;
use App\Entity\Category;
use App\Entity\Slider;
use App\Entity\Book;
use App\Entity\WishList;
class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index(Request $request)
    {
      $session = new Session();
      $session->start();



      if ($request->cookies->get('user_email') != null && $request->cookies->get('user_password') !=null) {

        $repository = $this->getDoctrine()->getRepository(User::class);
        $db_user=$repository->findOneBy(['user_email' => $request->cookies->get('user_email')]);

        if ($db_user != null) {
         if ($db_user->getUserPassword() == md5($request->cookies->get('user_password'))) {
           $session->set('user_email', $db_user->getUserEmail());
           $session->set('user_id', $db_user->getUserId());
         }
        }

      }
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


      $repository = $this->getDoctrine()->getRepository(Book::class);

      $query=$repository->createQueryBuilder('b')
                        ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                        ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                        'b.book_price','b.book_amount','b.book_menu','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                        ->andWhere('b.book_active = :book_active')
                        ->setParameter('book_active', 0)
                        ->andWhere('b.book_new = :book_new')
                        ->setParameter('book_new', 0)
                        ->orderBy('b.book_id', 'DESC')
                        ->setMaxResults(12)
                        ->getQuery();

      $books=$query->getResult();

      //return new Response(var_dump($books));

     return $this->render("index.html.twig",
     [
     'books'=>$books,
     'sliders'=>$sliders,
     'wishlists'=>$wishlists,
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
     * @Route("/register", name="register",methods={"GET"})
     */
    public function registerpage()
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



      $menus = $repository_menu->findAll();

      $repositery_slider = $this->getDoctrine()->getRepository(Slider::class);
      $sliders = $repositery_slider->findBy(['slider_active' => 0]);

     return $this->render("include/user_register.html.twig",[
       'sliders'=>$sliders,
       'menus'=>$menus,
       'wishlists'=>$wishlists,
       'menus_bests'=>$menus_bests,
       'category_azers'=>$category_azers,
       'category_turkishs'=>$category_turkishs,
       'category_englishs'=>$category_englishs,
       'category_russians'=>$category_russians,
       'category_others'=>$category_others
     ]);

    }

    /**
     * @Route("/my_account", name="my_account",methods={"GET"})
     */
    public function my_account()
    {

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

      $repositery_slider = $this->getDoctrine()->getRepository(Slider::class);
      $sliders = $repositery_slider->findBy(['slider_active' => 0]);

      $menus = $repository_menu->findAll();

      $repository = $this->getDoctrine()->getRepository(Menu::class);
      $menus = $repository->findAll();


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


     return $this->render("include/my_account.html.twig",[
       'menus'=>$menus,
       'sliders'=>$sliders,
       'wishlists'=>$wishlists,
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
    *@Route("/my_account_information",name="my_account_information",methods={"GET","POST"})
    */
    public function my_account_information()
    {
      $session = new Session();
      $session->start();

      $repository = $this->getDoctrine()->getRepository(Menu::class);
      $menus = $repository->findAll();

      $repository = $this->getDoctrine()->getRepository(User::class);
      $current_user=$repository->find($session->get('user_id'));


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

      $repositery_slider = $this->getDoctrine()->getRepository(Slider::class);
      $sliders = $repositery_slider->findBy(['slider_active' => 0]);

      $menus = $repository_menu->findAll();

      $repository = $this->getDoctrine()->getRepository(Menu::class);
      $menus = $repository->findAll();


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
    // return $current_user->getUserName();
     return $this->render("include/my_account_information.html.twig",[
       'menus'=>$menus,'current_user'=>$current_user,
       'sliders'=>$sliders,
        'wishlists'=>$wishlists,
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
