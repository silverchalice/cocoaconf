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
                <g:link class="${pageProperty(name:'meta.tab') == 'about' ? 'current' : ''}"  controller="home" action="about">About</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'blog' ? 'current' : ''}"  controller="post" action="list">Blog</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'speakers' ? 'current' : ''}"  controller="speaker" action="speakers">Our Speakers</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'partners' ? 'current' : ''}"  controller="home" action="partners">Our Partners</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'events' ? 'current' : ''}"  style="background-position: 55% 0;">Events</g:link>
                <g:link class="${pageProperty(name:'meta.tab') == 'next' ? 'current' : ''}"  controller="home" action="nearYou" style="width:130px;">[cocoaConf next]</g:link>


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
                   <span style="color:#ff9627">&nbsp;</span>
               </div>
                <div id="sidebar" style="text-align: center; width: 180px;">
                    <div id="conferenceNav">
                        <ul>
                            <li><g:link class="${pageProperty(name:'meta.nav') == 'home' ? 'current' : ''}" controller="conference" action="home" params='[tinyName: "${conference.tinyName}"]'>Event Home</g:link></li>
                            <li><g:link class="${pageProperty(name:'meta.nav') == 'speakers' ? 'current' : ''}" controller="conference" action="speakers" params='[tinyName: "${conference.tinyName}"]'>Speakers</g:link></li>
                            <li><g:link class="${pageProperty(name:'meta.nav') == 'sessions' ? 'current' : ''}"  controller="conference" action="sessions" params='[tinyName: "${conference.tinyName}"]'>Sessions</g:link></li>
                            <li><g:link class="${pageProperty(name:'meta.nav') == 'schedule' ? 'current' : ''}" controller="conference" action="schedule" params='[tinyName: "${conference.tinyName}"]'>Schedule</g:link></li>
                            <li><g:link class="${pageProperty(name:'meta.nav') == 'venue' ? 'current' : ''}" controller="conference" action="venue" params='[tinyName: "${conference.tinyName}"]'>Venue</g:link></li>
							<li><g:link class="${pageProperty(name:'meta.nav') == 'partners' ? 'current' : ''}" controller="conference" action="partners" params='[tinyName: "${conference.tinyName}"]'>Partners</g:link></li>
                            <li><g:link class="${pageProperty(name:'meta.nav') == 'register' ? 'current' : ''}" controller="conference" action="register" params='[tinyName: "${conference.tinyName}"]'>Register</g:link></li>
                        </ul>


                </div>

                <br/>
                <br/>
                <h2 style="color:#1da0d1;"><g:link controller="mugShot" action="list">Our Mug</g:link></h2>
                <g:link controller="mugShot" action="list"><g:img dir="images" file="mugThumb.png" style="width:160px; margin:10px" /> </g:link>
                <br/>
                <br/>
                <h2 style="color:#1da0d1;">Our Sponsors</h2>
                <br/>
                <a href="${resource(dir:'images', file:'sponsorship.pdf')}">Sponsorship Options Available</a>
                <br/><br/>
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
