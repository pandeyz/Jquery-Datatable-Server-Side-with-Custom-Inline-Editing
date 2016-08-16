<?php
mysql_connect("localhost", "root", "root") or die('Connection Error');
mysql_select_db("testing_db") or die("Database Connection Error");

$start 	= $_REQUEST['iDisplayStart'];
$length = $_REQUEST['iDisplayLength'];
$sSearch = $_REQUEST['sSearch'];

$col = $_REQUEST['iSortCol_0'];

$arr = array(0 => 'id', 1 => 'first_name', 2 => 'last_name', 3 => 'email');

$sort_by = $arr[$col];
$sort_type = $_REQUEST['sSortDir_0'];

$position_filter = '';
$position = substr($_REQUEST['sSearch_3'], 1, -1);
if($position != '')
{
	$position_filter = "and position LIKE '%".$position."%'";
}
	
$qry = "select id, first_name, last_name, email, position, office from datatables_demo where (first_name LIKE '%".$sSearch."%' or last_name LIKE '%".$sSearch."%' or email LIKE '%".$sSearch."%') ".$position_filter." ORDER BY ".$sort_by." ".$sort_type." LIMIT ".$start.", ".$length;
$res = mysql_query($qry);
while($row = mysql_fetch_assoc($res))
{
	$data[] = $row;
}

$qry = "select count(id) as count from datatables_demo";
$res = mysql_query($qry);

while($row =  mysql_fetch_assoc($res))
{
	$iTotal = $row['count'];
}

$rec = array(
	'iTotalRecords' => $iTotal,
	'iTotalDisplayRecords' => $iTotal,
	'aaData' => array()
);

$k=0;
if (isset($data) && is_array($data)) {

	foreach ($data as $item) {
		$rec['aaData'][$k] = array(
			0 => $item['id'],
			1 => '<span id="'.$item['id'].'" name="first_name" class="editable">'.$item['first_name'].'</span>',
			2 => '<span id="'.$item['id'].'" name="last_name" class="editable">'.$item['last_name'].'</span>',
			3 => '<span id="'.$item['id'].'" name="email" class="editable">'.$item['email'].'</span>',
			4 => '<span id="'.$item['id'].'" name="position" class="editable">'.$item['position'].'</span>',
			5 => '<span id="'.$item['id'].'" name="office" class="editable">'.$item['office'].'</span>'
		);
		$k++;
	}
}

echo json_encode($rec);
?>