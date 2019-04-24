<?php

namespace App\Controller\Backend;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Slider;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\File\File;

class SliderController extends AbstractController
{
    /**
     * @Route("/save_slider", name="save_slider",methods={"POST"})
     */
    public function save_slider(Request $request)
    {

      $session = new Session();
      $session->start();

      $slider_name=ucwords($request->request->get('slider_name'));

      $slider=new Slider();
      $slider->setSliderName($slider_name);
      $slider->setSliderActive(0);

      $image=$request->files->get('slider_image');

      if ($image) {

         $imageName ='img/slider/'.trim(time()).rand().$image->getClientOriginalName();

         $image->move($this->getParameter('image_directory'),$imageName);
         $slider->setSliderImage($imageName);
      }else {
        $slider->setSliderImage("");
      }



      $entityManager = $this->getDoctrine()->getManager();
      $entityManager->persist($slider);
      $entityManager->flush();

      $session->set('add_slider_success', 'Kateqoriya əlavə edildi');
      return $this->redirect("/add_slider");
    }

    /**
     * @Route("/delete_slider", name="delete_slider",methods={"POST"})
     */
    public function delete_slider(Request $request)
    {

      $slider_id=$request->request->get('delete_slider_id');

      $entityManager = $this->getDoctrine()->getManager();
      $slider = $entityManager->getRepository(Slider::class)->find($slider_id);

      $entityManager->remove($slider);
      $entityManager->flush();
      return $this->redirect("/all_sliders");

    }

    /**
     * @Route("/edit_slider", name="edit_slider",methods={"POST"})
     */
    public function edit_slider(Request $request)
    {

      $slider_id=$request->request->get('slider_id');
      $slider_name=ucwords($request->request->get('slider_name'));

      $entityManager = $this->getDoctrine()->getManager();
      $slider = $entityManager->getRepository(Slider::class)->find($slider_id);

      $slider->setSliderName($slider_name);


      $image=$request->files->get('slider_image');

      if ($image) {

         $imageName ='img/slider/'.trim(time()).rand().$image->getClientOriginalName();

         $image->move($this->getParameter('image_directory'),$imageName);
         $slider->setSliderImage($imageName);
      }else {

      }

      $entityManager = $this->getDoctrine()->getManager();
      $entityManager->persist($slider);
      $entityManager->flush();


        return $this->redirect("/all_sliders");
    }

    /**
     * @Route("/active_slider/{slider_id}", name="active_slider",methods={"GET"})
     */
    public function active_slider($slider_id)
    {
      $entityManager = $this->getDoctrine()->getManager();
      $slider = $entityManager->getRepository(Slider::class)->find($slider_id);

      $slider->setSliderActive(1);
      $entityManager = $this->getDoctrine()->getManager();
      $entityManager->persist($slider);
      $entityManager->flush();


        return $this->redirect("/all_sliders");
    }

    /**
     * @Route("/deactive_slider/{slider_id}", name="deactive_slider",methods={"GET"})
     */
    public function deactive_slider($slider_id)
    {
      $entityManager = $this->getDoctrine()->getManager();
      $slider = $entityManager->getRepository(Slider::class)->find($slider_id);

      $slider->setSliderActive(0);
      $entityManager = $this->getDoctrine()->getManager();
      $entityManager->persist($slider);
      $entityManager->flush();


        return $this->redirect("/all_sliders");
    }

}
