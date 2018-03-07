<html>
	<head>
		<link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
		
		<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
		
		<script type="text/javascript" language="javascript" class="init">
		$(document).ready(function() {
			var count = 0;
			$('#data_table').dataTable({
				"sServerMethod": "POST", 
				"bProcessing": true,
				"bServerSide": true,
				"sAjaxSource": "get_data.php"
			});
			
			/*
				$.fn.dataTableExt.errMode = 'ignore';
				$('#datatable_companies').dataTable({
				"sServerMethod": "get", 
				"bProcessing": true,
				"bServerSide": true,
				"sAjaxSource": $('meta[name="route"]').attr('content') + '/administrator/fetchcompanies',

				/*"columnDefs": [
				{ "className": "dt-center", "targets": [0, 9, 10] }
				],
				"aoColumns": [
				{ 'bSortable' : true },
				{ 'bSortable' : true },
				{ 'bSortable' : false },
				{ 'bSortable' : false },
				{ 'bSortable' : false },
				{ 'bSortable' : false },
				{ 'bSortable' : false },
				{ 'bSortable' : false },
				{ 'bSortable' : false },
				{ 'bSortable' : true },
				{ 'bSortable' : false }
				]*/
				});
			*/

			// Inline editing
			var oldValue = null;
			$(document).on('dblclick', '.editable', function(){
				oldValue = $(this).html();

				$(this).removeClass('editable');	// to stop from making repeated request
				
				$(this).html('<input type="text" style="width:150px;" class="update" value="'+ oldValue +'" />');
				$(this).find('.update').focus();
			});

			var newValue = null;
			$(document).on('blur', '.update', function(){
				var elem    = $(this);
				newValue 	= $(this).val();
				var empId	= $(this).parent().attr('id');
				var colName	= $(this).parent().attr('name');

				if(newValue != oldValue)
				{
					$.ajax({
						url : 'updateData.php',
						method : 'post',
						data : 
						{
							empId    : empId,
							colName  : colName,
							newValue : newValue,
						},
						success : function(respone)
						{
							$(elem).parent().addClass('editable');
							$(elem).parent().html(newValue);
						}
					});
				}
				else
				{
					$(elem).parent().addClass('editable');
					$(this).parent().html(newValue);
				}
			});
		// Example: http://jsfiddle.net/bababalcksheep/ntcwust8/
		});
		</script>
		
		<style>
		.odd{
			background-color: #FFF8FB !important;
		}
		.even{
			background-color: #DDEBF8 !important;
		}
		</style>
	</head>
	<body>
	<div>
	<table id="data_table">
		<thead>
			<tr>
				<th>Emp Code</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Position</th>
				<th>Office</th>
			</tr>
		</thead>

		<tbody>
		<!-- Dynamic Body -->
		</tbody>
	</table>
	</body>
	</div>
</html>
