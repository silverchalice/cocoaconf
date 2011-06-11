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

      $(document).ready(function() {
            $('select').selectmenu();
      })

	</script>

      <style type="text/css">
        html {
            font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
            font-size: 14px;
        }
      </style>

  </head>

  <body>
   <h1>Bring Cocoaconf to your area!</h1>

  <p>We're eager to setup a Cocoaconf show </p>

  <div style="background: url(${resource(dir:'images', file:'map.png')}) no-repeat; height:400px; width:720px">

      <div style="background: url(${resource(dir:'images', file:'box-bg.png')}); width:310px; height: 180px; padding:30px; margin:50px 0 0 150px">
         <g:form controller="locationRequest" action="saveRequest">

           <lable for="email">Email:</lable>
           <g:textField name="email"/><br/>

           <lable for="city">City:</lable>
           <g:textField name="city"/><br/>

            <lable for="state">State:</lable>
           <g:select name="state" from="${states}"/>


       </g:form>
      </div>


  </div>


  </body>
</html>
