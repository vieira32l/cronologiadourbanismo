<?php


function enviarEmailConfirmacaoCadastro($destinatario, $id, $nome){

        require(\php\libs\PHPMailer\src\PHPMailer.php");
        require(\php\libs\libs\PHPMailer\src\SMTP.php");

var_dump($mail);        
echo "sdfgsd12312f";
die();
        $mail = new PHPMailer\PHPMailer\PHPMailer();
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
        $mail->Body = "Prezado(a) ".$nome.". Seu acesso foi criado no nosso sistema.</br> <a href='linkativar".$id."'>Clique Aqui!</a> para ativar o seu cadastro";
        $mail->AddAddress($destinatario);

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
    };

enviarEmailConfirmacaoCadastro('tiag_online@msn.com', 346, 'Tiago Barreto Ferreira');

    ?>