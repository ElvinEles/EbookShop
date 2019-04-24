<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\SliderRepository")
 */
class Slider
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $slider_id;
    /**
    *@ORM\Column(type="string",length=50)
    */
    private $slider_name;
    /**
    *@ORM\Column(type="string")
    */
    private $slider_image;
    /**
    *@ORM\Column(type="integer",options={"default":"0"})
    */
    private $slider_active;

    public function getSliderId(): ?int
    {
        return $this->slider_id;
    }

    public function getSliderName(): ?string
    {
        return $this->slider_name;
    }

    public function setSliderName(string $slider_name): self
    {
        $this->slider_name = $slider_name;

        return $this;
    }

    public function getSliderImage(): ?string
    {
        return $this->slider_image;
    }

    public function setSliderImage(string $slider_image): self
    {
        $this->slider_image = $slider_image;

        return $this;
    }

    public function getSliderActive(): ?int
    {
        return $this->slider_active;
    }

    public function setSliderActive(int $slider_active): self
    {
        $this->slider_active = $slider_active;

        return $this;
    }
}
