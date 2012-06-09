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
      <title>CocoaConf | iOS/OS X Developer Conference | Washington DC Area | June 29 & 30, 2012</title>
      <meta name="layout" content="conference" />
      <meta name="tab" content="events" />
      <meta name="nav" content="venue" />
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

  </head>

  <body>

  <br/>
  <h2>${conference?.venue?.name}</h2>
  ${conference?.venue?.description}
 <br/>
 <br/>
    ${conference?.venue?.googleMapsCode}
  </body>
</html>
