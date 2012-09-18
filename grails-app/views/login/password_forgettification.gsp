<head>
    <meta name='layout' content='home' />
    <title>Login</title>
</head>

<body>
      <div style="background: url(${resource(dir:'images', file:'box-bg.png')}); width:310px; height: 200px; padding:0 30px 30px 30px; margin:50px 0 0 150px">
			<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
			</g:if>
			<form action="password_resetness" method="POST">
                <table>
                    <tr>
                        <td colspan="2">
                            <h4>Forgot Password..</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Enter the email address that you used for registration:</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</label>
                        <td><g:textField name="email"/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Reset" /></td>
                    </tr>
                </table> 
			</form>
</div>
<script type='text/javascript'>
<!--
(function(){
	document.forms['loginForm'].elements['j_username'].focus();
})();
// -->
</script>
</body>
