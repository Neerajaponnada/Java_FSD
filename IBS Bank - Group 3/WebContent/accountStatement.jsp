<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>IBS Bank- Account Statement</title>
    </head>
   <body leftmargin=0 topmargin=0 marginheight="0" marginwidth="0" bgcolor="#FFFFFF" style="background-color:PaleGoldenRod;">
	<h1 style="text-align:center;background-color:DarkCyan;color:White;font-size:45">IBS Bank</h1>
        
        <form name="acctSummary" >
            <table border="0" cellspacing="0" cellpadding="0">
                <tr><td>
                	<table border="0.5" >
                            <tr bgcolor="#FFF0FF">
                                <th align="center"><a href="accountSummary.jsp">Account Summary&nbsp;&nbsp;</a></th>
                                <th align="center"><a href="fixedDeposit.jsp">Fixed Deposit&nbsp;&nbsp;</a></th>
                                <th><a href="accountSummary.jsp">Account Statement&nbsp;&nbsp;</a></th>
                                <th><a href="recurringDepost.jsp">Recurring Deposit&nbsp;&nbsp;</a></th></tr>
                            <tr>
                            <tr align="right"><p>Welcome User !! </p></tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td bgcolor="#E3E4FA" height="410" width="24%" valign="top">
                        <br><strong>Services</strong><br>
                        <a href="accountSummary.jsp">Account Summary<br></a>
                        <a href="fundsTransfer.jsp">Funds Transfer<br></a>
                        <a href="accountStatement.jsp">Account Statement <br></a><br><br>
                        <a href="changePassword.jsp">Change Password<br></a>
                        <a href="index.jsp">Log Out</a>
                        <br>
                        <br>
                    </td>
                    <td width="1100" height="100" bgcolor="#FAF8CC">
                        <font color="brown"><h2>Account Statement </h2></font>
                        <h3></h3>
               <form action="acctStmt" method="POST" >
				 
				 
		<table border="0" cellspacing="0" cellpadding="0" >
			<tr><td><strong>Period Start Date&nbsp;&nbsp;&nbsp;</strong></td> 
			<td><em><input type="date" name="startDate" required /></em></td>
			</tr>
			<tr><td><strong>Period End Date &nbsp;&nbsp;&nbsp;</strong></td> 
			<td><em><input type="date" name="endDate" required /></em></td>
			</tr>
			<tr align="center"><td><button>Submit</button></td> 
			<td><em></em></td>
			</tr>
			
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
            </table>

            <table border="0" cellspacing="0" cellpadding="0" width="100%">
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="163" >
                <tr>
                    <td>
                        <table border="0" cellspacing="0" cellpadding="0" width="780" background="" height="1">
                            <tr align="center" valign="top">
                                <td width="400"><h5 style="text-align:center;">Copyright&copy;2020 IBS Bank.com. All rights reserved | Designed by Batch-7 Group3</h5><br/></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>


