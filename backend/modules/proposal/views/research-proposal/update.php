<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\modules\proposal\models\ResearchProposal */

$this->title = 'Update Research Proposal: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Research Proposals', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="research-proposal-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
