<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "product".
 *
 * @property string $id
 * @property string $category_id
 * @property string $name
 * @property string $content
 * @property double $price
 * @property string $keywords
 * @property string $description
 * @property string $img
 * @property string $hit
 * @property string $new
 * @property string $sale
 */
class Product extends \yii\db\ActiveRecord
{

    public $image;
    public $gallery;

    public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'product';
    }

  

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [[ 'name'], 'required'],
           
			[['addtime'], 'date','format' => 'yyyy-M-d' ],
            [['content', 'hit', 'new', 'sale'], 'string'],
            [['price'], 'number'],
            [['name', 'keywords', 'description', 'img','kat','priw','dwig'], 'string', 'max' => 255],
            [['image'], 'file', 'extensions' => 'png, jpg'],
            [['gallery'], 'file', 'extensions' => 'png, jpg', 'maxFiles' => 4],
			
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID товара',
         
            'name' => 'Наименование',
            'content' => 'Контент',
            'price' => 'Цена',
            'keywords' => 'Ключевые слова',
            'description' => 'Мета-описание',
            'image' => 'Фото',
            'gallery' => 'Галерея',
            'hit' => 'Хит',
            'new' => 'Новинка',
            'sale' => 'Распродажа',
			'addtime' => 'Дата',
			'kat' => 'Категории',
			'priw' => 'Привод',
			'dwig'=>'Двигатель'
        ];
    }

    public function upload(){
        if($this->validate()){
            $path = '../../frontend/web/upload/store/' . $this->image->baseName . '.' . $this->image->extension;
            $this->image->saveAs($path);
            $this->attachImage($path, true);
            @unlink($path);
            return true;
        }else{
            return false;
        }
    }

    public function uploadGallery(){
        if($this->validate()){
            foreach($this->gallery as $file){
                $path = '../../frontend/web/upload/store/' . $file->baseName . '.' . $file->extension;
                $file->saveAs($path);
                $this->attachImage($path);
                @unlink($path);
            }
            return true;
        }else{
            return false;
        }
    }
}
