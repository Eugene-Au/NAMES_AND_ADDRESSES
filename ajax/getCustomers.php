<?php
include('../includes/config.php');

$query="select a.id, a.name, a.address, a.phone, a.preferred 
, (select count(*) from names_addresses t where t.name = a.name) total_addresses
from names_addresses a";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$arr[] = $row;	
	}
}
# JSON-encode the response
$json_response = json_encode($arr);

// # Return the response
echo $json_response;
?>
