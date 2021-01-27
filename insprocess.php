<?php

include_once('config.php');
$user_fun = new Userfunction();

$json = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

	if(isset($_POST['Username']) && isset($_POST['name']) && isset($_POST['statusid']) && isset($_POST['expiry_date'])){

		$Username = $user_fun->htmlvalidation($_POST['Username']);
		$name = $user_fun->htmlvalidation($_POST['name']);
		$statusid = $user_fun->htmlvalidation($_POST['statusid']);
		$expiry_date = $user_fun->htmlvalidation($_POST['expiry_date']);
		$password = $user_fun->htmlvalidation($_POST['password']);
		$department = $user_fun->htmlvalidation($_POST['department']);
		 
		if((!preg_match('/^[ ]*$/', $Username)) && (!preg_match('/^[ ]*$/', $name)) && (!preg_match('/^[ ]*$/', $statusid))  && ($expiry_date != NULL)){

			$field_val['Username'] = $Username;
			$field_val['name'] = $name;
			$field_val['statusid'] = $statusid;
			$field_val['expiry_date'] = $expiry_date;
			$field_val['password'] = $password;	
			$field_val['department'] = $department;	

			$insert = $user_fun->insert("user", $field_val);

			if($insert){
				$json['status'] = 101;
				$json['msg'] = "Data Successfully Inserted";
			}
			else{
				$json['status'] = 102;
				$json['msg'] = "Data Not Inserted";
			}

		}
		else{

			if(preg_match('/^[ ]*$/', $Username)){

				$json['status'] = 103;
				$json['msg'] = "Please Enter Username";

			}
			if(preg_match('/^[ ]*$/', $name)){

				$json['status'] = 104;
				$json['msg'] = "Please Enter Name";

			}
			if(preg_match('/^[ ]*$/', $statusid)){

				$json['status'] = 105;
				$json['msg'] = "Please Select Statusid";

			}
			if($expiry_date == NULL){

				$json['status'] = 107;
				$json['msg'] = "Please Enter Expiry_date";

			}

		}

	}
	else{

		$json['status'] = 108;
		$json['msg'] = "Invalid Values Passed";

	}

}
else{

	$json['status'] = 109;
	$json['msg'] = "Invalid Method Found";

}


echo json_encode($json);

?>