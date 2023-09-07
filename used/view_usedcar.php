<?php
include '../connect.php';
$sql=mysqli_query($con,"SELECT * from usedvehicle_tb where type='car'");
$list=array();
if ($sql->num_rows>0) {
    while($row=mysqli_fetch_assoc($sql))
     {
        $myarray['result']='success';
        $myarray['usedvehicle_id']=$row['usedvehicle_id'];
        $myarray['vehicle_name']=$row['vehicle_name'];
        $myarray['brand_name']=$row['brand_name'];
        $myarray['price']=$row['price'];
        $myarray['segment']=$row['segment'];
        $myarray['vehicle_year']=$row['vehicle_year'];
        $myarray['enginecc']=$row['enginecc'];
        $myarray['fuel']=$row['fuel'];
        $myarray['kmdriven']=$row['kmdriven'];

        $myarray['type']=$row['type'];
        $myarray['img']=$row['img'];


        array_push($list,$myarray);
    }
    # code...
}
else
{
    $myarray['result']='failed';
    array_push($list,$myarray);
}
echo json_encode($list);

?>