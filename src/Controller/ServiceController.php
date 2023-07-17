<?php

namespace App\Controller;

use App\Entity\Hebergement;
use App\Form\ServiceType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ServiceController extends AbstractController
{
    /**
     * @Route("/service", name="app_service")
     */
    public function index(): Response
    {
        // dd($this -> getUser());
        return $this->render('service/index.html.twig');
    }
    
    /**
     * @Route("/service/ajouter-une-service", name="add_service")
     */
    public function add(): Response
    {
        // dd($this -> getUser());
        $service = new Hebergement();
        $form = $this -> createForm(ServiceType::class,$service);
        return $this->render('service/service.html.twig', [
            'form' => $form -> createView()
        ]);
    }
}
