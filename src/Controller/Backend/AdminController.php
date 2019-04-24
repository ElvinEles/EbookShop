<?php

namespace App\Controller\Backend;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Menu;
use App\Entity\Book;
use App\Entity\Category;
use App\Entity\Slider;
use Symfony\Component\HttpFoundation\Response;
class AdminController extends AbstractController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index()
    {
        return $this->render('admin/indexadmin.html.twig');
    }

    /**
     * @Route("/add_category", name="add_category")
     */
    public function add_category()
    {
      $repository = $this->getDoctrine()->getRepository(Menu::class);
      $menus = $repository->findAll();
        return $this->render('admin/include/add_category.html.twig',['menus'=>$menus]);
    }

    /**
     * @Route("/all_category", name="all_category")
     */
    public function all_category()
    {

       $repository = $this->getDoctrine()->getRepository(Category::class);

       $query=$repository->createQueryBuilder('c')
                         ->innerJoin(Menu::class, 'm', 'with', 'm.menu_id = c.menu_id')
                         ->select('c.id','c.category_name','m.menu_name')
                         ->getQuery();

       $categories=$query->getResult();

    //   return new Response(var_dump($categories));
        return $this->render('admin/include/all_category.html.twig',['categories'=>$categories]);
    }

    /**
     * @Route("/edit_category_page/{category_id}", name="edit_category_page")
     */
    public function edit_category_page($category_id)
    {
      $repository = $this->getDoctrine()->getRepository(Category::class);

      $query=$repository->createQueryBuilder('c')
                        ->innerJoin(Menu::class, 'm', 'with', 'm.menu_id = c.menu_id')
                        ->select('c.id','c.category_name','m.menu_name','m.menu_id')
                        ->andWhere('c.id = :category_id')
                        ->setParameter('category_id', $category_id)
                        ->getQuery();

      $category=$query->getSingleResult();

      $repository = $this->getDoctrine()->getRepository(Menu::class);
      $menus = $repository->findAll();

      // return new Response(var_dump($category[0]['category_name']));
       return $this->render('admin/include/edit_category.html.twig',['category'=>$category,'menus'=>$menus]);
    }

    /**
     * @Route("/add_slider", name="add_slider")
     */
    public function add_slider()
    {
        return $this->render('admin/include/add_slider.html.twig');
    }

    /**
     * @Route("/all_sliders", name="all_sliders")
     */
    public function all_sliders()
    {
      $repository = $this->getDoctrine()->getRepository(Slider::class);
      $sliders = $repository->findAll();

        return $this->render('admin/include/all_slider.html.twig',['sliders'=>$sliders]);
    }

    /**
     * @Route("/edit_slider_page/{slider_id}", name="edit_slider_page")
     */
    public function edit_slider_page($slider_id)
    {
      $repository = $this->getDoctrine()->getRepository(Slider::class);

      $query=$repository->createQueryBuilder('s')
                        ->select('s.slider_id','s.slider_name','s.slider_image','s.slider_active')
                        ->andWhere('s.slider_id = :slider_id')
                        ->setParameter('slider_id', $slider_id)
                        ->getQuery();

      $slider=$query->getSingleResult();



    //   return new Response(var_dump($slider));
       return $this->render('admin/include/edit_slider.html.twig',['slider'=>$slider]);
    }

    /**
     * @Route("/add_book", name="add_book")
     */
    public function add_book()
    {
      $repository = $this->getDoctrine()->getRepository(Category::class);
      $categories = $repository->findAll();

      $repository_m = $this->getDoctrine()->getRepository(Menu::class);
      $menus = $repository_m->findAll();

        return $this->render('admin/include/add_book.html.twig',['categories'=>$categories,'menus'=>$menus]);
    }

    /**
     * @Route("/all_books_azeri", name="all_books_azeri")
     */
    public function all_books_azeri()
    {

      $repository = $this->getDoctrine()->getRepository(Book::class);

      $query=$repository->createQueryBuilder('b')
                        ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                        ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                        'b.book_price','b.book_amount','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                        ->andWhere('b.book_menu = :book_menu')
                        ->setParameter('book_menu', 1)
                        ->getQuery();

      $books=$query->getResult();

        return $this->render('admin/include/all_books_azeri.html.twig',['books'=>$books]);
    }

    /**
     * @Route("/all_books_turkish", name="all_books_turkish")
     */
    public function all_books_turkish()
    {

      $repository = $this->getDoctrine()->getRepository(Book::class);

      $query=$repository->createQueryBuilder('b')
                        ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                        ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                        'b.book_price','b.book_amount','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                        ->andWhere('b.book_menu = :book_menu')
                        ->setParameter('book_menu', 2)
                        ->getQuery();

      $books=$query->getResult();

        return $this->render('admin/include/all_books_azeri.html.twig',['books'=>$books]);
    }

    /**
     * @Route("/all_books_russian", name="all_books_russian")
     */
    public function all_books_russian()
    {

      $repository = $this->getDoctrine()->getRepository(Book::class);

      $query=$repository->createQueryBuilder('b')
                        ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                        ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                        'b.book_price','b.book_amount','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                        ->andWhere('b.book_menu = :book_menu')
                        ->setParameter('book_menu', 4)
                        ->getQuery();

      $books=$query->getResult();

        return $this->render('admin/include/all_books_azeri.html.twig',['books'=>$books]);
    }

    /**
     * @Route("/all_books_english", name="all_books_english")
     */
    public function all_books_english()
    {

      $repository = $this->getDoctrine()->getRepository(Book::class);

      $query=$repository->createQueryBuilder('b')
                        ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                        ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                        'b.book_price','b.book_amount','b.book_new','b.book_about','b.book_author','b.book_active','c.category_name')
                        ->andWhere('b.book_menu = :book_menu')
                        ->setParameter('book_menu', 3)
                        ->getQuery();

      $books=$query->getResult();

        return $this->render('admin/include/all_books_azeri.html.twig',['books'=>$books]);
    }


    /**
     * @Route("/book_edit/{book_id}", name="book_edit")
     */
    public function book_edit($book_id)
    {
      $repository = $this->getDoctrine()->getRepository(Book::class);

      $query=$repository->createQueryBuilder('b')
                        ->innerJoin(Category::class, 'c', 'with', 'c.id = b.book_category')
                        ->select('b.book_id','b.book_name','b.book_image','b.book_category',
                        'b.book_price','b.book_category','b.book_amount','b.book_about','b.book_author','b.book_active','c.category_name')
                        ->andWhere('b.book_id = :book_id')
                        ->setParameter('book_id', $book_id)
                        ->getQuery();

      $book=$query->getSingleResult();

      $repository = $this->getDoctrine()->getRepository(Category::class);
      $categories = $repository->findAll();

      return $this->render('admin/include/edit_book.html.twig',['book'=>$book,'categories'=>$categories]);
    }

}
