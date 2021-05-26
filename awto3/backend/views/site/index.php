<?php

/* @var $this yii\web\View */

$this->title = 'Админпанель';
?>
<div class="site-index">

   <div class="mainmenu hidden-sm hidden-xs">
								
						
		 <ul id="navbar">
      <li><a href="#">Главная</a></li>
      
   
	  
	  
    
	  
	  
	  
								
				 <li class="dropdown"><a href="#">Товары<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="<?=\yii\helpers\Url::to(['towar/index']) ?>">Просмотр товаров</a></li>
                                         
                                    </ul>
                                </li> 				
								
								
	  
    </ul>	

						
						
							</div>

    </div>
</div>
