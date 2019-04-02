<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\EntryForm;
use app\models\Bake;

class OstController extends Controller
{
    public function actionIndex(){
        return $this->render('index');
    }

    public function actionFavosts(){
        return $this->render('favosts');
    }
    
}