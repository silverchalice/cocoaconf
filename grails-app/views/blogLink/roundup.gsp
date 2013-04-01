

<%@ page import="com.cocoaconf.BlogLink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
        <meta name="tab" content="home" />
        <title>CocoaConf | iOS/OS X Developer Conference</title>
        <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

        <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>
        <script src="http://www.flickrshow.co.uk/static/scripts/flickrshow-7.2.min.js"></script>
        <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'script.js')}" type="text/javascript"></script>


        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>

        <script type="text/javascript">
            $(document).ready(function() {

                $('.conferenceHeadlineImage').corner('5px');
                $('#gallery').corner('10px');
                $('#about').corner('10px');
                $('#message').corner('10px');

                var dc = new flickrshow('dc', {
                    autoplay:true,
                    interval:5000,
                    'set':'72157633094975265'
                });

                var portland = new flickrshow('portland', {
                    autoplay:true,
                    interval:5000,
                    'set':'72157631914020050'
                });

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
    </head>
    <body>



    <div id="about" style="float: right; width:230px; background:#eee; padding: 0 10px; margin:50px 15px 0 15px;">
        <h3>CocoaConf is a technical conference, <span style="color:#1da0d1">pure and simple.</span></h3>
        <p>Instead of vendor booths or vendor keynotes, you'll find:</p>
        <ul style="list-style:none">
            <li style="margin-left: 5px;"><strong>In-depth</strong> technical sessions.</li>           
            <li style="margin-bottom:15px; margin-left: 5px;">Multiple <strong>concurrent tracks</strong>.</li>
            <li style="margin-bottom:15px; margin-left: 5px;">Full-day, hands-on <strong>iOS workshop</strong>.</li>
            <li style="margin-bottom:15px; margin-left: 5px;">Fun and informative <strong>speaker panel</strong>.</li>
            <li style="margin-bottom:15px; font-weight: bold">And much more!</li>
        </ul>
        <br/>
    </div>


    <a style="text-decoration: none" href="${request.contextPath}/blog/2013-spring-tour"><h1 style="line-height: 32px">April Fools!</h1></a>
    <a href="${request.contextPath}/blog/2013-spring-tour"><img src="http://cocoaconf.com/images/DSC_0774.JPG" width="420" height="280" /></a><br />
	<p>Don&#8217;t worry &#8212; we&#8217;re not <em>that</em> crazy.  We will continue to gather the best and the brightest in the Apple developer community and bring them close to home for you.</p>
	<p>We still have seats available for our <a href="http://cocoaconf.com/dallas-2013/home">Dallas</a> and <a href="http://cocoaconf.com/sanjose-2013/home">San Jose</a> events coming up this month.</p>
	<p>And today (4/1/13) only, because we&#8217;re feeling a bit foolish, we&#8217;re offering a 20% discount on any ticket. Just use the coupon code <strong>AprilFool</strong> when you register for either the <a href="http://cocoaconf.com/dallas-2013/register">Dallas</a> or <a href="http://cocoaconf.com/sanjose-2013/register">San Jose</a> events!</p>
	<p>&nbsp;</p>


		<h1>CocoaConf DC 2013 Wrap Up!</h1>
        <div class="flickrGallery" id="dc">
            <p>Please enable Javascript to view this slideshow</p>
        </div>

        <g:each in="${dcBlogLinks}" var="link">
            <div class="blogLink">
                <h4>${link.title}</h4>
                <p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
            </div>
        </g:each>

    </body>
</html>
