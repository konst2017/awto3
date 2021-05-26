<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "towar".
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
class Towar extends \yii\db\ActiveRecord
{
	
     public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    } 
   

    public function getCategory(){
        return $this->hasOne(Category::className(), ['id' => 'id']);
    }
    public static function tableName()
    {
        return 'towar';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
           
            [['content', 'hit', 'new', 'sale','kat','dwig','priw'], 'string'],
            [['price'], 'number'],
            [['name', 'keywords', 'description', 'img'], 'string', 'max' => 255],
			
		
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
          
            'name' => 'Name',
            'content' => 'Content',
            'price' => 'Price',
            'keywords' => 'Keywords',
            'description' => 'Description',
            'img' => 'Img',
            'hit' => 'Hit',
            'new' => 'New',
            'sale' => 'Sale',
			'kat' => 'kat',
            'dwig' => 'dwig',
            'priw' => 'priw',
			
        ];
    }
}
