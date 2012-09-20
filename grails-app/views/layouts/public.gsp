<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'public.css')}" />
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
        <div id="announcementHeader">
           <span><a style="color:#ff9627; text-decoration: none" href="${request.contextPath}/raleigh-2012/home"><a href="http://cocoaconf.com/raleigh-2012/home">CocoaConf Raleigh registration now open! - Early bird registration ends October 12th</a></a></span>
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
            <div id="nav">
                <g:link class="${pageProperty(name:'meta.tab') == 'home' ? 'current' : ''}" uri="/">Home</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'about' ? 'current' : ''}"  controller="home" action="about" style="background-position: -100px 0;">About</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'blog' ? 'current' : ''}"  controller="post" action="list" style="background-position: -200px 0;">Blog</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}"  controller="speaker" action="speakers" style="background-position: -300px 0;">Our Speakers</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}"  controller="home" action="partners" style="background-position: -400px 0;">Our Partners</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'register' ? 'current' : ''}"  controller="home" action="register" style="background-position: -500px 0;">Register</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'next' ? 'current' : ''}"  controller="home" action="nearYou" style="background-position: -700px 0; width:130px;">[cocoaConf next]</g:link>


            </div>
            <div id="sidebar" style="min-height: 927px;">
               <h2 style="color:#1da0d1;">About CocoaConf</h2>
               <h3>CocoaConf is a technical conference, pure and simple.</h3>
               <p>Instead of vendor booths or vendor keynotes, you'll find:</p>
               <ul style="list-style: none">
                   <li style="border-bottom: 1px dotted gray"><strong>In-depth</strong> technical sessions.</li>           
                   <li style="border-bottom: 1px dotted gray; margin-bottom:15px;">Multiple <strong>concurrent tracks</strong>.</li>
                   <li style="border-bottom: 1px dotted gray; margin-bottom:15px;">Full-day, hands-on <strong>iOS workshop</strong>.</li>
                   <li style="border-bottom: 1px dotted gray; margin-bottom:15px;">Fun and informative <strong>speaker panel</strong>.</li>
                   <li style="border-bottom: 1px dotted gray; margin-bottom:15px; font-weight: bold">And much more!</li>
               </ul>
               <a href="http://www.twitter.com/cocoaconf" style="margin-left: 20px"><img src="http://twitter-badges.s3.amazonaws.com/follow_us-c.png" alt="Follow CocoaConf on Twitter"/></a>
               <br/>
               <br/>
               <h2><g:link controller="mugShot" action="list" style="color:#1da0d1; text-decoration: none">CocoaConf - The Mug</g:link></h2>
               <g:link controller="mugShot" action="list"><g:img dir="images" file="mugThumb.png" style="width:160px; margin:10px 20px" /> </g:link>
               <br/>
              <h2 style="color:#1da0d1;">Our Sponsors</h2>
              <br/>
              ${conference?.sponsorListBlurb}
              <a href="${resource(dir:'images', file:'sponsorship.pdf')}">Sponsorship Opportunities Available</a>
              <br/><br/>
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
