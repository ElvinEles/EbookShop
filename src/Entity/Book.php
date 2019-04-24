<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\BookRepository")
 */
class Book
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $book_id;
    /**
     * @ORM\Column(type="string",length=50)
     */
    private $book_name;
    /**
     * @ORM\Column(type="string")
     */
    private $book_image;
    /**
     * @ORM\Column(type="string")
     */
    private $book_category;
    /**
     * @ORM\Column(type="integer")
     */
    private $book_price;
    /**
     * @ORM\Column(type="decimal")
     */
    private $book_amount;
    /**
     * @ORM\Column(type="text")
     */
    private $book_about;
    /**
     * @ORM\Column(type="integer")
     */
    private $book_active;
    /**
     * @ORM\Column(type="string")
     */
    private $book_author;
    /**
     * @ORM\Column(type="integer")
     */
    private $book_new;
    /**
     * @ORM\Column(type="integer")
     */
    private $book_menu;

    public function getBookId(): ?int
    {
        return $this->book_id;
    }

    public function getBookName(): ?string
    {
        return $this->book_name;
    }

    public function setBookName(string $book_name): self
    {
        $this->book_name = $book_name;

        return $this;
    }

    public function getBookImage(): ?string
    {
        return $this->book_image;
    }

    public function setBookImage(string $book_image): self
    {
        $this->book_image = $book_image;

        return $this;
    }

    public function getBookCategory(): ?string
    {
        return $this->book_category;
    }

    public function setBookCategory(string $book_category): self
    {
        $this->book_category = $book_category;

        return $this;
    }

    public function getBookPrice(): ?int
    {
        return $this->book_price;
    }

    public function setBookPrice(int $book_price): self
    {
        $this->book_price = $book_price;

        return $this;
    }

    public function getBookAmount()
    {
        return $this->book_amount;
    }

    public function setBookAmount($book_amount): self
    {
        $this->book_amount = $book_amount;

        return $this;
    }

    public function getBookAbout(): ?string
    {
        return $this->book_about;
    }

    public function setBookAbout(string $book_about): self
    {
        $this->book_about = $book_about;

        return $this;
    }

    public function getBookActive(): ?int
    {
        return $this->book_active;
    }

    public function setBookActive(int $book_active): self
    {
        $this->book_active = $book_active;

        return $this;
    }

    public function getBookAuthor(): ?string
    {
        return $this->book_author;
    }

    public function setBookAuthor(string $book_author): self
    {
        $this->book_author = $book_author;

        return $this;
    }

    public function getBookNew(): ?int
    {
        return $this->book_new;
    }

    public function setBookNew(int $book_new): self
    {
        $this->book_new = $book_new;

        return $this;
    }

    public function getBookMenu(): ?int
    {
        return $this->book_menu;
    }

    public function setBookMenu(int $book_menu): self
    {
        $this->book_menu = $book_menu;

        return $this;
    }



}
