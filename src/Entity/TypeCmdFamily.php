<?php

namespace App\Entity;

use App\Repository\TypeCmdFamilyRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=TypeCmdFamilyRepository::class)
 */
class TypeCmdFamily
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
    private $name;

    /**
     * @ORM\OneToMany(targetEntity=CommandeType::class, mappedBy="typeCmdFamily")
     */
    private $CommandeType;

    public function __construct()
    {
        $this->CommandeType = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return Collection|CommandeType[]
     */
    public function getCommandeType(): Collection
    {
        return $this->CommandeType;
    }

    public function addCommandeType(CommandeType $commandeType): self
    {
        if (!$this->CommandeType->contains($commandeType)) {
            $this->CommandeType[] = $commandeType;
            $commandeType->setTypeCmdFamily($this);
        }

        return $this;
    }

    public function removeCommandeType(CommandeType $commandeType): self
    {
        if ($this->CommandeType->removeElement($commandeType)) {
            // set the owning side to null (unless already changed)
            if ($commandeType->getTypeCmdFamily() === $this) {
                $commandeType->setTypeCmdFamily(null);
            }
        }

        return $this;
    }
}
