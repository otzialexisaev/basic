<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "Seasons".
 *
 * @property int $season_id
 * @property string $season
 */
class Seasons extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'Seasons';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['season'], 'required'],
            [['season'], 'string', 'max' => 150],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'season_id' => 'Season ID',
            'season' => 'Season',
        ];
    }
}
