<head>
    <meta name='layout' content='home' />
    <title>CocoaConf | Change Password</title>
    <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>
    <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
    <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
    <script src="${resource(dir:'js', file:'script.js')}" type="text/javascript"></script>

    <script type="text/javascript">

        $(document).ready(function() {

            $('#login').corner("10px");
            $('.button').button();

        });


    </script>

    <style type='text/css' media='screen'>
    #login {
        background-color: #eeeeee;
        padding:20px 20px 20px 100px;
        width:400px;
        font-size: 18px;
        text-align: left;
        margin-left: 50px
    }

    #login input {
        font-size: 18px;
    }


    </style>
</head>

<body>

          <g:if test='${flash.message}'>
              <div class='login_message'>${flash.message}</div>
          </g:if>

          <h1 style="margin-left: 75px">Change Your Password</h1>

          <div  id='login'>
			<form action="password_changeness" method="POST">
                <table>

                    <tr>
                        <td></td>
                        <td>Current password:</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><g:passwordField name="currentPassword"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>New password:</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><g:passwordField name="newPassword"/></td>
                    <tr>
                        <td></td>
                        <td>Confirm new password:</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><g:passwordField name="confirmPassword"/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" value="Update" class="button" /></td>
                    </tr>
                </table> 
			</form>
          </div>

</body>
