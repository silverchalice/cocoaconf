<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'public.css')}" />
        <meta name="tab" content="events" />

        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:javascript library="jquery" plugin="jquery"/>
        <feed:meta kind="atom" version="1.0" controller="post" action="feed"/>
        <g:layoutHead />


        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>

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

          $(document).ready(function(){

              $(".conferenceCell").hover(
                function () {
                  $(this).addClass("conferenceCellHover");
                },
                function () {
                  $(this).removeClass("conferenceCellHover");
                }
              );

              $(".conferenceCell").corner("5px");
              $(".conferenceCellName").corner("5px bottom");

          })


        </script>
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
                <span><a style="color:#ff9627; text-decoration: none" href="${request.contextPath}/columbus-2012/home">Returning to Columbus, Ohio on August 9 - 11, 2012!</a></span>
            </div>


            <div id="sidebar" style="margin:10px;">

                <h1 style="margin-left: 10px; color: #1da0d1">Upcoming Events</h1>

                <a href="${request.contextPath}/columbus-2012/home">
                <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'columbus.png')}) no-repeat bottom;">
                    <div class="conferenceCellName">Columbus, Ohio - August 9-11</div>
                </div>
                </a>
                <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'raleigh.png')}) no-repeat bottom;">
                    <div class="conferenceCellName">Raleigh, NC - To Be Announced</div>
                </div>
                <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'portland.png')}) no-repeat bottom;">
                    <div class="conferenceCellName">Portland, OR - To Be Announced</div>
                </div>
                <br/>

                <h1 style="margin-left: 10px; color: #1da0d1">Recent Events</h1>

                <a href="${request.contextPath}/dc-2012/home">
                <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'dc.png')}) no-repeat bottom;">
                    <div class="conferenceCellName">Washington DC - June 28-30 <br/>
                    <strong style="font-size:11px">Registration Closed</strong></div>
                </div>
                </a>
                <br/>
                <h2><g:link controller="mugShot" action="list">Our Mug</g:link></h2>
                <g:link controller="mugShot" action="list"><g:img dir="images" file="mugThumb.png" style="width:160px; margin:20px" /> </g:link>
                <br/>
                <h2>Our Sponsors</h2>
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
