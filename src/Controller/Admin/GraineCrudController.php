<?php

namespace App\Controller\Admin;

use App\Entity\Graine;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class GraineCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Graine::class;
    }

    /*
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id'),
            TextField::new('title'),
            TextEditorField::new('description'),
                        ImageField::new('imageFile')
                ->setFormType('VichImage')
                ->setLabel('Image')
        ];
    }
    */
}
