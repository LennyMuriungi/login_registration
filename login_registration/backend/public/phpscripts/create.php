<?php
require 'connect.php';
$id =$_POST["id"];
$name =$_POST["name"];
$flag['code']=0;
if($res = mysqli_query($con,"insert into student values('','$id','$name')"))
{
$flag['code']=1;
}
print(json_encode($flag));
mysqli_close($con);
?>