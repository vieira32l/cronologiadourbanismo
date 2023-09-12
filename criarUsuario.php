<?php
	
	$nivel = 1;	
	$nome_login = 'thiago';		
	$email = $nome_login;	
	$senha_texto_plano = $email.'123';	

	require_once( 'php/core/generate.php' );
	require_once( 'php/core/db.php' );
	
	$chave = generateRandomString( 128 );
	$senha_armazenada = hash( 'sha512', $senha_texto_plano . $chave );	
	

	$queryUsuario = "INSERT INTO usuarios ( id_nivel , nome , email , senha , hash   )
					VALUES ( '".$nivel."', '".$nome_login."', '".$email."', '".$senha_armazenada."' , '".$chave."' )";

	echo $queryUsuario;				
					
	$rs = mysqli_query($link,$queryUsuario);					
	echo mysql_error();
	
	


?>