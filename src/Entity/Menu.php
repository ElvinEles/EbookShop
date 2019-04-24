<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MenuRepository")
 */
class Menu
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $menu_id;


    /**
    * @ORM\Column(type="string", length=255)
    */
   private $menu_name;



public function getMenuId()
{
return $this->menu_id;
}

public function setMenuId($menu_id)
{
$this->menu_id =$menu_id;

return $this;
}


public function getMenuName()
{
return $this->menu_name;
}

public function setMenuName($menu_name)
{
$this->menu_name = $menu_name;

return $this;
}

}
