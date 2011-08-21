

<%@ page import="com.cocoaconf.BlogLink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <title>CocoaConf Columbus, 2011 Roundup</title>


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

        </style>
    </head>
    <body>
		<div>
			<br />
            <img class="contentLeft" src="${resource(dir:'images/slideshow/slides', file:'slide8.png')}" alt="CocoaConf Colombus 2011" />
            <p>The first CocaaConf was held in Dublin, Ohio on August 12th and 13th. Ninety iPhone, iPad, and Mac developers gathered for two exciting days of training, networking, and good times. With three tracks and sessions ranging from beginner to advanced, there was something for everyone to enjoy and learn from.  During the meals and extended breaks, it was great to see old friends catching up and new friends getting acquainted.  Then when the sessions began, the hallways were empty and silent, save for the occasional outburst of laughter or applause coming from the session rooms.</p>
            <img class="contentRight" src="${resource(dir:'images/slideshow/slides', file:'slide5.png')}" />

            <p>According to attendee feedback, the meal times, the speaker panel, Daniel Steinberg's keynote address, and the exclusive &#8220;We Made an App For That&#8221; session were all big hits.  But the honor of Best Session At CocoaConf went to Bill Dudney's talk on Drawing With Core Graphics.  Way to go, Bill!</p>
			<p>Before, during, and since the conference, speakers and attendees have been blogging about CocoaConf.  So rather than go on and on about how great it was, we'll just let them tell you.</p>
		</div>
		<div>
			<hr /><br />
			<h2>What people are saying about CocoaConf</h2><br />
			<g:each in="${blogLinks}" var="link">
				<div class="blogLink">
					<h4>${link.title}</h4>
					<p>&#8220;${link.snippet}&#8221; <a href="${link.url}">Read more...</a></p>
				</div><br/>
			</g:each>
		</div>
    </body>
</html>
