<?php

namespace App\Form;

use App\Entity\Commande;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class Commande1Type extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('ligne',null, ['attr'=> ['class' => 'form-control']])
            ->add('language', null, ['attr'=> ['class' => 'form-control select-picker', 'data-live-search'=>'true']])
            ->add('typeCommande', null, ['attr'=> ['class' => 'form-control select-picker']])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Commande::class,
        ]);
    }
}
