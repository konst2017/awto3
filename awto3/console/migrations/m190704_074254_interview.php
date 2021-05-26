<?php

use yii\db\Migration;

/**
 * Class m190704_074254_interview
 */
class m190704_074254_interview extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
$tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }
$this->createTable('{{%}}', [
    'id' => Schema::TYPE_PK,
    'name' => Schema::TYPE_STRING . ' NOT NULL',
    'sex' => Schema::TYPE_BOOLEAN . ' NOT NULL',
    'planets' => Schema::TYPE_STRING . ' NOT NULL',
    'astronauts' => Schema::TYPE_STRING. ' NOT NULL',
    'planet' => Schema::TYPE_INTEGER . ' NOT NULL',
], $tableOptions);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m190704_074254_interview cannot be reverted.\n";

        return false;
    }


    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m190704_074254_interview cannot be reverted.\n";

        return false;
    }
    */
}
