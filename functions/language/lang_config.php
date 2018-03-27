<?php 
	if (!isset($_SESSION['lang'])) {
		$_SESSION['lang'] = 'vn';
		$lang = 'vn';
	} else {
		$lang = $_SESSION['lang'];
	}
?>