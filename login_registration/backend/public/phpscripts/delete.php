<?php
require 'connect.php';
$id =$_POST["id"];
$flag['code']=0;
if($res = mysqli_query($con,"delete from student where regno='$id'"))
{
$flag['code']=1;
}
print(json_encode($flag));
mysqli_close($con);
?>