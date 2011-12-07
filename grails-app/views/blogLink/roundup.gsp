

<%@ page import="com.cocoaconf.BlogLink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <title>CocoaConf Columbus, 2011 Roundup</title>
        <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

        <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>

        <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'script.js')}" type="text/javascript"></script>

        <style type="text/css">
            a {
                color:#2ab0e2;
                text-decoration: none;
                font-weight: bold
            }

            img.contentLeft {
                float:left;
                margin-right:10px;
                margin-top:20px;
                width:180px;
            }

            img.contentRight {
                float:right;
                margin-left:10px;
                width:180px;
            }
            /* Gallery styles */

            #gallery{
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
                width:420px;
                overflow:hidden;
                margin: 5px 0 10px 20px;
                float:right;
            }

            #slides{
                /* This is the slide area */
                height:272px;

                /* jQuery changes the width later on to the sum of the widths of all the slides. */
                width:420px;
                overflow:hidden;
            }

            .slide{
                float:left;
            }

            #menu{
                /* This is the container for the thumbnails */
                height:45px;
                text-align: center;
                display: none;
            }

            ul{
                margin:0px;
                padding:0px;
            }

            #menu li{
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


        </style>
    </head>
    <body>

        <h1 style="color:#1da0d1;">Raleigh 2011 Wrap Up!</h1>
        <div id="gallery">

            <div id="slides">

                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide1.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide2.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide3.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide4.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide5.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide6.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide7.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide8.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide9.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide10.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide11.png')}" width="500" height="272" alt="side" /></div>
            </div>

            <div id="menu">
                <ul>
                    <li class="fbar">&nbsp;</li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_macbook.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_iphone.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_imac.png')}" alt="thumbnail" /></a></li>
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
        <p>The second CocoaConf was held in Raleigh, North Carolina on December 2nd and 3rd. Over seventy iPhone, iPad, and Mac developers met up for two days packed with in-depth technical content. With fourteen excellent speakers and three tracks, it was often difficult to decide what to attend, but the tough choices paid off with great ideas, new insights and renewed motivation.</p>
        <p>Though the turnout was a bit smaller than Columbus in August, what the Raleigh crowd lacked in size, they more than made up in energy!  Attendees were attentive, engaged, and involved. The enthusiasm was contagious!  Though, some say that the lack of wifi helped people to focus more on the presentations, we like to think it was the stunning performances of our speakers.  :-)  </p>
        <p>We repeated the popular &#8220;We Made an App For That&#8221; session and added a keynote by hometown hero, Andy Hunt.  We had a few repeat sessions from our last event, including the most popular session in Columbus, Bill Dudney's talk on Core Graphics.  We also had several new speakers and presentations.  The most popular talk in Raleigh was a new one by Daniel Steinberg, on developing with Storyboards.  The runner-up was Accelerate by Jeff Biggus.</p>
        <p>The attendee response at the event was great.  They made us feel so welcome that we are already planning a return trip next year.  Let's see what some of these attendees have to say about CocoaConf-Raleigh:</p>

        <hr /><br />
        <h2>What people are saying about CocoaConf-Raleigh</h2><br />
        <g:each in="${raleighLinks}" var="link">
            <div class="blogLink">
                <h4>${link.title}</h4>
                <p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
            </div>
        </g:each>
<br/><br/>
        <h1 style="color:#1da0d1;">Columbus 2011 Wrap Up!</h1>
        <div id="gallery">

            <div id="slides">

                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide1.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide2.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide3.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide4.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide5.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide6.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide7.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide8.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide9.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide10.png')}" width="420" height="272" alt="side" /></div>
                <div class="slide"><img src="${resource(dir:'images/slideshow/slides', file:'slide11.png')}" width="500" height="272" alt="side" /></div>
            </div>

            <div id="menu">
                <ul>
                    <li class="fbar">&nbsp;</li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_macbook.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_iphone.png')}" alt="thumbnail" /></a></li>
                    <li class="menuItem"><a href=""><img src="${resource(dir:'images/slideshow/sample_slides', file:'thumb_imac.png')}" alt="thumbnail" /></a></li>
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
        <p>The first CocoaConf was held in Dublin, Ohio on August 12th and 13th. Ninety iPhone, iPad, and Mac developers gathered for two exciting days of training, networking, and good times. With three tracks and sessions ranging from beginner to advanced, there was something for everyone to enjoy and learn from.  During the meals and extended breaks, it was great to see old friends catching up and new friends getting acquainted.  Then when the sessions began, the hallways were empty and silent, save for the occasional outburst of laughter or applause coming from the session rooms.</p>

        <p>According to attendee feedback, the meal times, the speaker panel, Daniel Steinberg's keynote address, and the exclusive &#8220;We Made an App For That&#8221; session were all big hits.  But the honor of Best Session At CocoaConf went to Bill Dudney's talk on Drawing With Core Graphics.  Way to go, Bill!</p>
        <p>Before, during, and since the conference, speakers and attendees have been blogging about CocoaConf.  So rather than go on and on about how great it was, we'll just let them tell you.</p>

        <hr /><br />
        <h2>What people said about CocoaConf - Columbus</h2><br />
        <g:each in="${columbusLinks}" var="link">
            <div class="blogLink">
                <h4>${link.title}</h4>
                <p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
            </div>
        </g:each>


    </body>
</html>
