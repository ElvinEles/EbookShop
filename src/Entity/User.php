<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\UserRepository")
 */
class User
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $user_id;

    /**
    *@ORM\Column(type="string",length=50)
    */
    private $user_name;
    /**
    *@ORM\Column(type="string",length=50)
    */
    private $user_second_name;
    /**
    *@ORM\Column(type="string",length=50)
    */
    private $user_email;
    /**
    *@ORM\Column(type="string",length=150)
    */
    private $user_password;
    /**
    *@ORM\Column(type="string",length=50)
    */
    private $user_address;
    /**
    *@ORM\Column(type="string",length=100,nullable=true)
    */
    private $user_street;
    /**
    *@ORM\Column(type="string",length=50,nullable=true)
    */
    private $user_post;
    /**
    *@ORM\Column(type="string",length=50,nullable=true)
    */
    private $user_country;
    /**
    *@ORM\Column(type="string",length=50,nullable=true)
    */
    private $user_city;
    /**
    *@ORM\Column(type="integer",options={"default":0})
    */
    private $user_security_information;
    /**
    *@ORM\Column(type="string",options={"default":"NO"})
    */
    private $user_security_password;

    public function getUserId(): ?int
    {
        return $this->user_id;
    }

    public function getUserName(): ?string
    {
        return $this->user_name;
    }

    public function setUserName(string $user_name): self
    {
        $this->user_name = $user_name;

        return $this;
    }

    public function getUserSecondName(): ?string
    {
        return $this->user_second_name;
    }

    public function setUserSecondName(string $user_second_name): self
    {
        $this->user_second_name = $user_second_name;

        return $this;
    }

    public function getUserEmail(): ?string
    {
        return $this->user_email;
    }

    public function setUserEmail(string $user_email): self
    {
        $this->user_email = $user_email;

        return $this;
    }

    public function getUserPassword(): ?string
    {
        return $this->user_password;
    }

    public function setUserPassword(string $user_password): self
    {
        $this->user_password = $user_password;

        return $this;
    }

    public function getUserAddress(): ?string
    {
        return $this->user_address;
    }

    public function setUserAddress(string $user_address): self
    {
        $this->user_address = $user_address;

        return $this;
    }

    public function getUserStreet(): ?string
    {
        return $this->user_street;
    }

    public function setUserStreet(?string $user_street): self
    {
        $this->user_street = $user_street;

        return $this;
    }

    public function getUserPost(): ?string
    {
        return $this->user_post;
    }

    public function setUserPost(?string $user_post): self
    {
        $this->user_post = $user_post;

        return $this;
    }

    public function getUserCountry(): ?string
    {
        return $this->user_country;
    }

    public function setUserCountry(?string $user_country): self
    {
        $this->user_country = $user_country;

        return $this;
    }

    public function getUserCity(): ?string
    {
        return $this->user_city;
    }

    public function setUserCity(?string $user_city): self
    {
        $this->user_city = $user_city;

        return $this;
    }

    public function getUserSecurityInformation(): ?int
    {
        return $this->user_security_information;
    }

    public function setUserSecurityInformation(int $user_security_information): self
    {
        $this->user_security_information = $user_security_information;

        return $this;
    }

    public function getUserSecurityPassword(): ?string
    {
        return $this->user_security_password;
    }

    public function setUserSecurityPassword(string $user_security_password): self
    {
        $this->user_security_password = $user_security_password;

        return $this;
    }




}
