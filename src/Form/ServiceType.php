<?php

namespace App\Form;

use App\Entity\Hebergement;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ServiceType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('ville')
            ->add('codepostal')
            ->add('rue')
            ->add('star')
            ->add('description')
            ->add('prix')
            ->add('illustration')
            // ->add('user')
            ->add('submit', SubmitType::class, [
                'label' => 'Ajout de service'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Hebergement::class,
        ]);
    }
}
