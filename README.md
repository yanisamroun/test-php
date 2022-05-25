## Install

    git clone https://github.com/yanisamroun/test-php
    cd seed_test
    composer install

Après install du projet, créez le fichier `.env.local` et ajoutez-y les variables `APP_ENV` et `DATABASE_URL`.

Créez la BDD avec PhpMyAdmin.

Ensuite créez le schéma de la BDD et injectez les données de test avec la commande :

# suppression de toutes les tables
php bin/console doctrine:schema:drop --full-database --force --no-interaction
# création du schéma de BDD
php bin/console doctrine:migrations:migrate --no-interaction
# validation du schéma de BDD
php bin/console doctrine:schema:validate
# injection des données de test dans la BDD
php bin/console doctrine:fixtures:load --no-interaction

## Utilisation

symfony serve dans le terminal

Ensuite visitez la page [http://localhost:8000](http://localhost:8000).

