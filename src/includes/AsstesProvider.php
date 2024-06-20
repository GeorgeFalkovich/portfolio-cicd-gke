<?php
/**
 * Created by PhpStorm.
 * User: georgefalkovich
 * Date: 25/04/2020
 * Time: 16:14
 */

class AsstesProvider
{

    private $con;

    public function __construct($con)
    {
        $this->con = $con;
    }

    public function getImages() {
        $query = $this->con->prepare("SELECT * FROM images");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getAboutText() {
        $query = $this->con->prepare("SELECT * FROM about");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getSkills() {
        $query = $this->con->prepare("SELECT * FROM skills");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getProjects() {
        $query = $this->con->prepare("SELECT * FROM projects");
        $query->execute();
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

}