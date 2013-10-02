<html><head>
    <title>DroidConf | Android Developer Conference</title>
    <link rel="stylesheet" href="/css/public_droid.css">
    <meta name="tab" content="events">

    <meta name="layout" content="blank"/>

    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/images/apple-touch-icon-144x144-precomposed.png">

    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/images/apple-touch-icon-114x114-precomposed.png">

    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/images/apple-touch-icon-72x72-precomposed.png">

    <link rel="apple-touch-icon-precomposed" href="/images/apple-touch-icon-precomposed.png">


    <script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script><script src="/plugins/jquery-1.7.2/js/jquery/jquery-1.7.2.min.js" type="text/javascript" library="jquery"></script>

    <link rel="alternate" type="application/atom+xml" title="Atom 1.0" href="/feed">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="tab" content="home">

    <link href="/css/custom/jquery-ui-1.8.11.custom.css" rel="stylesheet" type="text/css">
    <link href="/js/jquery-simplyscroll-2/jquery.simplyscroll.css" rel="stylesheet" type="text/css">

    <script src="/js/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="/js/jquery/marquee.js" type="text/javascript"></script>
    <script src="/js/script.js" type="text/javascript"></script>
    <script src="/js/flickrshow-7.2.min.js"></script>
    <script src="/js/jquery-ui-1.8.11.custom.min.js" type="text/javascript"></script>
    <script src="/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/js/script.js" type="text/javascript"></script>


    <script type="text/javascript" src="/js/jquery.corner.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {

            $('.conferenceHeadlineImage').corner('5px');
            $('#gallery').corner('5px');
            $('#about').corner('5px');
            $('#message').corner('10px');

            $("a").attr("href", "/")


        })

    </script>

    <style type="text/css">

    a img{
        border:none;
    }

    .flickrGallery {
        width: 420px; height: 310px
    }

    .blogLink {
        width:640px;
    }

    </style>



    <script type="text/javascript" src="/js/jquery.corner.js"></script>

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
            $("#about").corner("15px");
            $(".conferenceCellName").corner("5px bottom");
            $(".featured img").corner("8px");

            $('#slogan').show().marquee();

        })


    </script>

    <style type="text/css">
    .featured img {
        width: 120px;
        border: 1px solid #eee;
    }
    </style>

    <style> .tweet .action-buffer-container i, .tweet.opened-tweet .action-buffer-container i, .tweet.opened-tweet.hover .action-buffer-container i  { background-position: -3px -3px !important; } .tweet .action-buffer-container i { background-position: -3px -21px !important; }</style></head>
<body id="announcement">
<div id="navWrapper">
    <div id="nav">
        <a href="/" class="current">Home</a>
        <a href="/blog" class="">Blog</a>
        <a href="/speakers" class="">Our Speakers</a>
        <a href="/partners" class="">Our Partners</a>
        <a href="/events" class="" style="background-position: -500px 0;">Events</a>
    </div>

</div>
<div id="page">
    <div id="spinner" class="spinner" style="display:none;">
        <img src="/images/spinner.gif" alt="Loading...">
    </div>
    <div id="logo"><a href="#">
        <img src="/images/dc-logo.png" alt="CocoaConf - the conference for iPhone, iPad and Mac developers" border="0">   </a>
        <div id="slogan"  style="overflow: scroll; height: 19px; width:960px; margin: 0 auto; overflow-y: hidden" >
            <div>
                the conference for <span>LG Nexus 4</span>, <span>HTC One</span>, <span>Samsung Galaxy S3 and S4 and Note and Note 2 and Note 8 and Note 10</span>, <span>Sony Xperia Z & Xperia ZL</span>,  <span>Motorola Droid RAZR MAXX HD</span>, <span>Google Nexus 7 and 10</span>, and <span>Toshiba AT300</span> developers
                &nbsp;
                &nbsp;
                &nbsp;
                the conference for <span>LG Nexus 4</span>, <span>HTC One</span>, <span>Samsung Galaxy S3 and S4 and Note and Note 2 and Note 8 and Note 10</span>, <span>Sony Xperia Z & Xperia ZL</span>,  <span>Motorola Droid RAZR MAXX HD</span>, <span>Google Nexus 7 and 10</span>, and <span>Toshiba AT300</span> developers
                &nbsp;
                &nbsp;
                &nbsp;
                the conference for <span>LG Nexus 4</span>, <span>HTC One</span>, <span>Samsung Galaxy S3 and S4 and Note and Note 2 and Note 8 and Note 10</span>, <span>Sony Xperia Z & Xperia ZL</span>,  <span>Motorola Droid RAZR MAXX HD</span>, <span>Google Nexus 7 and 10</span>, and <span>Toshiba AT300</span> developers
         </div>
        </div>

    </div>

    <div id="content">

        <div id="right_container">
            <div id="about">
                <p style="font-weight: bold"><span style="color:#3BCE00;">DroidConf</span> brings a plethora of practical advice and timely insights to Android developers of any skill level, kernel version or screen size, including:</p>
                <ul style="list-style:circle">
                    <li style="margin-bottom:15px;">Android For iOS Developers.</li>
                    <li style="margin-bottom:15px;">Spice Up Your Java With XML.</li>
                    <li style="margin-bottom:15px;">Eclipse: It Really Is An IDE.</li>
                    <li style="margin-bottom:15px;">Innovation Is Overrated.</li>
                    <li style="margin-bottom:15px;">Designing For The Least Common Denominator</li>
                    <li style="margin-bottom:15px;">Bodybuilding With The Galaxy Note.</li>
                </ul>
                <p>And be sure to join us for our exclusive developer show-and-tell panel:</p>
                <ul style="list-style:circle">
                    <li style="margin-bottom:15px"><strong>We Ported An App For That!</strong></li>
                </ul>

                <br>
            </div>

            <a href="http://twitter.com/cocoaconf"><img src="${resource(dir:'images', file:'follow-droidconf.png')}" style="margin-top: 20px" alt="Follow us on Twitter!"/></a>

        </div>


            <a style="text-decoration: none;" href="/blog/2013-spring-tour"><h1 style="font-size: 52px; line-height: 52px">We&#8217;ve Been Ported!</h1></a>
            <p><img src="${resource(dir:'images', file: 'droidconf-small.png')}" alt="DroidConf" style="float:left; margin-right:8px;"/>
                In light of recent changes in the market &#8212; such as the way Samsung and other manufacturers continue to dominate the smartphone industry, and the way Apple refuses to meet customer demands for larger, more full-featured phones &#8212; it&#8217;s become clear to us that <strong>Android is winning</strong>.</p>  <p>So rather than continue to serve a dying market, we&#8217;ve decided to adapt to the situation.
            </p>
            <p>
                <img style="float:left" src="${resource(dir:'images', file:'android.png')}" alt="" />
                <img style="float:left" src="${resource(dir:'images', file:'android.png')}" alt="" />
                <img style="float:left" src="${resource(dir:'images', file:'android.png')}" alt="" />
                <img style="float:left" src="${resource(dir:'images', file:'droidconf-small-2.png')}" alt="" />
                <img style="float:left" src="${resource(dir:'images', file:'android.png')}" alt="" />
                <img style="float:left" src="${resource(dir:'images', file:'android.png')}" alt="" />
                <img style="float:left" src="${resource(dir:'images', file:'android.png')}" alt="" />

            </p>
            <p>&nbsp;</p>
           <p style="clear: left; padding-top: 15px">
               We are pleased to introduce to you <span style="font-weight: bold; color:#3BCE00;">DroidConf</span>, the conference for Nexus 4 and Galaxy S3 and Xperia Z and Galaxy Note and Galaxy Note II and Galaxy Note 8 and Xperia ZL and Galaxy Note 10 and Galaxy S4 and HTC One and Droid RAZR MAXX HD and Nexus 7 and Nexus 10 and AT300 developers.
           </p>
        <p><img src="${resource(dir: 'images', file: 'samsung-lineup.png')}" alt=""></p>
        <p style="font-size: smaller">(We will update our slogan as additional device profiles are tested for compatibility.)</p>
            <p>&nbsp;</p>


    </div>
    <div style="clear: both"></div>
    <div id="footer">
        <p>Copyright © 2013 Simply Cocoa, LLC.</p>
    </div>
</div>


</body></html>
