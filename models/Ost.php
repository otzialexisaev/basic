<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "Ost".
 *
 * @property int $id
 * @property string $name
 * @property string $path
 * @property int $season
 */
class Ost extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'Ost';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'path', 'season'], 'required'],
            [['season'], 'integer'],
            [['name'], 'string', 'max' => 150],
            [['path'], 'string', 'max' => 200],
            [['season'], 'exist', 'skipOnError' => true, 'targetClass' => Seasons::className(), 'targetAttribute' => ['season' => 'season_id']],
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
            'path' => 'Path',
            'season' => 'Season',
        ];
    }
}
