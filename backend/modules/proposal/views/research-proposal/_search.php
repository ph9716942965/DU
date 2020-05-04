<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\modules\proposal\models\ResearchProposalSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="research-proposal-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'Designation') ?>

    <?= $form->field($model, 'College') ?>

    <?= $form->field($model, 'Email') ?>

    <?php // echo $form->field($model, 'Mobile') ?>

    <?php // echo $form->field($model, 'ResearchProjectTitle') ?>

    <?php // echo $form->field($model, 'BroadSubjectArea') ?>

    <?php // echo $form->field($model, 'ProjectDescription') ?>

    <?php // echo $form->field($model, 'Innovative') ?>

    <?php // echo $form->field($model, 'cat1Name_1') ?>

    <?php // echo $form->field($model, 'cat1Email_1') ?>

    <?php // echo $form->field($model, 'cat1Department_1') ?>

    <?php // echo $form->field($model, 'cat1Name_2') ?>

    <?php // echo $form->field($model, 'cat1Email_2') ?>

    <?php // echo $form->field($model, 'cat1Department_2') ?>

    <?php // echo $form->field($model, 'cat2Name_1') ?>

    <?php // echo $form->field($model, 'cat2Email_1') ?>

    <?php // echo $form->field($model, 'cat2Department_1') ?>

    <?php // echo $form->field($model, 'cat2Name_2') ?>

    <?php // echo $form->field($model, 'cat2Email_2') ?>

    <?php // echo $form->field($model, 'cat2Department_2') ?>

    <?php // echo $form->field($model, 'cat3Name_1') ?>

    <?php // echo $form->field($model, 'cat3Email_1') ?>

    <?php // echo $form->field($model, 'cat3Department_1') ?>

    <?php // echo $form->field($model, 'cat3Name_2') ?>

    <?php // echo $form->field($model, 'cat3Email_2') ?>

    <?php // echo $form->field($model, 'cat3Department_2') ?>

    <?php // echo $form->field($model, 'Duration') ?>

    <?php // echo $form->field($model, 'Methodology') ?>

    <?php // echo $form->field($model, 'Milestones') ?>

    <?php // echo $form->field($model, 'Materials') ?>

    <?php // echo $form->field($model, 'Infrastructure') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
