<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="CocoaConf" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'conference.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:javascript library="jquery" plugin="jquery"/>

        <feed:meta kind="atom" version="1.0" controller="post" action="feed"/>
        <g:layoutHead />

        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('#conferenceNav').corner("5px");
                $('#announcementHeader').corner("2px");

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
                <g:link class="${pageProperty(name:'meta.tab') == 'home' ? 'current' : ''}" uri="/" style="background-position: -40% 0;">Home</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'about' ? 'current' : ''}"  controller="home" action="about" style="background-position: -10% 0;">About</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'blog' ? 'current' : ''}"  controller="post" action="list" style="background-position: -0% 0;">Blog</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}"  controller="speaker" action="speakers" style="background-position: 10% 0;">Our Speakers</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}"  controller="home" action="partners" style="background-position: 35% 0;">Our Partners</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'events' ? 'current' : ''}"  style="background-position: 55% 0;">Events</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'next' ? 'current' : ''}"  controller="home" action="nearYou" style="background-position: 60% 0; width:130px;">[cocoaConf next]</g:link>


            </div>
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
            <div id="sidebar" style="width: 180px;">
                <div id="conferenceNav">
                    <ul>
                        <li><g:link class="${pageProperty(name:'meta.nav') == 'home' ? 'current' : ''}" controller="conference" action="home" params="[tinyName: conference.tinyName]">Event Home</g:link></li>
                        <li><g:link class="${pageProperty(name:'meta.nav') == 'speakers' ? 'current' : ''}" controller="conference" action="speakers" params="[tinyName: conference.tinyName]">Speakers</g:link></li>
                        <li><g:link class="${pageProperty(name:'meta.nav') == 'sessions' ? 'current' : ''}"  controller="conference" action="sessions" params="[tinyName: conference.tinyName]">Sessions</g:link></li>
                        <li><g:link class="${pageProperty(name:'meta.nav') == 'schedule' ? 'current' : ''}" controller="conference" action="schedule" params="[tinyName: conference.tinyName]">Schedule</g:link></li>
                        <li><g:link class="${pageProperty(name:'meta.nav') == 'venue' ? 'current' : ''}" controller="conference" action="venue" params="[tinyName: conference.tinyName]">Venue</g:link></li>
                        <li><g:link class="${pageProperty(name:'meta.nav') == 'register' ? 'current' : ''}" controller="conference" action="register" params="[tinyName: conference.tinyName]">Register</g:link></li>
                    </ul>
            </div>
           </div>

           <div id="content">
              <div class="body" style="width: 760px"><g:layoutBody /></div>
               <div style="clear: both"></div>
           </div>
           <div style="clear: both"></div>
           <div id="footer">
               <p>Copyright &copy; 2012 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC.</p>
           </div>
        </div>
    </body>
</html>
