<head>
    <meta name='layout' content='home' />
    <title>CocoaConf | Password Changed</title>
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

</head>


<body>
      <div>
			<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
			</g:if>
            <h1>Password Changed</h1>
          <br/>
            <a href="/" class="button">Return Home</a>
     </div>
</body>
