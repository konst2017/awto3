<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">

                    <ul class="catalog category-products">

                    </ul>


                </div>
            </div>

            <?php

            ?>

            <div class="col-sm-9">
                <div class="product-details"><!--product-details-->
                    <div class="col">
                        <div class="view-product">

                            <h3>Товары</h3>
                        </div>

                        <div class="col-sm-7">
                            <div class="product"><!--/product-information-->

                                <h2><?= $product->name ?></h2>


                                <p><b>Brand:</b> <a
                                            href="<?= \yii\helpers\Url::to(['category/view', 'id' => $product->category->id]) ?>"><?= $product->category->name ?></a>
                                </p>

                                <?= $product->content ?>
                            </div><!--/product-information-->
                        </div>
                    </div><!--/product-details-->


                    <br><br>
                    <br>
                    <br><br>
                    <br>


                </div>
            </div>
        </div>
</section>