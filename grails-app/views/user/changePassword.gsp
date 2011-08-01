<head>
<meta name='layout' content='main' />
<title>Login</title>
<style type='text/css' media='screen'>
#login {
	margin:15px 0px; padding:0px;
	text-align:center;
}
#login .inner {
	width:320px;
	margin:0px auto;
	text-align:left;
	padding:10px;
	border-top:1px dashed #499ede;
	border-bottom:1px dashed #499ede;
	background-color:#EEF;
}
#login .inner .fheader {
	padding:4px;margin:3px 0px 3px 0;color:#2e3741;font-size:14px;font-weight:bold;
}
#login .inner .cssform p {
	clear: left;
	margin: 0;
	padding: 5px 0 8px 0;
	padding-left: 105px;
	border-top: 1px dashed gray;
	margin-bottom: 10px;
	height: 1%;
}
#login .inner .cssform input[type='text'] {
	width: 120px;
}

#login table {
    border: none
}
#login .inner .cssform label {
	font-weight: bold;
	float: left;
	margin-left: -105px;
	width: 100px;
}
#login .inner .login_message {color:red;}
#login .inner .text_ {width:120px;}
#login .inner .chk {height:12px;}
</style>
</head>

<body>
	<div id='login'>
		<div class='inner'>
			<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
			</g:if>
			<div class='fheader'>Please Change Password..</div>
			<g:form name="changePasswordForm" action="savePassword">
                <table>
                    <tr>
                        <td><label for='oldpassword'>Current Password</label></td>
					    <td><input type='password' class='text_' name='oldpassword' id='oldpassword' /></td>
                    </tr>

                    <tr>
                        <td><label for='password'>Password</label></td>
                        <td><input type='password' class='text_' name='j_password' id='password' /></td>
                    </tr>
                    <tr>
                        <td><label for='password2'>Retype Password</label></td>
					    <td><input type='password' class='text_' name='password2' id='password2' /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type='submit' value='Save New Password' />
                        </td>
                    </tr>
                </table>

			</g:form>
		</div>
	</div>
<script type='text/javascript'>
<!--
(function(){
	document.forms['loginForm'].elements['j_username'].focus();
})();
// -->
</script>
</body>
