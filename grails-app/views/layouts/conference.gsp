<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="CocoaConf" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'conference.css')}" />
        <g:render template="/layouts/favicons" />
        <g:javascript library="jquery" plugin="jquery"/>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'retina.js')}"></script>
        <feed:meta kind="atom" version="1.0" controller="post" action="feed"/>
        <g:layoutHead />

        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('#conferenceNav').corner("5px");

                $('.odd').corner("5px");
                $('.even').corner("5px");

            });

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

        <div id="navWrapper">
            <div id="nav">
                <g:link class="${pageProperty(name:'meta.tab') == 'home' ? 'current' : ''}" uri="/">Home</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'blog' ? 'current' : ''}"  controller="post" action="list">Blog</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}"  controller="speaker" action="speakers">Our Speakers</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}"  controller="home" action="partners">Our Partners</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'events' ? 'current' : ''}"  controller="home" action="events" style="background-position: -500px 0;">Events</g:link>
            </div>
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

            <div id="announcementHeader">
	           <g:render template="/layouts/announcement_bar" />
            </div>

            <div id="content">
                <g:layoutBody />
            </div>

            <div id="footer">
                <p>Copyright &copy; 2013 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC. | <a href="http://cocoaconf.com/about">About the Klein Family</a></p>
            </div>
        </div>
    </body>
</html>
