<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\modules\proposal\models\ResearchProposal */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="research-proposal-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-6"> <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-6"><?= $form->field($model, 'Designation')->textInput(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-6"><?= $form->field($model, 'College')->textInput(['maxlength' => true])->label('College/Department') ?></div>
    </div>
    <div class="row">
        <div class="col-md-3"> <?= $form->field($model, 'Email')->textInput(['maxlength' => true]) ?></div>
        <div class="col-md-3"><?= $form->field($model, 'Mobile')->textInput()->label('Mobile (10 digits)') ?> </div>
    </div>
    
    <div class="row">
        <div class="col-md-6"> <?= $form->field($model, 'ResearchProjectTitle')->textArea(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-6"><?= $form->field($model, 'BroadSubjectArea')->textArea(['maxlength' => true]) ?></div>
    </div>

    <div class="row">
        <div class="col-md-12"><?= $form->field($model, 'ProjectDescription')->textArea(['maxlength' => true])->label('Project Description (Maximum 400 words)') ?></div>
    </div>

    <div class="row">
        <div class="col-md-12"> <?= $form->field($model, 'Innovative')->textArea(['maxlength' => true])->label('Innovative/Unique nature of the project (Maximum 100 words) *') ?></div>
    </div>
  
   
   
    <div class="panel panel-default">
    <div class="panel-body">Collaboration*
(Please provide the names of two possible collaborating individuals/institutions with contact details who have expertise in your field of proposed research project and who may be your co-investigators and project participants)*
* If you are not an employee or research scholar at the University of Delhi, at least one of your collaborators for this project must be from this University.</div>

    
    </div>
    

<div class="panel panel-default">
  <div class="panel-heading">Collaboration Category I: University/Institution in India</div>
  <div class="panel-body"><div class="row">
        <div class="col-md-4"><?= $form->field($model, 'cat1Name_1')->textInput(['maxlength' => true])->label('(i) Name of the Individual ') ?> </div>
        <div class="col-md-4">     <?= $form->field($model, 'cat1Email_1')->textInput(['maxlength' => true])->label('Email') ?></div>
        <div class="col-md-4"><?= $form->field($model, 'cat1Department_1')->textInput(['maxlength' => true])->label('Name of the Department/ Institution/ University/ Industry ') ?> </div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'cat1Name_2')->textInput(['maxlength' => true])->label('(ii) Name of the Individual ') ?> </div>
        <div class="col-md-4"><?= $form->field($model, 'cat1Email_2')->textInput(['maxlength' => true])->label('Email') ?> </div>
        <div class="col-md-4"><?= $form->field($model, 'cat1Department_2')->textInput(['maxlength' => true])->label('Name of the Department/ Institution/ University/ Industry') ?> </div>
    </div></div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">Collaboration Category II: Industry in India</div>
  <div class="panel-body"> <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'cat2Name_1')->textInput(['maxlength' => true])->label('(i) Name of the Individual') ?> </div>
        <div class="col-md-4"><?= $form->field($model, 'cat2Email_1')->textInput(['maxlength' => true])->label('Email') ?> </div>
        <div class="col-md-4"><?= $form->field($model, 'cat2Department_1')->textInput(['maxlength' => true])->label('Name of the Department/ Institution/ University/ Industry') ?> </div>
    </div>

    <div class="row">
        <div class="col-md-4"> <?= $form->field($model, 'cat2Name_2')->textInput(['maxlength' => true])->label('(ii) Name of the Individual') ?> </div>
        <div class="col-md-4"> <?= $form->field($model, 'cat2Email_2')->textInput(['maxlength' => true])->label('Email') ?></div>
        <div class="col-md-4"><?= $form->field($model, 'cat2Department_2')->textInput(['maxlength' => true])->label('Name of the Department/ Institution/ University/ Industry') ?> </div>
    </div></div>
</div>

<div class="panel panel-default">
  <div class="panel-heading">Collaboration Category III: Foreign University/Institution</div>
  <div class="panel-body">
    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'cat3Name_1')->textInput(['maxlength' => true])->label('(i) Name of the Individual') ?> </div>
        <div class="col-md-4"> <?= $form->field($model, 'cat3Email_1')->textInput(['maxlength' => true])->label('Email') ?></div>
        <div class="col-md-4"><?= $form->field($model, 'cat3Department_1')->textInput(['maxlength' => true])->label('Name of the Department/ Institution/ University/ Industry ') ?> </div>
    </div>

    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'cat3Name_2')->textInput(['maxlength' => true])->label('(ii) Name of the Individual ') ?> </div>
        <div class="col-md-4"><?= $form->field($model, 'cat3Email_2')->textInput(['maxlength' => true])->label('Email') ?> </div>
        <div class="col-md-4"><?= $form->field($model, 'cat3Department_2')->textInput(['maxlength' => true])->label('Name of the Department/ Institution/ University/ Industry') ?> </div>
    </div></div>
</div>
    
    
    <div class="row">
        <div class="col-md-4"><?= $form->field($model, 'Duration')->textInput()->label('Project Duration (years)') ?></div>
    </div>

    <div class="panel panel-default">
  <div class="panel-heading">Research plan</div>
  <div class="panel-body">
  <div class="row">
        <div class="col-md-12"><?= $form->field($model, 'Methodology')->textArea(['maxlength' => true])->label('Methodology') ?></div>
    </div>

    <div class="row">
        <div class="col-md-12"><?= $form->field($model, 'Milestones')->textArea(['maxlength' => true])->label('Milestones / Deliverables') ?></div>
    </div>
  
  </div>
</div>
   

    <div class="row">
        <div class="col-md-12"><?= $form->field($model, 'Materials')->textArea(['maxlength' => true])->label('Materials/methods and protocols (Describe the materials you would need to achieve your objectives, give details of data collection methods and sampling strategies)') ?></div>
    </div>

    <div class="row">
        <div class="col-md-12"> <?= $form->field($model, 'Infrastructure')->textArea(['maxlength' => true])->label('Infrastructure availability (What infrastructure do you have and what is additionally needed to carry out your research proposal? What is the extent and nature of support needed?)') ?></div>
    </div>

    <div class="form-group">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
