<head>
    <meta name='layout' content='home' />
    <title>CocoaConf | Reset Password</title>

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
        padding:20px;
        width:500px;
        font-size: 18px;
        text-align: center;
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

    <h1 style="margin-left: 75px">Forgot Your Password?</h1>
    <div  id='login'>

        <form action="password_resetness" method="POST">
            <p style="font-size: 16px">
                Enter the email address that you used for registration:
            </p>
            <p>
                <label for='password'>Password: </label>
                <g:textField name="email"/>
            </p>
            <p>
                <label for='nothing'><input type="submit" value="Reset" class="button" style="margin-left: 200px" />
            </p>

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
