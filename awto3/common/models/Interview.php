<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "interview".
 *
 * @property int $id
 * @property string $name
 * @property int $sex
 * @property string $planets
 * @property string $astronauts
 * @property string $planet
 */
class Interview extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'interview';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'sex', 'planets', 'astronauts', 'planet'], 'required'],
            [['sex'], 'integer'],
            [['name', 'planets', 'astronauts', 'planet'], 'string', 'max' => 255],
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
            'sex' => 'Sex',
            'planets' => 'Planets',
            'astronauts' => 'Astronauts',
            'planet' => 'Planet',
        ];
    }
}
