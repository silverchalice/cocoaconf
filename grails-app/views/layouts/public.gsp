<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'public2.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
              <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

      <script src="${resource(dir:'js', file:'jquery-1.5.1.min.js')}" type="text/javascript"></script>

      <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23131242-2']);
  _gaq.push(['_setDomainName', '.cocoaconf.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
    </head>
    <body>
         <div id="announcementHeader" style="width:100%; background-image:url(${resource(dir:'images', file:'bar-bg.png')}); text-align:center; height:25px; padding-top:8px; margin-bottom:10px; font-weight:bold; color:white">Coming to Columbus, Ohio August 12 & 13, 2011 - Early Bird Discount available through July 22</div>

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
                <g:link class="${pageProperty(name:'meta.tab') == 'about' ? 'current' : ''}" style="width:130px;" controller="home" action="about">About Cocoaconf</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}" controller="speaker" action="speakers" style="background-position: -130px 0;">Speakers</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'schedule' ? 'current' : ''}" controller="home" action="schedule" style="background-position: -250px 0;">Schedule</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}" controller="home" action="partners" style="background-position: -360px 0;">Partners</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'register' ? 'current' : ''}" controller="home" action="register" style="background-position: -500px 0;">Register</g:link>

                <g:link class="${pageProperty(name:'meta.tab') == 'nearYou' ? 'current' : ''}" controller="home" action="nearYou" style="margin-left:21px; width:120px; border-left:1px solid gray; border-right: 0; background-position: -535px 0;"> [cocoaConf next]</g:link>


            </div>
            <div id="content">
                <g:layoutBody />
            </div>
            <div id="footer">
                <p>Copyright &copy; 2011 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC.</p>
            </div>
        </div>
    </body>
</html>
