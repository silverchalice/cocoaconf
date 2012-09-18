<head>
    <meta name='layout' content='home' />
    <title>Password Changed</title>
</head>

<body>
      <div style="background: url(${resource(dir:'images', file:'box-bg.png')}); width:310px; height: 200px; padding:0 30px 30px 30px; margin:50px 0 0 150px">
			<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
			</g:if>
            <h4>Password Changed</h4>
     </div>
</body>
