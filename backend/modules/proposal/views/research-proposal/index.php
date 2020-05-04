<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\modules\proposal\models\ResearchProposalSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Research Proposals';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="research-proposal-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Research Proposal', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'name',
            'Designation',
            'College',
            'Email:email',
            //'Mobile',
            //'ResearchProjectTitle',
            //'BroadSubjectArea',
            //'ProjectDescription',
            //'Innovative',
            //'cat1Name_1',
            //'cat1Email_1:email',
            //'cat1Department_1',
            //'cat1Name_2',
            //'cat1Email_2:email',
            //'cat1Department_2',
            //'cat2Name_1',
            //'cat2Email_1:email',
            //'cat2Department_1',
            //'cat2Name_2',
            //'cat2Email_2:email',
            //'cat2Department_2',
            //'cat3Name_1',
            //'cat3Email_1:email',
            //'cat3Department_1',
            //'cat3Name_2',
            //'cat3Email_2:email',
            //'cat3Department_2',
            //'Duration',
            //'Methodology',
            //'Milestones',
            //'Materials',
            //'Infrastructure',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
