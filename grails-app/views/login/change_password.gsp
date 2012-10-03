<head>
    <meta name='layout' content='home' />
    <title>Change Password</title>
</head>

<body>
      <div>
			<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
			</g:if>
			<form action="password_changeness" method="POST">
                <table>
                    <tr>
                        <td colspan="2">
                            <h4>Change Password</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Current password:</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</label>
                        <td><g:passwordField name="currentPassword"/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>New password:</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</label>
                        <td><g:passwordField name="newPassword"/></td>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Confirm new password:</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</label>
                        <td><g:passwordField name="confirmPassword"/></td>
                    </tr>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </table> 
			</form>
</div>
</body>
