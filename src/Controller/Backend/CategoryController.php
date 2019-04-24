<?php

namespace App\Controller\Backend;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Category;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\Response;
class CategoryController extends AbstractController
{

    /**
     * @Route("/save_category", name="save_category",methods={"POST"})
     */
    public function save_category(Request $request)
    {

      $session = new Session();
      $session->start();


      $category_name=ucwords($request->request->get('category_name'));
      $menu_id=$request->request->get('menu_id');

      $category=new Category();

      if ($menu_id != 0 && $category_name != null) {
        $category->setCategoryName($category_name);
        $category->setMenuId($menu_id);

        $entityManager = $this->getDoctrine()->getManager();


        try {
          $result=$entityManager->persist($category);
          $entityManager->flush();
          $session->set('add_category_success', 'Kateqoriya əlavə edildi');
          return $this->redirect("/add_category");
        } catch (Exception $e) {
          $session->set('add_category_danger', 'Kateqoriya əlavə edilmədi');
          return $this->redirect("/add_category");
        }

      }else {
        $session->set('add_category_error', 'Problem yaşandı');
        return $this->redirect("/add_category");
      }

    }

    /**
     * @Route("/delete_category", name="delete_category",methods={"POST"})
     */
    public function delete_category(Request $request)
    {

      $category_id=$request->request->get('delete_category_id');

      $entityManager = $this->getDoctrine()->getManager();
      $category = $entityManager->getRepository(Category::class)->find($category_id);

      $entityManager->remove($category);
      $entityManager->flush();
      return $this->redirect("/all_category");

    }

    /**
     * @Route("/edit_category", name="edit_category",methods={"POST"})
     */
    public function edit_category(Request $request)
    {
      $category_id=$request->request->get('category_id');
      $category_name=ucwords($request->request->get('category_name'));
      $menu_id=$request->request->get('menu_id');

      $entityManager = $this->getDoctrine()->getManager();
      $category = $entityManager->getRepository(Category::class)->find($category_id);

      $category->setCategoryName($category_name);
      $category->setMenuId($menu_id);

      $entityManager->flush();

      return $this->redirect("/all_category");
    }
}
