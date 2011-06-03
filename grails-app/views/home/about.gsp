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
      <meta name="layout" content="announcement" />

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
        html {
            font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
            font-size: 14px;
        }
      </style>



  </head>

  <body>
   <h1>Coming to Columbus, Ohio!</h1>

   <p>We are excited to introduce the first Cocoaconf iPhone, iPad and Mac developer's conference, beginning August 3-4 in Columbus Ohio. We're working hard to bring you a first class line up of speakers, authors and professional iOS/OS X developers, delivering quality content without the noise of a vendor hall and salespeople. This is a technical conference, pure and simple.   </p>

   <h3>Super Early Bird registration is now open!</h3>
  <p>You can save 50% by <g:link controller="home" action="register">registering</g:link> before June 22!</p>
  <h2>Location & Venue</h2>
  <p><img src="${resource(dir:'images', file:'crown-1.png')}" style="float:left; margin:0 10px 10px 0" />Cocoaconf will be tenatively held at the beautiful Crown Place in Dublin Ohio. <strong>Please do not make reservations just yet!</strong> We're still ironing out the details, and we'll be sure to let you know when the venue is made sure.</p>

  <iframe width="700" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=crown+plaza+dublin+OH&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=76.152164,187.119141&amp;ie=UTF8&amp;hq=crown+plaza&amp;hnear=Dublin,+Franklin,+Ohio&amp;cid=6419903013813604625&amp;ll=40.107225,-83.128052&amp;spn=0.131294,0.240669&amp;z=12&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=crown+plaza+dublin+OH&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=76.152164,187.119141&amp;ie=UTF8&amp;hq=crown+plaza&amp;hnear=Dublin,+Franklin,+Ohio&amp;cid=6419903013813604625&amp;ll=40.107225,-83.128052&amp;spn=0.131294,0.240669&amp;z=12&amp;iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>

  </body>
</html>
