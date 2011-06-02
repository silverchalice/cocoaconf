<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'announcement.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
              <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

      <script src="${resource(dir:'js', file:'jquery-1.5.1.min.js')}" type="text/javascript"></script>

      <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>

    </head>
    <body>
         <div id="announcementHeader" style="width:100%; background-image:url(${resource(dir:'images', file:'bar-bg.png')}); text-align:center; height:25px; padding-top:8px; margin-bottom:10px; font-weight:bold; color:white">Coming to Columbus, Ohio August 12 & 13, 2011!</div>

         <div id="page-header">
            <span id="page-header-right"><img src="${resource(dir:'images', file:'tr-corner.png')}" /></span>
        </div>
        <div id="page">

           <div id="spinner" class="spinner" style="display:none;">
                <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
            </div>
            <div id="logo"><a href="${request.contextPath}/"><img src="${resource(dir:'images',file:'cc-logo.png')}" style="margin-bottom:20px" alt="Simply Cocoa" border="0" /></a>
            </div>
            <div id="nav" style="background-image: url(${resource(dir:'images', file:'bar-bg.png')}); height:40px; width:798px">
                <g:link controller="speaker" action="speakers">Speakers</g:link>
                <g:link controller="session" action="list" style="background-position: -101px 0;">Sessions</g:link>
                <g:link controller="home" action="register" class="registerNav">Register</g:link>

            </div>
            <div id="content">
                <g:layoutBody />
            </div>
            <div id="footer">
                <p style="left:200px;">Copyright &copy; 2011 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC.</p>
            </div>
        </div>
    </body>
</html>
