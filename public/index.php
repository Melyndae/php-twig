<?php

// déclaration des classes PHP qui seront utilisées
use Doctrine\DBAL\Configuration;
use Doctrine\DBAL\DriverManager;

// activation de la fonction autoloading de Composer
require __DIR__.'/../vendor/autoload.php';

// création d'une variable avec une configuration par défaut
$config = new Configuration();

// création d'un tableau avec les paramètres de connection à la BDD
$connectionParams = [
    'driver'    => 'pdo_mysql',
    'host'      => '127.0.0.1',
    'port'      => '3306',
    'dbname'    => 'tp-sql',
    'user'      => 'root',
    'password'  => '',
    'charset'   => 'utf8mb4',
];

// connection à la BDD
// la variable `$conn` permet de communiquer avec la BDD
$conn = DriverManager::getConnection($connectionParams, $config);

echo "<h2>SELECT de plusieurs lignes</h2>",

$promotion_id= 3;

// créer une requête préparée à partir du code SQL et renvoie un pointeur sur le résultat
$stmt = $conn->executeQuery('SELECT students.id, firstname, lastname, promotions.name FROM students INNER JOIN promotions
ON students.promotion_id= promotions.id WHERE students.promotion_id = :promotion_id', [
    'promotion_id' => $promotion_id,
]);

//%a tous les prénoms qui se terminent par a
//a% tous les prénoms qui commencent par a
//%a% tous les prénoms qui contiennent un a
$search= '%a%';

$stmt = $conn->executeQuery('SELECT students.id, firstname, lastname, promotions.name FROM students INNER JOIN promotions
ON students.promotion_id= promotions.id WHERE students.firstname LIKE :firstname_like', [
    'firstname_like' => $search,
]);

// la méthode `rowCount()` permet de savoir combien de lignes le résultat comporte
echo 'results : '.$stmt->rowCount().'<br />';
echo '<br />';

// boucle `while` qui récupère les résultats ligne par ligne
while ($item = $stmt->fetch()) {
    // à chaque itération de la boucle, la variable `$item` contient une ligne de la table
    // chaque clé alpha-numérique représente une colonne de la table
    echo $item['id'].'<br />';          // affichage de la colonne `id`
    echo $item['firstname'].'<br />';        // affichage de la colonne `firstname`
    echo $item['lastname'].'<br />';        // affichage de la colonne `lastname`
    echo $item['name'].'<br />';        // affichage de la colonne `name`
    echo '<br />';
};

echo "<h2>SELECT d'une seule ligne</h2>",

$student_id=11;

// envoi d'une requête SQL à la BDD et récupération du premier résultat sous forme de tableau PHP dans la variable `$item`
$item = $conn->fetchAssoc('SELECT * FROM students WHERE id = :id', [
    'id' => $student_id,
]);

// affichage des données de chaque colonne
// chaque clé alpha-numérique représente une colonne de la table
echo $item['id'].'<br />';          // affichage de la colonne `id`
echo $item['firstname'].'<br />';        // affichage de la colonne `firstname`
echo $item['lastname'].'<br />';        // affichage de la colonne `lastname`
echo '<br />';

// AJOUTER DES DONNEES
// exécution de la requête
// requête générée : `INSERT INTO item (name, description) VALUES ('foo', 'bar baz')`
$conn->insert('students', [
    'firstname' => 'onsenfoo',
]);

// récupération de l'id de la dernière ligne créée par la BDD dans la variable `$lastInsertId`
$lastInsertId = $conn->lastInsertId();