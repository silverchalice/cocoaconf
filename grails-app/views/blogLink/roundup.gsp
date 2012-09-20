

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

                var robin = new flickrshow('robin', {
                    autoplay:true,
                    interval:5000,
                    'set':'72157630420867714'
                });

            })

        </script>

        <style type="text/css">

            /* Gallery styles */

            #gallery {
                /* CSS3 Box Shadow */
                -moz-box-shadow:0 0 3px #AAAAAA;
                -webkit-box-shadow:0 0 3px #AAAAAA;
                box-shadow:0 0 3px #AAAAAA;

                /* CSS3 Rounded Corners */

                -moz-border-radius-bottomleft:4px;
                -webkit-border-bottom-left-radius:4px;
                border-bottom-left-radius:4px;

                -moz-border-radius-bottomright:4px;
                -webkit-border-bottom-right-radius:4px;
                border-bottom-right-radius:4px;

                border:1px solid white;

                background:url(../images/slideshow/panel.jpg) repeat-x bottom center #ffffff;

                /* The width of the gallery */
                width:400px;
                overflow:hidden;
                margin: 5px 0 10px 0;
                clear:both;
            }

            #slides {
                /* This is the slide area */
                height:272px;

                /* jQuery changes the width later on to the sum of the widths of all the slides. */
                width:420px;
                overflow:hidden;
            }

            .slide{
                float:left;
            }

            #menu {
                /* This is the container for the thumbnails */
                height:45px;
                text-align: center;
                display: none;
            }

            ul{
                margin:0px;
                padding:0px;
            }

            #menu li {
                /* Every thumbnail is a li element */
                width:60px;
                display:inline-block;
                list-style:none;
                height:45px;
                overflow:hidden;
            }

            #menu li.inact:hover{
                /* The inactive state, highlighted on mouse over */
                background:url(../images/slideshow/pic_bg.png) repeat;
            }

            #menu li.act,li.act:hover{
                /* The active state of the thumb */
                background:url(../images/slideshow/active_bg.png) no-repeat;
            }

            #menu li.act a{
                cursor:default;
            }

            .fbar{
                /* The left-most vertical bar, next to the first thumbnail */
                width:2px;
                background:url(../images/slideshow/divider.png) no-repeat right;
            }

            #menu li a{
                display:block;
                background:url(../images/slideshow/divider.png) no-repeat right;
                height:35px;
                padding-top:10px;
            }

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

        <h1>Chicago 2012 Wrap Up!</h1>
        <div id="gallery">

            <div id="slides">
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago1.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago2.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago3.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago4.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago5.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago6.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago7.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago9.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago10.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago11.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago12.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago13.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago15.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago16.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago17.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago18.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago19.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago20.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago21.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago22.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago23.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago24.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago25.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago26.JPG')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'chicago27.JPG')}" width="420" height="272" alt="side" /></div>
            </div>

            <div id="menu">
                <ul>
                    <li class="fbar">&nbsp;</li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_about.png')}" alt="thumbnail" /></a></li>
                </ul>
            </div>
        </div>
        <p>We recently held our third and, arguably, best CocoaConf event in the Chicago area.  We brought together 100 attendees and 17 speakers all with an intense desire to learn and grow as developers and as a community.  The energy was amazing.</p>
        <p>If you were there, thank you!  You helped make this event awesome.  If you weren't there, bummer.  Maybe next time.  :-)  For now, you can at least read what some of our attendees and speakers had to say about it.</p>

        <hr /><br />
        <h2>What people are saying about CocoaConf-Chicago</h2><br />
        <g:each in="${chicagoLinks}" var="link">
            <div class="blogLink">
                <h4>${link.title}</h4>
                <p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
            </div>
        </g:each>

    </body>
</html>
