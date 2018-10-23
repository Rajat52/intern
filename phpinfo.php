
<?php require('connection.php');
?>
<html>
<body>
<script language="javascript">
</script>
<form>
<input type="button" onClick="window.print();" value="print">
<table height=100 width=900>
<tr align=center><td>
<h1>ABC HOSPITAL</h1>
</tr>
<tr align=center><td>
<h2>Patient Information Document</h2>
</tr>
</table>
</form>

<table border=1 height=100 width=900><tr align=center>
<td>Patient no.</td>
<td>Name</td>
<td>Father Name</td>
<td>Sex</td>
 <td>Address</td>
 <td>Contact</td>
 <td>D. info</td>
 <td>Amount</td>
</tr>




<?php




$pno=$_POST['pno'];


$rs1=$mysqli->query("SELECT * from patient where pshow='Y' order by
pname;");

while( $row=$rs1->fetch_array()) {
if($pno==$row[0])
{
echo "<tr align=center>
<td>$row[0]</td>
<td>$row[1]</td>
<td>$row[2]</td>
<td>$row[3]</td>
 <td>$row[4]</td>
 <td>$row[5]</td>
 <td>$row[6]</td>
 <td>$row[7]</td>
</table>";
 
}

}
	

?> 

<ul>
<li>This document show patient information and charges amount that to be pay.
<li>If any information is incorrect or for any suggestion please contact to the inquiry counter.
<li>Visit to the patient medicine counter[C.No.-2] for general medical advice.
<li>visit to the patient information counter[C.No.-3] for discharge instruction,<br> appointment detail or plan for managing your health(health,nutrition,treatment).
<ul>
</body>
</html>
