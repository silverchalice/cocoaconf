<%--
  Created by IntelliJ IDEA.
  User: zak
  Date: 4/1/11
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Cocoaconf | iOS/OS X Developer Conference | Columbus, Ohio | August 12 & 13</title>
      <meta name="layout" content="public" />
        <meta name="tab" content="about" />
      <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

      <script src="${resource(dir:'js', file:'jquery-1.5.1.min.js')}" type="text/javascript"></script>

      <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
      <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
      <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAAUBuwYLt8MoHV8G-JyWegDxTedV6jzRPejGhJGvcW1KcUcMdW1RS2Dxifye3ZKPwd2B2Sx7KUnQeZrw" type="text/javascript"></script>
	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-23159724-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();


	</script>

      <style type="text/css">
        strong, h3 {
            color:#2ab0e2;
        }

        a {
            color:#2ab0e2;
            text-decoration: none;
            font-weight: bold
        }
      </style>



  </head>

  <body>
  <br/>
   <h2>Coming to Raleigh, North Carolina!</h2>

   <p>We are excited to announce the second CocoaConf iPhone, iPad and Mac developer's conference, Coming to Raleigh, North Carolina. We're working hard to bring you a first class line up of speakers, authors and professional iOS/OS X developers, delivering quality content without the distraction of a vendor hall or marketecture sessions. This is a technical conference, pure and simple.  </p>
   <p>If you're new to iOS development spend the first day of CocoaConf in <g:link controller="session" action="details" id="4">Chris Judd's iOS tutorial</g:link>, or choose from an impressive selection of iOS or OS X dev sessions.
	  If you want to catch the tutorial but don't wan't to miss a whole day of the conference, you can sign <g:link controller="home" action="register">register</g:link> for the pre-conference edition.  The same all day, soup to nuts, hands-on workshop but on Thursday 12/1, so you can still attend both days of CocoaConf too.</p>
   <p>Our first event in Columbus, Ohio was a huge success.  Check out <g:link controller="blogLink" action="roundup">some impressions from our Columbus attendees.</g:link> </p>
   <p>If you have any questions, you can contact us at <a href="mailto:info@cocoaconf.com">info@cocoaconf.com</a></p>

  <h2>Location & Venue</h2>
  <p><img src="${resource(dir:'images', file:'crown-1.png')}" style="float:left; margin:0 10px 10px 0" />Cocoaconf will be held at the beautiful <a href="http://www.brownstonehotel.com">Holiday Inn Brownstone</a> in Downtown Raleigh. They're offering a special rate of <strong>$92 per night for CocoaConf attendees</strong>. Just call <span class="address">(919) 828-0811</span> and tell them that you are attending CocoaConf.</p>

  <div style="border: 1px solid black; clear:both">
      <iframe width="700" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?client=safari&amp;oe=UTF-8&amp;ie=UTF8&amp;q=Holiday+Inn+Brownstone+Hotel+%26+Conference+Center+1707+Hillsborough+Street+-+Raleigh,+NC+27605&amp;fb=1&amp;gl=us&amp;hq=Holiday+Inn+Brownstone+Hotel+%26+Conference+Center&amp;hnear=0x89acf589791461b3:0x9ca31f49b57c8195,1707+Hillsborough+St,+Raleigh,+NC+27605&amp;cid=0,0,4496351436938884812&amp;ll=35.785008,-78.659985&amp;spn=0.006295,0.006295&amp;t=m&amp;vpsrc=0&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?client=safari&amp;oe=UTF-8&amp;ie=UTF8&amp;q=Holiday+Inn+Brownstone+Hotel+%26+Conference+Center+1707+Hillsborough+Street+-+Raleigh,+NC+27605&amp;fb=1&amp;gl=us&amp;hq=Holiday+Inn+Brownstone+Hotel+%26+Conference+Center&amp;hnear=0x89acf589791461b3:0x9ca31f49b57c8195,1707+Hillsborough+St,+Raleigh,+NC+27605&amp;cid=0,0,4496351436938884812&amp;ll=35.785008,-78.659985&amp;spn=0.006295,0.006295&amp;t=m&amp;vpsrc=0&amp;iwloc=A&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>
  </div>
  </body>
</html>
