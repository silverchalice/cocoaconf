

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
                $('#gallery').corner('5px');
                $('#about').corner('5px');

                var dc = new flickrshow('dc', {
                    autoplay:true,
                    interval:5000,
                    'set':'72157630420867714'
                });

                var portland = new flickrshow('portland', {
                    autoplay:true,
                    interval:5000,
                    'set':'72157630420867714'
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

		<h1>CocoaConf PDX 2012 Wrap Up!</h1>
        <div class="flickrGallery" id="portland">
            <p>Please enable Javascript to view this slideshow</p>
        </div>

        <g:each in="${pdxBlogLinks}" var="link">
            <div class="blogLink">
                <h4>${link.title}</h4>
                <p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
            </div>
        </g:each>

        <h1>CocoaConf DC 2012 Wrap Up!</h1>
        <div class="flickrGallery" id="robin">
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
