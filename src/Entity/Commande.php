<?php

namespace App\Entity;

use App\Repository\CommandeRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CommandeRepository::class)
 */
class Commande
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
    private $ligne;

    /**
     * @ORM\ManyToOne(targetEntity=Language::class, inversedBy="commandes")
     */
    private $language;

    /**
     * @ORM\ManyToOne(targetEntity=CommandeType::class, inversedBy="commandes")
     */
    private $typeCommande;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLigne(): ?string
    {
        return $this->ligne;
    }

    public function setLigne(string $ligne): self
    {
        $this->ligne = $ligne;

        return $this;
    }

    public function getLanguage(): ?Language
    {
        return $this->language;
    }

    public function setLanguage(?Language $language): self
    {
        $this->language = $language;

        return $this;
    }

    public function getTypeCommande(): ?CommandeType
    {
        return $this->typeCommande;
    }

    public function setTypeCommande(?CommandeType $typeCommande): self
    {
        $this->typeCommande = $typeCommande;

        return $this;
    }
}
