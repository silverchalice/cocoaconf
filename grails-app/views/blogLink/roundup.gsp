

<%@ page import="com.cocoaconf.BlogLink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="announcement" />
        <title>CocoaConf | iOS/OS X Developer Conference | Washington DC Area | June 29 & 30, 2012</title>
        <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

        <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>

        <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'script.js')}" type="text/javascript"></script>

        <style type="text/css">
            
			.aboutContent {
				width:480px; 
				float:left; 
				padding-left:20px
			}
			
			.aboutContent a {
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

            #gallery, #gallery2{
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
                clear:both;
            }

            #slides, #slides2{
                /* This is the slide area */
                height:272px;

                /* jQuery changes the width later on to the sum of the widths of all the slides. */
                width:420px;
                overflow:hidden;
            }

            .slide{
                float:left;
            }

            #menu, #menu2{
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

        </style>
    </head>
    <body>
        <div class="aboutContent">
            <h1 style="color:#1da0d1;">Announcing CocoaConf DC!</h1>
            <p><g:img dir="images" file="cpdulles.png" style="float:left; width:180px; margin-right: 10px" /> 
CocoaConf is a focused two day, three track conference for iOS and OS X developers, with an optional  <a href="/session/details/55">pre-conference iOS tutorial</a>.  Our speakers are some of the best authors, trainers, and consultants in the field and they all have a passion for passing on their knowledge and experience to others.  That's where you come in.  We are looking for 100 app developers (or aspiring app developers) who are as eager to learn and grow as our speakers are to teach.  If app development is more than just a job for you, then you'll want to be at this conference.</p>
<p>Rather than one big conference per year, CocoaConf has multiple smaller events each year. By capping attendance at 100 we are able to maximize the learning and networking potential of each event.  This also allows us to bring CocoaConf closer to our attendees.  So far we've been to Columbus OH, Raleigh NC, Chicago IL, and now we're coming to the Washington DC area.  <strong>This June 28 - 30, we will be in Herndon, VA</strong> for our fourth CocoaConf!  <g:link controller='home' action='register'>Early-bird registration is now open</g:link> while we finalize our schedule.</p>
<p>You can check out our preliminary <g:link controller="speaker" action='speakers'>speaker</g:link> and <g:link controller='session' action='sessions'>session</g:link> lists to see who's coming so far.  You can also get a feel for what CocoaConf is like by browsing the photos and blog posts about past events below.  Or you can just skip all that and <g:link controller='home' action='register'>register</g:link>.  Our Chicago event sold out and we expect this one to also.  We'd hate for you to miss out on this exciting training opportunity.</p>

            <br/>
            <h1 style="color:#1da0d1;">Chicago 2012 Wrap Up!</h1>
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
            <br/><br/>
            <h1 style="color:#1da0d1;">Raleigh 2011 Wrap Up!</h1>
            <img src="${resource(dir:'images/slideshow/slides', file:'raleigh1.JPG')}" width="420" height="272" alt="side" style="clear: both; margin-right:15px" />

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
            <img src="${resource(dir:'images/slideshow/slides', file:'slide2.png')}" width="420" height="272" alt="side" style="clear: both; margin-right:15px" />
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

        </div>

    <div id="featuredSpeakers">
            <h2 style="color:#1da0d1;">Featured Speakers</h2>
            <div class="featured">
               <img src="${resource(dir:'images',file:'stein.png')}"/>
               <p><strong>Daniel Steinberg</strong> - Author of <a href="http://pragprog.com/titles/sfipad/ipad-programming">iPad Programming</a> and <a href="http://pragprog.com/titles/dscpq/cocoa-programming">Cocoa Programming:
               A Quick-Start Guide for Developers</a> - <a href="http://dimsumthinking.com">http://dimsumthinking.com</a></p>
           </div>

            <!-- <div class="featured">
               <img src="${resource(dir:'images',file:'dudney.png')}"/>
               <p><strong>Bill Dudney</strong> - Author of Pragmatic Programmer’s books <a href="http://pragprog.com/titles/adios">iPhone SDK Development</a> and <a href="http://pragprog.com/titles/bdcora/core-animation-for-mac-os-x-and-the-iphone">Core Animation</a>.
                - <a href="http://bill.dudney.net">http://bill.dudney.net</a></p>
                                                                                                                                                                                                             c
           </div>-->
            <div class="featured">
                <img src="${resource(dir:'images',file:'adamson.png')}"/>
                 <p><strong>Chris Adamson</strong> - Author of <a href="http://www.amazon.com/Core-Audio-Kevin-Avila/dp/0321636848">Core Audio</a>, and <a href="http://pragprog.com/titles/adios">iPhone SDK Development</a>
                - <a href="http://www.subfurther.com/blog">http://www.subfurther.com/blog</a></p>

            </div>
            <!--

            <div class="featured">                                                                              ˝
                <img src="${resource(dir:'images',file:'biggus.png')}"/>
                <p><strong>Jeff Biggus</strong> - Founder of HyperJeff, Inc. and curator of the <a href="http://hyperjeff.net">HyperJeff Network</a>.</p>

            </div> -->

        <div class="featured">
            <img src="${resource(dir:'images',file:'dalrymple.png')}"/>
            <p><strong>Mark Dalrymple</strong> -Author of <a href="http://www.amazon.com/Learn-Objective-C-Mac-Series/dp/1430218150/ref=sr_1_1?ie=UTF8&qid=1332723002&sr=8-1">Learn Objective-C on the Macintosh</a> and <a href="http://www.amazon.com/Advanced-Mac-OS-Programming-Guides/dp/0321706250/ref=sr_1_1?s=books&ie=UTF8&qid=1332723031&sr=1-1">Advanced Mac OS X Programming</a>.</p>

        </div>

            <div class="featured">
                <img src="${resource(dir:'images',file:'judd.png')}"/>
                <p><strong>Christopher Judd</strong> - Leader of <a href="http://groups.google.com/group/cidug?pli=1">Columbus iPhone Developer User Group</a> and author of <a href="http://www.beginninggroovyandgrails.com/site/content/index">Beginning Groovy and Grails</a>
                <a href="http://www.juddsolutions.com">http://www.juddsolutions.com</a></p>

            </div>

         </div>


    </body>
</html>
