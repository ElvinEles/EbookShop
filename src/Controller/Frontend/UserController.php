<?php

namespace App\Controller\Frontend;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\User;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\Cookie;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\Menu;
use App\Entity\Category;
use App\Entity\Slider;
class UserController extends AbstractController
{




    /**
     * @Route("/saveuser", name="saveuser",methods={"POST"})
     */
    public function saveuser(Request $request)
    {

      $session = new Session();
      $session->start();


      if ($request->request->get('user_name')==null || $request->request->get('user_second_name')==null ||
    $request->request->get('user_email')==null || $request->request->get('user_password')==null ||
    $request->request->get('user_password_two')==null || $request->request->get('user_address')==null ||
    $request->request->get('user_street')==null || $request->request->get('user_post')==null ||
    $request->request->get('user_country')==null || $request->request->get('user_city')==null ||
    $request->request->get('user_security_password')==null ||  $request->request->get('user_security_password')=="" ||
    $request->request->get('user_name')=="" || $request->request->get('user_second_name')=="" ||
    $request->request->get('user_email')=="" || $request->request->get('user_password')=="" ||
    $request->request->get('user_password_two')== "" || $request->request->get('user_address')=="" ||
    $request->request->get('user_street')=="" || $request->request->get('user_post')=="" ||
    $request->request->get('user_country')=="" || $request->request->get('user_city')==""

    ) {

      $session->set('user_information', 'Zəhmət olmasa bütün xanaları doldurun!');

      return $this->redirect("/register");
    }else {

      if ($request->request->get('user_password_two') != $request->request->get('user_password')) {
        $session->set('user_information', 'Parol eyni deyil');

        return $this->redirect("/register");
      }else {
        $repository = $this->getDoctrine()->getRepository(User::class);
        $db_user=$repository->findOneBy(['user_email' => $request->request->get('user_email')]);

        if ($db_user !=null) {
          $session->set('user_information', 'Belə email artıq mövcuddur');

          return $this->redirect("/register");
        }else {

                $user_security_information=0;
                 if ($request->request->get('user_security_information') == true) {
                  $user_security_information=1;
                }



                  $user=new User();
                  $user->setUserName(ucwords($request->request->get('user_name')));
                  $user->setUserSecondName(ucwords($request->request->get('user_second_name')));
                  $user->setUserEmail($request->request->get('user_email'));
                  $user->setUserPassword(md5($request->request->get('user_password')));
                  $user->setUserAddress(ucwords($request->request->get('user_address')));
                  $user->setUserStreet(ucwords($request->request->get('user_street')));
                  $user->setUserPost(ucwords($request->request->get('user_post')));
                  $user->setUserCountry(ucwords($request->request->get('user_country')));
                  $user->setUserCity(ucwords($request->request->get('user_city')));
                  $user->setUserSecurityInformation($user_security_information);
                  $user->setUserSecurityPassword(trim($request->request->get('user_security_password')));

                  $entityManager = $this->getDoctrine()->getManager();
                  $entityManager->persist($user);
                  $entityManager->flush();

                   return $this->redirect("/home");
        }
      }
  }
 }

 /**
  * @Route("/logincheck", name="logincheck",methods={"POST"})
  */
 public function logincheck(Request $request)
 {
   $session = new Session();
   $session->start();


   $repository = $this->getDoctrine()->getRepository(User::class);
   $db_user=$repository->findOneBy(['user_email' => $request->request->get('user_email')]);

   if ($db_user != null) {

     if ($db_user->getUserPassword() == md5($request->request->get('user_password'))) {

      if ($request->request->get('remmember_me') == true) {
       $cookie_user_email= new Cookie('user_email', $request->request->get('user_email'),time() + ( 2 * 365 * 24 * 60 * 60));
       $cookie_user_password = new Cookie('user_password', $request->request->get('user_password'),time() + ( 2 * 365 * 24 * 60 * 60));
       $response = new Response();
       $response->headers->setCookie($cookie_user_email);
       $response->headers->setCookie($cookie_user_password);
       $response->send();
      }else {


      }

       $session->set('user_email', $db_user->getUserEmail());
       $session->set('user_id', $db_user->getUserId());
       return $this->redirect("/home");
     }else{
       $session->set('user_information_enter', 'Parol düzgün deyil');
       return $this->redirect("/home");
     }
   }else{
     $session->set('user_information_enter', 'Belə user mövcud deyil');
     return $this->redirect("/home");
   }
 }

 /**
  * @Route("/logout", name="logout",methods={"GET"})
  */
 public function logout(Request $request)
 {

   $session = new Session();
   $session->start();
   $session->remove('user_email');
   $session->remove('user_id');

   $response = new Response();
   $response->headers->clearCookie('user_email');
   $response->headers->clearCookie('user_password');
   $response->send();
    return $this->redirect("/home");
 }

 /**
  * @Route("/forget_password", name="forget_password",methods={"GET"})
  */
 public function forget_password(Request $request)
 {
   $session = new Session();
   $session->start();
   $session->remove('user_information_email_security');

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
  return $this->render("include/forget_password.html.twig",[
    'menus'=>$menus,
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
  * @Route("/checkout_security_word", name="checkout_security_word",methods={"POST"})
  */
 public function checkout_security_word(Request $request)
 {

   $session = new Session();
   $session->start();

   $repository = $this->getDoctrine()->getRepository(User::class);
   $db_user=$repository->findOneBy(['user_email' => $request->request->get('user_email')]);
   if ($db_user !=null) {
     if ($db_user->getUserSecurityPassword() == trim($request->request->get('user_security_password'))) {
        $session->remove('user_information_password');
        $session->set('user_information_email_security', 'Parolu deyişin');
        $session->set('user_email_database', $request->request->get('user_email'));
     }
   }

   $repository = $this->getDoctrine()->getRepository(Menu::class);
   $menus = $repository->findAll();
  return $this->render("include/forget_password.html.twig",['menus'=>$menus]);
 }

 /**
  * @Route("/change_password", name="change_password",methods={"POST"})
  */
 public function change_password(Request $request)
 {

   $session = new Session();
   $session->start();

   $user_password=$request->request->get('user_password');
   $user_password_two=$request->request->get('user_password_two');

   if ($user_password != $user_password_two) {
     $session->set('user_information_password', 'Parollar üst-üstə düşmür');
      return $this->redirect("/forget_password");
   }elseif ($user_password == $user_password_two) {

     $entityManager = $this->getDoctrine()->getManager();
    $db_user = $entityManager->getRepository(User::class)->findOneBy(['user_email' =>$session->get('user_email_database')]);


     $db_user->setUserPassword(md5($user_password));
     $entityManager->flush();

    $session->remove('user_information_password');
    $session->remove('user_email_database');

    return $this->redirect("/home");
   }
 }

 /**
  * @Route("/update_user", name="update_user",methods={"POST"})
  */
 public function update_user(Request $request)
 {

   $session = new Session();
   $session->start();

   $entityManager = $this->getDoctrine()->getManager();
   $user = $entityManager->getRepository(User::class)->find($session->get('user_id'));

   $user->setUserName(ucwords($request->request->get('user_name')));
   $user->setUserSecondName(ucwords($request->request->get('user_second_name')));
   $user->setUserEmail($request->request->get('user_email'));
   $user->setUserAddress(ucwords($request->request->get('user_address')));
   $user->setUserStreet(ucwords($request->request->get('user_street')));
   $user->setUserPost(ucwords($request->request->get('user_post')));
   $user->setUserCountry(ucwords($request->request->get('user_country')));
   $user->setUserCity(ucwords($request->request->get('user_city')));
   $user->setUserSecurityPassword(trim($request->request->get('user_security_password')));

     $entityManager->flush();
     return $this->redirect("/my_account_information");
 }
}
