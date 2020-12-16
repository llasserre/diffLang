<?php

namespace App\Repository;

use App\Entity\TypeCmdFamily;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method TypeCmdFamily|null find($id, $lockMode = null, $lockVersion = null)
 * @method TypeCmdFamily|null findOneBy(array $criteria, array $orderBy = null)
 * @method TypeCmdFamily[]    findAll()
 * @method TypeCmdFamily[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TypeCmdFamilyRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, TypeCmdFamily::class);
    }

    // /**
    //  * @return TypeCmdFamily[] Returns an array of TypeCmdFamily objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('t.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?TypeCmdFamily
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
