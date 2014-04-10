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

<?php
    $this->endWidget();
?>
</div>