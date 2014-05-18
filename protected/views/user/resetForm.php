<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<h1>Form ini Hanya digunakan untuk mereset password master utama yang ada didatabase, 
    <br>untuk master password, username tidak akan disebutkan, tetapi hanya kolom reset password yang diberikan</h1>
<div class="form">
<?php
    $resetForm=$this->beginWidget('CActiveForm',array(
        'id'=>'resetPasswd-form',
        'enableClientValidation'=>true,
        'enableAjaxValidation'=>true,
        'clientOptions'=>array(
            'validateOnSubmit'=>'true',
        ),
    ));
?>
        <div class="row">
		<?php echo $form->labelEx($model,'username'); ?>
		<?php echo $form->textField($model,'username'); ?>
		<?php echo $form->error($model,'username'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password'); ?>
		<?php echo $form->error($model,'password'); ?>
		<p class="hint">
			Hint: You may login with <kbd>demo</kbd>/<kbd>demo</kbd> or <kbd>admin</kbd>/<kbd>admin</kbd>.
		</p>
	</div>
        <div class="row buttons">
		<?php echo CHtml::submitButton('Login'); ?>
	</div>

<?php
    $this->endWidget();
?>
</div>