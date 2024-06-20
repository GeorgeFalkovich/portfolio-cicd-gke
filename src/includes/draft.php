<?php
/**
 * Created by PhpStorm.
 * User: georgefalkovich
 * Date: 25/04/2020
 * Time: 16:27
 */

            <?php foreach ($images as $image) : ?>
                <img src="<?php echo $image['src'] ?>" alt="" />
                        <?php endforeach; ?>