<?php
include '../connect.php';
$sql=mysqli_query($con,"SELECT * from accessories where type='car'");
$list=array();
if ($sql->num_rows>0) {
    while($row=mysqli_fetch_assoc($sql))
     {
        $myarray['result']='success';
        $myarray['p_id']=$row['p_id'];
        $myarray['product_name']=$row['product_name'];
        $myarray['brand_name']=$row['brand_name'];
        $myarray['price']=$row['price'];
        $myarray['offer_price']=$row['offer_price'];
        $myarray['discount']=$row['discount'];
        $myarray['discription']=$row['discription'];
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