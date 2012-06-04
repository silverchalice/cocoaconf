<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'public2.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <feed:meta kind="atom" version="1.0" controller="post" action="feed"/>
        <g:layoutHead />
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
    <body id="announcement">
            <div id="nav">
                <g:link class="${pageProperty(name:'meta.tab') == 'home' ? 'current' : ''}" uri="/">Home</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'blog' ? 'current' : ''}" controller="post" action="list" style="background-position: -100px 0;">Blog</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}" controller="speaker" action="speakers" style="background-position: -200px 0;">Speakers</g:link>
                <a href="http://cocoaconf.com/schedule" class="${pageProperty(name:'meta.tab') == 'schedule' ? 'current' : ''}" style="background-position: -300px 0;">Schedule</a>
                <g:link class="${pageProperty(name:'meta.tab') == 'about' ? 'current' : ''}" controller="home" action="about" style="background-position: -400px 0;">Venue</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}" controller="home" action="register" style="background-position: -500px 0;">Register</g:link>

                <g:link class="${pageProperty(name:'meta.tab') == 'next' ? 'current' : ''}" controller="home" action="nearYou" style="background-position: -700px 0; width:130px; border-right: 1px solid gray;">[cocoaConf next]</g:link>


            </div>

        <div id="page">

           <div id="spinner" class="spinner" style="display:none;">
                <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
           </div>
           <div id="logo"><a href="${request.contextPath}/">
			   <img src="${resource(dir:'images',file:'cc-logo.png')}" alt="CocoaConf - the conference for iPhone, iPad and Mac developers" border="0" />
		   	   the conference for <span>iPhone</span>, <span>iPad</span> and <span>Mac</span> developers
		   </a>
           </div>
        <div id="announcementHeader">
            <span style="color:#ff9627">Registration now open – Early-bird rate ends May 4th.</span>
        </div>
            <div id="sidebar" style="min-height: 927px;">
                <div style="background-color:gray; border: 1px solid black; padding:30px 0px; margin:12px 12px; text-align:center;">
                    <a href="${createLink(controller: 'conference', action:'home', id:conferenceInstance.tinyName)}">Home</a>
                    <h3>Speakers</h3>
                    <h3>Schedule</h3>
                    <h3>Venue</h3>
                    <h3>Register</h3>
            </div>
           </div>

           <div id="content">
              <div class="body"><g:layoutBody /></div>
               <div style="clear: both"></div>
           </div>
           <div style="clear: both"></div>
           <div id="footer">
               <p>Copyright &copy; 2012 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC.</p>
           </div>
        </div>
    </body>
</html>
