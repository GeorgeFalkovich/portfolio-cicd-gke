<!--Skills Section-->

<section id="skills" class="section">
    <div class="container">
        <div class="row py-3">

            <?php foreach ($skills as $skill) : ?>

            <div class="col col-6 -md-4 col-lg-4">
                <div class="skill">
                <span class="chart" data-percent="<?= $skill['percent']?>">
                  <span class="percent"><?= $skill['percent']?></span>
                  <canvas height="152" width="152"></canvas>
                </span>
                    <h4><?= $skill['title'] ?></h4>
                    <p><?= $skill['description'] ?></p>
                </div>
            </div>
            <?php endforeach; ?>




    </div>
    </div>
</section>

<!--End of Skills section-->