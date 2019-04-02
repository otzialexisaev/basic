<?php

namespace app\controllers;

use app\models\Notes;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

class NotesController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $posts = Notes::find()->orderBy('id')->all();
        //$post = Notes::find()->where('id'==1)->one();
        
        return $this->render('index', [ 'posts' => $posts ] );
    }

    public function actionView($id){
        //$post = Notes::findOne($id);
        return $this->render('view', ['post' => $this->findModel($id)]);
        //return $this->render('view', ['post'=> $this->findModel($id)]);
        
    }

    public function actionDelete($id){
        $post = Notes::findOne($id)->delete();
        //return $this->redirect('index.php?r=notes%2Findex');
        return $this->redirect(['index']);
        
    }

    public function actionUpdate($id){
        $post = $this->findModel($id);
        $post->load(Yii::$app->request->post());
        if($post->update()){
            return $this->redirect(['upadte', 'id' => $post->id]);
        }
    }

    protected function findModel($id)
    {
        if (($model = Notes::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

}
