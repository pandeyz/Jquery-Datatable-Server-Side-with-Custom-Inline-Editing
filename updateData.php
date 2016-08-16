<?php
mysql_connect("localhost", "root", "root") or die('Connection Error');
mysql_select_db("testing_db") or die("Database Connection Error");

$empId 		= $_REQUEST['empId'];
$newValue 	= $_REQUEST['newValue'];
$colName 	= $_REQUEST['colName'];

if($empId != '' && $newValue != '' && $colName != '')
{
	$update = "update datatables_demo set ".$colName." = '".$newValue."' where id = ".$empId;
	if(mysql_query($update))
	{
		echo 'Updated successfully';
	}
	else
	{
		echo 'Erro in Updation';
	}
}

?>