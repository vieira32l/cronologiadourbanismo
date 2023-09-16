<?php



ini_set("display_errors",1);
ini_set("display_startup_erros",1);
error_reporting(E_ALL);

echo $_SERVER["HTTP_HOST"];

phpinfo(); 


require_once(realpath(dirname(__FILE__) . '/php/libs/PHPMailer-5.2.25/PHPMailerAutoload.php'));


//Create a new PHPMailer instance
$mail = new PHPMailer;
// Set PHPMailer to use the sendmail transport
$mail->isSendmail();
//Set who the message is to be sent from
$mail->setFrom('sistemaautomatico@eloscoletivodigital.com.br', 'Cronologia Urbanismo');
//Set an alternative reply-to address
$mail->addReplyTo('sistemaautomatico@eloscoletivodigital.com.br', 'Cronologia Urbanismo');
//Set who the message is to be sent to
$mail->addAddress('tiag_online@msn.com', 'John Doe');
//Set the subject line
$mail->Subject = 'Cronologia Urbanismo Cadastramento de usuario';
//Read an HTML message body from an external file, convert referenced images to embedded,
//convert HTML into a basic plain-text alternative body
//$mail->msgHTML(file_get_contents('contents.html'), dirname(__FILE__));
//Replace the plain text body with one created manually
$mail->Body = 'Hello, this is my message.';
//$mail->Body = 'Prezado(a) . Seu acesso foi criado no nosso sistema.</br> <a href='linkativar".$link_acesso."'>Clique Aqui!</a> para ativar o seu cadastro';
$mail->AltBody = 'Cadastramento de usuario';
//Attach an image file
//$mail->addAttachment('images/phpmailer_mini.png');


//send the message, check for errors
if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message sent!";
}






//// padrao novo abaixo nao utilizado porcausa da vrsao do php no servidor 5.3


/*
require_once(realpath(dirname(__FILE__) . '/php/libs/PHPMailer/src/PHPMailer.php'));
require_once(realpath(dirname(__FILE__) . '/php/libs/PHPMailer/src/SMTP.php'));


// var_dump (include "./php/libs/PHPMailer/src/SMTP.php"); die();

//            require('.\php\libs\PHPMailer\src\PHPMailer.php');
//            require('.\php\libs\PHPMailer\src\SMTP.php');


            $mail = new PHPMailer\PHPMailer\PHPMailer();
var_dump($mail); die();
            $mail->IsSMTP();
            $mail->SMTPDebug = 0;
            $mail->SMTPAuth = true;
            $mail->SMTPSecure = 'ssl';
            
            //atualizar com um email de disparo da cronologiaurbanismo
            //conta de email abaixo criada por tbf deverá ser alerada
            $mail->Host = "mail.eloscoletivodigital.com.br";
            $mail->Port = 465;
            $mail->IsHTML(true);
            $mail->Username = "sistemaautomatico@eloscoletivodigital.com.br";
            $mail->Password = "cronologiaurbanismo";
            $mail->SetFrom("sistemaautomatico@eloscoletivodigital.com.br");
            $mail->addReplyTo("sistemaautomatico@eloscoletivodigital.com.br");
            $mail->Subject = 'Cronologia Urbanismo Confirmação de cadastro';
            $mail->Body = "Prezado(a) . Seu acesso foi criado no nosso sistema.</br> <a href='linkativar".$link_acesso."'>Clique Aqui!</a> para ativar o seu cadastro";
            $mail->AddAddress('tiag_online@msn.com');
            if($mail->Send()) { 
    
            $return = array(
            "msg" => "Registro efetuado. Confirme o email enviado para ativar seu cadastro.",
            "erro" => 0,
            "log" => "E-mail enviado com sucesso");
            }else{
    
            $return = array(
            "msg" => "Erro no envio do e-mail: " . $mail->ErrorInfo ,
            "erro" => 1,
            "log" => ($mail->ErrorInfo));
            }
            echo (json_encode($return));

*/



?>