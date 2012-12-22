<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="CocoaConf" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'public.css')}" />
        <meta name="tab" content="events" />

        <g:render template="/layouts/favicons" />
        <g:javascript library="jquery" plugin="jquery"/>
        <feed:meta kind="atom" version="1.0" controller="post" action="feed"/>
        <g:layoutHead />

    </head>
    <body id="announcement">
        <div id="navWrapper">
            <div id="nav">
                <g:link class="${pageProperty(name:'meta.tab') == 'home' ? 'current' : ''}" uri="/">Home</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'blog' ? 'current' : ''}"  controller="post" action="list">Blog</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}"  controller="speaker" action="speakers">Our Speakers</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}"  controller="home" action="partners">Our Partners</g:link>
                <a  href="${request.contextPath}/dc-2012/home" class="${pageProperty(name:'meta.tab') == 'events' ? 'current' : ''}"  style="background-position: 55% 0;">Events</a>
                <g:link class="${pageProperty(name:'meta.tab') == 'next' ? 'current' : ''}"  controller="home" action="nearYou" style="width:130px;">[cocoaConf next]</g:link>


            </div>

        </div>
        <div id="page2">
            <div id="spinner" class="spinner" style="display:none;">
                <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
            </div>
            <div id="logo"><a href="${request.contextPath}/">
			   <img src="${resource(dir:'images',file:'cc-logo.png')}" alt="CocoaConf - the conference for iPhone, iPad and Mac developers" border="0" />
		   	   the conference for <span>iPhone</span>, <span>iPad</span> and <span>Mac</span> developers
		    </a>
            </div>
           <div id="content2">
              <div class="body2"><g:layoutBody /></div>
               <div style="clear: both"></div>
           </div>
           <div style="clear: both"></div>
           <div id="footer">
               <p>Copyright &copy; 2012 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC.</p>
           </div>
        </div>
    </body>
</html>
