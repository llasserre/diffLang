<?php

namespace App\Entity;

use App\Repository\CommandeTypeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CommandeTypeRepository::class)
 */
class CommandeType
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
    private $libelle;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $decriptif;

    /**
     * @ORM\OneToMany(targetEntity=Commande::class, mappedBy="typeCommande")
     */
    private $commandes;

    /**
     * @ORM\ManyToOne(targetEntity=TypeCmdFamily::class, inversedBy="CommandeType")
     */
    private $typeCmdFamily;

    public function __construct()
    {
        $this->commandes = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLibelle(): ?string
    {
        return $this->libelle;
    }

    public function setLibelle(string $libelle): self
    {
        $this->libelle = $libelle;

        return $this;
    }

    public function getDecriptif(): ?string
    {
        return $this->decriptif;
    }

    public function setDecriptif(string $decriptif): self
    {
        $this->decriptif = $decriptif;

        return $this;
    }

    /**
     * @return Collection|Commande[]
     */
    public function getCommandes(): Collection
    {
        return $this->commandes;
    }

    public function addCommande(Commande $commande): self
    {
        if (!$this->commandes->contains($commande)) {
            $this->commandes[] = $commande;
            $commande->setTypeCommande($this);
        }

        return $this;
    }

    public function removeCommande(Commande $commande): self
    {
        if ($this->commandes->removeElement($commande)) {
            // set the owning side to null (unless already changed)
            if ($commande->getTypeCommande() === $this) {
                $commande->setTypeCommande(null);
            }
        }

        return $this;
    }

    
    public function __toString(){
        return $this->libelle;
    }

    public function getTypeCmdFamily(): ?TypeCmdFamily
    {
        return $this->typeCmdFamily;
    }

    public function setTypeCmdFamily(?TypeCmdFamily $typeCmdFamily): self
    {
        $this->typeCmdFamily = $typeCmdFamily;

        return $this;
    }
}
