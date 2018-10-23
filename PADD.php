aq	`<?php require('connection.php');?>
<html>
 <head>
  <title>Add New Patient</title>
 <link rel="stylesheet" href="css/bootstrap.css"/>
 </head> 
 <body>
<table class="table table-bordered">
<tr bgcolor=blue><td align=center><font SIZE=6 color=white>HOSPITAL
MANAGEMENT SYSTEM</font></td></tr>
<tr><td><table align=center width=750 cellspacing=0 cellpadding=5>
<tr><td align=center><a href=dlist.php>Doctors</td><td align=center><a
href=plist.php>Patients</td><td align=center><a
href=alist.php>Appointments</td>
</table></td></tr>
<tr bgcolor=red><td ><font size=4 color=white>New
Patient</font></td></tr>
<form name=fdadd method=post action=psave.php>
<tr><td><table width=750 cellspacing=0 cellpadding=5>
<tr><td>patient No.</td><td><input type=text name=pno size=30
maxlength=30></td></tr>
<tr><td>patient Name</td><td><input type=text name=name size=30
maxlength=30></td></tr>
<tr><td>Father Name</td><td><input type=text name=fname size=30
maxlength=30></td></tr>
<tr><td>sex</td><td><input type=text name=sex size=30
maxlength=30></td></tr>
<tr><td>Address</td><td><input type=text name=addr size=30
maxlength=30></td></tr>
<tr><td>Contact</td><td><input type=text name=contact size=30
maxlength=30></td></tr>
<tr><td>Dieses info</td><td><input type=text name=dinfo size=30
maxlength=30></td></tr>
<tr><td>Amount</td><td><input type=text name=amount size=30
maxlength=30></td></tr>

<tr><td>Show(Y/N)</td><td><input type=text name=show size=30
maxlength=30></td></tr>
</table></td></tr>
<tr><td align=center><input type=submit value=Submit></td></tr>
</form>
</table>
</body>
</html>