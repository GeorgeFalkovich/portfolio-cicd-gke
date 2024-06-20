<?php
/**
 * Created by PhpStorm.
 * User: georgefalkovich
 * Date: 25/04/2020
 * Time: 16:04
 */
require_once ('header.php');
require_once ('includes/AsstesProvider.php');

$assetsProvider = new AsstesProvider($con);
$images = $assetsProvider->getImages();
$aboutText = $assetsProvider->getAboutText();
$skills = $assetsProvider->getSkills();
$projects = $assetsProvider->getProjects();

?>

<!-- intro section -->
<section id="intro">
    <div id="slides">
        <div class="overlay"></div>
        <div class="slides-container">

            <?php foreach ($images as $image) : ?>
                <img src="<?php echo $image['src'] ?>" alt=""/>
            <?php endforeach; ?>

        </div>

        <div class="title-message">
            <div class="heading">
                <p class="main great-vibes-font logo">George Falkovich</p>
                <p class="sub typed"></p>
            </div>
        </div>
        <nav class="slides-navigation">
            <a href="#" class="next"><img src="./img/next.png"/></a>
            <a href="#" class="prev "><img src="./img/prev.png"/></a>
        </nav>
    </div>
</section>

<!-- end of intro section -->

    <!-- Navbar section -->
    <nav class="navbar sticky-top navbar-dark bg-dark  navbar-expand-sm" >
        <a class="navbar-brand about-img  great-vibes-font" href="#"style="font-size: 2rem;" >George Falkovich</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse p-1 m-1" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#skills ">Skills</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#portfolio">Projects</a>
                </li>
            </ul>
        </div>
    </nav>

<!--End of navbar section-->

    <!-- start about section -->
    <section id="about" class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="./img/about.png" alt="" class="about-img" />
                </div>
                <div class="col-md-8 text-center mt-5 p-2">
                    <h1 class="great-vibes-font text-center">George Falkovich</h1>

                    <p class="text-muted mt-3 p-3">
                        <?php echo $aboutText[0]['main']; ?>
                    </p>

                    <p>
                        <?php echo $aboutText[0]['chapter1']; ?>
                    </p>
                    <div class="socials">
                        <a href="" target="_blank"><img src="./img/fb.png" class="facebook-img" /></a>

                        <a href="https://www.linkedin.com/in/george-falkovich-64558a166" target="_blank"><img src="./img/in.png" class="facebook-img" /></a>

                        <a href="https://github.com/georgefalkovich" target="_blank"><img src="./img/github.png" class="facebook-img" /></a>

                        <a href="https://play.google.com/store/apps/developer?id=George+Falkovich" target="_blank"><img src="./img/google.png" class="facebook-img" /></a>
                    </div>

                    <div class="mt-3">
                        <strong>
                            <h3><i class="fa fa-phone mx-2"></i>+972 546-358-158 ISR</h3>
                            <h4><i class="fas fa-envelope mx-2 p-2"></i>gfalk85@gmail.com</h4>
                        </strong>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- end of about section -->

 <?php require_once ('skills.php') ?>

    <!-- contact section -->
    <section id="contact" class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p class="subHeading">Like what you see?</p>
                    <h2>I'd love to hear from you</h2>
                    <a href="mailTo:gfalk85@gmail.com" class="btn btn-dark contact-btn text-uppercase">get in touch</a>
                </div>
            </div>
        </div>
    </section>
    <!-- end of contact section -->
<!--footer-->

<?php require_once ('footer.php')?>