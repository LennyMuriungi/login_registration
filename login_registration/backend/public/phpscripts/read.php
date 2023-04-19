<?php
require 'connect.php';
$id =$_POST["id"];
$flag['code']=0;
if($res = mysqli_query($con,"select * from student where regno='$id'"))
{
$flag['code']=1;
if($row = mysqli_fetch_assoc($res))
{
$flag['name']=$row['sname'];
}
}
print(json_encode($flag));
mysqli_close($con);
?>