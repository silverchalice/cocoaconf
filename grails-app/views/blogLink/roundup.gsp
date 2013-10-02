

<%@ page import="com.cocoaconf.BlogLink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
        <meta name="tab" content="home" />
        <title>CocoaConf | iOS/OS X Developer Conference</title>
        <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

        <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'flickrshow-7.2.min.js')}" type="text/javascript"></script>
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

                var sanjose = new flickrshow('sanjose', {
                    autoplay:true,
                    interval:5000,
                    'set':'72157633396616932'
                });

                var portland = new flickrshow('portland', {
                    autoplay:true,
                    interval:5000,
                    'set':'72157635187685973'
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



		<g:each in="${blurbs}" var="blurb">
			<div class="blurb">
		    	${blurb.blurb}
			</div>
		</g:each>

        <h1>CocoaConf San Jose 2013 Wrap Up!</h1>
        <div class="flickrGallery" id="sanjose">
            <p>Please enable Javascript to view this slideshow</p>
        </div>

        <g:each in="${sjBlogLinks}" var="link">
            <div class="blogLink">
                <h4>${link.title}</h4>
                <p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
            </div>
        </g:each>

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

    <h1>CocoaConf PDX 2013 Wrap Up!</h1>
    <div class="flickrGallery" id="portland">
        <p>Please enable Javascript to view this slideshow</p>
    </div>

    <g:each in="${pdxBlogLinks}" var="link">
        <div class="blogLink">
            <h4>${link.title}</h4>
            <p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
        </div>
    </g:each>

    </body>
</html>
