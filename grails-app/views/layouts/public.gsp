<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'public.css')}" />
        <script type="text/javascript" src="${resource(dir: 'js', file: 'retina.js')}"></script>
        <g:render template="/layouts/favicons" />
        <feed:meta kind="atom" version="1.0" controller="post" action="feed"/>
        <g:layoutHead />
    </head>
    <body id="announcement">
        <div id="announcementHeader">
           <g:render template="/layouts/announcement_bar" />
        </div>

        <div id="page">

           <div id="spinner" class="spinner" style="display:none;">
                <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
           </div>
           <div id="logo"><a href="${request.contextPath}/">
			   <img src="${resource(dir:'images',file:'cc-logo.png')}" alt="CocoaConf - The developer conference for those who think different." border="0" />
		   	   the conference for <span>iPhone</span>, <span>iPad</span> and <span>Mac</span> developers
		   </a>
           </div>
            <div id="nav">
                <g:link class="${pageProperty(name:'meta.tab') == 'home' ? 'current' : ''}" uri="/">Home</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'blog' ? 'current' : ''}"  controller="post" action="list">Blog</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}"  controller="speaker" action="speakers">Our Speakers</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}"  controller="home" action="partners">Our Partners</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'events' ? 'current' : ''}"  controller="home" action="events" style="background-position: -500px 0;">Events</g:link>


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
              <g:link controller="home" action="prospectus">Sponsorship Opportunities Available</g:link>
              <br/><br/>
           </div>

           <div id="content">
              <div class="body"><g:layoutBody /></div>
               <div style="clear: both"></div>
           </div>
           <div style="clear: both"></div>
           <div id="footer">
               <p>Copyright &copy; 2013 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC. | <a href="http://cocoaconf.com/about">About the Klein Family</a></p>
           </div>
        </div>
    </body>
</html>
