<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\modules\proposal\models\ResearchProposal */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Research Proposals', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="research-proposal-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'Designation',
            'College',
            'Email:email',
            'Mobile',
            'ResearchProjectTitle',
            'BroadSubjectArea',
            'ProjectDescription',
            'Innovative',
            'cat1Name_1',
            'cat1Email_1:email',
            'cat1Department_1',
            'cat1Name_2',
            'cat1Email_2:email',
            'cat1Department_2',
            'cat2Name_1',
            'cat2Email_1:email',
            'cat2Department_1',
            'cat2Name_2',
            'cat2Email_2:email',
            'cat2Department_2',
            'cat3Name_1',
            'cat3Email_1:email',
            'cat3Department_1',
            'cat3Name_2',
            'cat3Email_2:email',
            'cat3Department_2',
            'Duration',
            'Methodology',
            'Milestones',
            'Materials',
            'Infrastructure',
        ],
    ]) ?>

</div>
