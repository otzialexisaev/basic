<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "heyitsme".
 *
 * @property string $id
 * @property string $body
 * @property string $date
 */
class Heyitsme extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'heyitsme';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['body', 'date'], 'required'],
            [['body'], 'string'],
            [['date'], 'string', 'max' => 191],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'body' => 'Body',
            'date' => 'Date',
        ];
    }
}
