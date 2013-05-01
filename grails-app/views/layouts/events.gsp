<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title><g:layoutTitle default="Grails" /></title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'public.css')}" />
    <meta name="tab" content="events" />

    <g:render template="/layouts/favicons" />
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
            $(".featured img").corner("8px");

        })


    </script>

    <style type="text/css">
    .featured img {
        width: 120px;
        border: 1px solid #eee;
    }
    </style>

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
        <img src="${resource(dir:'images',file:'cc-logo.png')}" alt="CocoaConf - the conference for iPhone, iPad and Mac developers" border="0" />
        the conference for <span>iPhone</span>, <span>iPad</span> and <span>Mac</span> developers
    </a>
    </div>
    <div id="announcementHeader">
        <g:render template="/layouts/announcement_bar" />
    </div>

    <div id="sidebar" style="margin: 0 10px;">
        <h1 style="margin-left: 10px;">Past Events</h1>

        <a href="${request.contextPath}/raleigh-2012/home">
            <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'raleigh.jpg')}) no-repeat bottom;">
                <div class="conferenceCellName">Raleigh, NC - November 29 - Dec 1</div>
            </div>
        </a>

        <a href="${request.contextPath}/portland-2012/home">
            <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'portland.png')}) no-repeat bottom;">
                <div class="conferenceCellName">Portland, OR - October 25-27</div>
            </div>
        </a>

        <a href="${request.contextPath}/columbus-2012/home">
            <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'columbus.png')}) no-repeat bottom; margin-bottom: 30px;">
                <div class="conferenceCellName">Columbus, Ohio - August 9-11</div>
            </div>
        </a>
        <a href="${request.contextPath}/dc-2012/home">
            <div class="conferenceCell" style="background: url(${resource(dir: 'images', file:'dc.png')}) no-repeat bottom;">
                <div class="conferenceCellName">Washington DC - June 28-30 <br/>
                    <strong style="font-size:11px">Registration Closed</strong></div>
            </div>
        </a>

    </div>

    <div id="content" style="width: 920px">
        <div class="body" style="width: 640px; margin: 0"><g:layoutBody /></div>
        <div style="clear: both"></div>
    </div>
    <div style="clear: both"></div>
    <div id="footer">
        <p>Copyright &copy; 2013 Simply Cocoa, LLC. Site by <a href="http://silver-chalice.com">Silver Chalice</a>, LLC.</p>
    </div>
</div>
</body>
</html>
