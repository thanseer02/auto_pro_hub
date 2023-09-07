<?php
include 'connect.php';
$sql=mysqli_query($con,"SELECT * from rental_tb where type='bike'");
$list=array();
if ($sql->num_rows>0) {
    while($row=mysqli_fetch_assoc($sql))
     {
        $myarray['result']='success';
        $myarray['vehicle_name']='vehicle_name';
        $myarray['brand_name']='brand_name';
        $myarray['price']='price';
        $myarray['type']='type';
        // $myarray['img']='img';


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