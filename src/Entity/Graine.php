<?php

namespace App\Entity;

use App\Repository\GraineRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=GraineRepository::class)
 */
class Graine
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $famille;

    /**
     * @ORM\Column(type="date")
     */
    private $periode_plantation;

    /**
     * @ORM\Column(type="date")
     */
    private $periode_recolte;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $conseil;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $image;

    /**
     * @ORM\Column(type="integer")
     */
    private $quantite;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getFamille(): ?string
    {
        return $this->famille;
    }

    public function setFamille(string $famille): self
    {
        $this->famille = $famille;

        return $this;
    }

    public function getPeriodePlantation(): ?\DateTimeInterface
    {
        return $this->periode_plantation;
    }

    public function setPeriodePlantation(\DateTimeInterface $periode_plantation): self
    {
        $this->periode_plantation = $periode_plantation;

        return $this;
    }

    public function getPeriodeRecolte(): ?\DateTimeInterface
    {
        return $this->periode_recolte;
    }

    public function setPeriodeRecolte(\DateTimeInterface $periode_recolte): self
    {
        $this->periode_recolte = $periode_recolte;

        return $this;
    }

    public function getConseil(): ?string
    {
        return $this->conseil;
    }

    public function setConseil(?string $conseil): self
    {
        $this->conseil = $conseil;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getQuantite(): ?int
    {
        return $this->quantite;
    }

    public function setQuantite(int $quantite): self
    {
        $this->quantite = $quantite;

        return $this;
    }
}
