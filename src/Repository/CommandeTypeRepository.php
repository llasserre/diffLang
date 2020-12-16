<?php

namespace App\Repository;

use App\Entity\CommandeType;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method CommandeType|null find($id, $lockMode = null, $lockVersion = null)
 * @method CommandeType|null findOneBy(array $criteria, array $orderBy = null)
 * @method CommandeType[]    findAll()
 * @method CommandeType[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CommandeTypeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CommandeType::class);
    }

    // /**
    //  * @return CommandeType[] Returns an array of CommandeType objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?CommandeType
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
