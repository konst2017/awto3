<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 08.05.2016
 * Time: 10:00
 */

namespace frontend\controllers;

use frontend\models\Product;
use frontend\models\Category;
use frontend\models\Wakans;
use frontend\models\Nagrad;
use frontend\models\Towar;
use frontend\models\OrderSearch;
use Yii;
use yii\data\Pagination;
use yii\data\ActiveDataProvider;
use yii\db\ActiveRecord;

class TowarController extends AppController
{


    public function actionPjax()
    {
        $model = new Towar();
        $md5 = md5(Yii::$app->request->get('string'));


        $dwig = Yii::$app->request->get('dwig');;
        $priw = trim(Yii::$app->request->get('priw'));


        $kat = Yii::$app->request->get('kat');


        if ($kat != "") {
            $kats = implode('|', $kat);
        }

        $query = Towar::find()->where(['hit' => '1']);
        if (($dwig != "")) {
            $query = Towar::find()->where(['dwig' => $dwig]);
        }
        if (($priw != "")) {
            $query = Towar::find()->where(['priw' => $priw]);
        }
        if (($kats != "")) {
            $query = Towar::find()->where(['kat' => $kats]);
        }
        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 3, 'forcePageParam' => false, 'pageSizeParam' => false]);
        $hits = $query->offset($pages->offset)->limit($pages->limit)->all();


        return $this->render('pjax', compact('md5', 'hits', 'pages', 'kat', 'dwig', 'priw', 'model', 'wiw', 'data'));


    }


    public function actionIndex()
    {
        $model = new Towar();


        if (\Yii::$app->request->isAjax) {
            return 'Запрос принят!';
            Yii::$app->response->format = Response::FORMAT_JSON;
//return ActiveForm::validate($model);


            if ($model->load(Yii::$app->request->get())) {
                $dwig = $model->dwig;
                $priw = $model->priw;

                $kat = [$model->kat];

            }


            $data = Yii::$app->request->get();
            // Получаем данные модели из запроса
            if ($model->load($data) && $model->validate()) {
                //Если всё успешно, отправляем ответ с данными
                return [
                    "data" => $model,
                    "error" => null

                ];
                var_dump($model);
                $dwig = $model->dwig;
                $priw = $model->priw;

                //  $kat = [$model->kat];
            } else {
                // Если нет, отправляем ответ с сообщением об ошибке
                return [
                    "data" => null,
                    "error" => "error1"
                ];
            }
        }

        if ($kat != "") {
            $kats = implode('|', $kat);
        }

        $query = Towar::find()->where(['hit' => '1']);
        if (($dwig != "")) {
            $query = Towar::find()->where(['dwig' => $dwig]);
        }
        if (($priw != "")) {
            $query = Towar::find()->where(['priw' => $priw]);
        }
        if (($kats != "")) {
            $query = Towar::find()->where(['kat' => $kats]);
        }
        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 3, 'forcePageParam' => false, 'pageSizeParam' => false]);
        $hits = $query->offset($pages->offset)->limit($pages->limit)->all();


        return $this->render('index', compact('hits', 'pages', 'kat', 'dwig', 'priw', 'model', 'wiw', 'data'));


    }


    public function actionView($id)
    {
        $id = Yii::$app->request->get('id');
        $product = Towar::findOne($id);
        if (empty($product))
            throw new \yii\web\HttpException(404, 'Такого товара нет');
//        $product = Product::find()->with('category')->where(['id' => $id])->limit(1)->one();
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('E-SHOPPER | ' . $product->name, $product->keywords, $product->description);
        return $this->render('view', compact('product', 'hits'));

    }


}

