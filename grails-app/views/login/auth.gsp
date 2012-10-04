<head>
    <meta name='layout' content='home' />
    <title>CocoaConf | Login</title>
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
            padding:20px 120px 20px 60px;
            width:350px;
            font-size: 18px;
            text-align: right;
            margin-left: 50px
        }

        #login input {
            font-size: 18px;
        }


    </style>
</head>

<body>

<g:if test='${flash.message}'>
    <div class='message'>${flash.message}</div>
    </g:if>
    <h1 style="margin-left: 75px">Please Login</h1>
    <div  id='login'>

        <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
            <p>
                <label for='username'>Email: </label>
                <input type='text' class='text_' name='j_username' id='username' />
            </p>
            <p>
                <label for='password'>Password: </label>
                <input type='password' class='text_' name='j_password' id='password' />
            </p>
            <p>
                <label for='remember_me' style="font-size: 16px">Remember Me</label>
                <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                       <g:if test='${hasCookie}'>checked='checked'</g:if> />
            </p>
            <p>
                <label for='nothing'><g:link style="font-size: 16px" action="password_forgettification">Forgot password?</g:link></label>      <input type="submit" value="Login" class="button" style="margin-left: 10px;"  />
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
