<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 14.05.2016
 * Time: 10:37
 */

namespace frontend\controllers;
use frontend\models\Towar;
use frontend\models\Cart;
use frontend\models\Order;
use frontend\models\OrderItems;
use Yii;
use yii\helpers\Html;

/*Array
(
    [1] => Array
    (
        [qty] => QTY
        [name] => NAME
        [price] => PRICE
        [img] => IMG
    )
    [10] => Array
    (
        [qty] => QTY
        [name] => NAME
        [price] => PRICE
        [img] => IMG
    )
)
    [qty] => QTY,
    [sum] => SUM
);*/

class CartController extends AppController{
  
    public function actionAdd(){
        $id = Yii::$app->request->get('id');
        $qty = (int)Yii::$app->request->get('qty');
        $qty = !$qty ? 1 : $qty;
        $product = Towar::findOne($id);
        if(empty($product)) return false;
        $session =Yii::$app->session;
        $session->open();
        $cart = new Cart();
        $cart->addToCart($product, $qty);
        if( !Yii::$app->request->isAjax ){
            return $this->redirect(Yii::$app->request->referrer);
        }
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }

    public function actionClear(){
        $session =Yii::$app->session;
        $session->open();
        $session->remove('cart');
        $session->remove('cart.qty');
        $session->remove('cart.sum');
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }

    public function actionDelItem(){
        $id = Yii::$app->request->get('id');
        $session =Yii::$app->session;
        $session->open();
        $cart = new Cart();
        $cart->recalc($id);
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }

    public function actionShow(){
        $session =Yii::$app->session;
        $session->open();
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }

    public function actionView(){



        $session = Yii::$app->session;
        $session->open();
        $this->setMeta('??????????????');
        $order = new Order();
        if( $order->load(Yii::$app->request->post()) ){
            $order->qty = $session['cart.qty'];
            $order->sum = $session['cart.sum'];
 
            if($order->save()){
$email = [$order->email];
$name = [$order->name];
$phone = [$order->phone];
$address = [$order->address];
                $this->saveOrderItems($session['cart'], $order->id);
                Yii::$app->session->setFlash('success', '?????? ?????????? ????????????. ???????????????? ???????????? ???????????????? ?? ????????.');
               Yii::$app->mailer->compose('order', ['session' => $session, 'name' => $name, 'email' => $email, 'phone' => $phone, 'address' => $address])
                    ->setFrom(['spirin.costia@yandex.ru'])
                    ->setTo($order->email)
                    ->setSubject('??????????')
                    
                    ->send();

			Yii::$app->mailer->compose('order', ['session' => $session, 'name' => $name, 'email' => $email, 'phone' => $phone, 'address' => $address])
                    ->setFrom(['spirin.costia@yandex.ru'])
                    ->setTo('spirin.costia@yandex.ru')
                    ->setSubject('??????????')
                    ->send();


                $session->remove('cart');
                $session->remove('cart.qty');
                $session->remove('cart.sum');
                return $this->refresh();
            }else{
                Yii::$app->session->setFlash('error', '???????????? ???????????????????? ????????????');
            }
        }
        return $this->render('view',compact('session', 'order'));

    }

    protected function saveOrderItems($items, $order_id){
        foreach($items as $id => $item){
            $order_items = new OrderItems();
            $order_items->order_id = $order_id;
$target="Priwet";
            $order_items->product_id = $id;
            $order_items->name = $item['name'];
            $order_items->price = $item['price'];
            $order_items->qty_item = $item['qty'];
            $order_items->sum_item = $item['qty'] * $item['price'];
            $order_items->save();



        }
    }

} 