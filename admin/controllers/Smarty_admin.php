<?php
include("smarty/libs/Smarty.class.php");
class Smarty_Admin extends Smarty
{
	function __construct()
	{
		parent::__construct();
		$this->setCacheDir("smarty/cache/");
		$this->setCompileDir("smarty/templates_c/");
		$this->setConfigDir("smarty/configs/");
		$this->setTemplateDir("smarty/templates/");	
	}
	function Hien_thi_giao_dien($layout)
	{
		$this->display($layout);	
	}
	

}

?>