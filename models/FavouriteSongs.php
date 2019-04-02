<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "favourite_songs".
 *
 * @property int $id
 * @property int $ost_id
 *
 * @property Ost $ost
 */
class FavouriteSongs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'favourite_songs';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ost_id'], 'required'],
            [['ost_id'], 'integer'],
            [['ost_id'], 'exist', 'skipOnError' => true, 'targetClass' => Ost::className(), 'targetAttribute' => ['ost_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ost_id' => 'Ost ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOst()
    {
        return $this->hasOne(Ost::className(), ['id' => 'ost_id']);
    }
}
