<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\modules\proposal\models\ResearchProposal */

$this->title = 'GUIDELINES AND PROFORMA FOR RESEARCH PROPOSAL';
$this->params['breadcrumbs'][] = ['label' => 'Research Proposals', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="research-proposal-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
