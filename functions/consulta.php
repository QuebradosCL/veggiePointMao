<?php
include('functions.php');
date_default_timezone_set('UTC');

// Funciones para los articulos
function obtenerProductos(){
	$resultset=getSQLResultSet("SELECT * FROM product ORDER by IDPRODUCT");
	return $resultset;
}

function obtenerMenu(){
	$resultset=getSQLResultSet("SELECT * FROM menu ORDER by ID_MENU");
	return $resultset;
}

function obtenerMenuPorID($parametro){
	$resultset=getSQLResultSet("SELECT * FROM menu WHERE ID_MENU = $parametro ORDER by ID_MENU");
	return $resultset;
}

function obtenerPromocion(){
	$resultset=getSQLResultSet("SELECT * FROM advancement ORDER by IDADVENCEMENT");
	return $resultset;
}

function obtenerPromocionPorID($parametro){
	$resultset=getSQLResultSet("SELECT * FROM advancement WHERE IDADVENCEMENT = $parametro ORDER by IDADVENCEMENT");
	return $resultset;
}


function obtenerNoticiasPorID($parametro){
	$resultset=getSQLResultSet("SELECT * FROM news WHERE CODNEW = $parametro ORDER by CODNEW");
	return $resultset;
}

function obtenerProductosPorID($parametro){
	$resultset=getSQLResultSet("SELECT * FROM product WHERE IDPRODUCT = $parametro ORDER by IDPRODUCT");
	return $resultset;
}




function RecuperRed($parametro){
	$resultset=getSQLResultSet("SELECT * FROM `contact`  WHERE IDCONTACT = $parametro");
	return $resultset;
}

function RecuperContact($parametro){
	$resultset=getSQLResultSet("SELECT * FROM `contact`  WHERE IDCONTACT = $parametro");
	return $resultset;
}

function obtenerWho(){
	$resultset=getSQLResultSet("SELECT * FROM information");
	return $resultset;
}

function obtenerPhone(){
	$resultset=getSQLResultSet("SELECT * FROM phone ORDER by IDPRODUCT");
	return $resultset;
}

function obtenerPhonePorID($parametro){
	$resultset=getSQLResultSet("SELECT * FROM phone WHERE IDPRODUCT = $parametro ORDER by IDPRODUCT");
	return $resultset;
}

?>


