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

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23131242-2']);
  _gaq.push(['_setDomainName', '.cocoaconf.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>


      <script type="text/javascript">
         $(document).ready(function() {
            $("#dialog").dialog({ autoOpen: false, width:300, modal: true, title: 'Enter your email', hide: "fade", resizable:false, show: "fade" });


              <g:if test="${flash.message}">
                $("#flashMessage").dialog({ autoOpen: true, title: 'Thank you!', width:300, modal: true, resizable:false, show: "fade", hide: "fade"});
                $("#closeFlash").click(function(){
                    $("#flashMessage").dialog("close");
                });
              </g:if>


            $(".openDialog").click(function() {
                $("#dialog").dialog('open');
            });


            $('.button').button();

            $('#dialogButton').button();

            $('#register').button();

            $("#interestForm").validate();

         });


      </script>

      <style type="text/css">

          #announcement .ui-widget-header {
              background:none;
              border:0;
          }

          .button {
              font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
              font-size:17px;
              margin-left:150px;
              margin-top:15px;
          }


          #closeFlash {
              font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
              font-size:15px;
              margin-left:25px;
              margin-top:5px;
          }
      </style>
  </head>

  <body>

  <g:if test="${flash.message}">
      <div id="flashMessage"><p>You will be notified as soon as registration opens. See you there!</p>
       <span class="button" id="closeFlash" >Ok!</span>
      </div>
  </g:if>
  <p>
     <img src="${resource(dir:'images', file:'mac-app-store.png')}" id="appstore"/><strong style="font-size:16px;">With the current explosive growth of interest in iOS and OS X software</strong>, there's never been a better time to develop for these exciting platforms.  And there's never been a more affordable, easily accessible conference to help you sharpen your skills and learn about the latest tools and libraries for iOS and Mac programming.
  </p>
  <p>
    <h3 style="font-size:13px;">Columbus, OH | August 12-13</h3>
  </p>
  <g:link controller="home" action="register" class="button" style="font-weight:bold;">Early Bird Registration open now!</g:link>

  <div class="clear">&nbsp;</div>
  <img src="${resource(dir:'images', file:'xcode.png')}"  id="xcode"/>
  <div id="glossy-box"><h3>Cocoaconf is a technical conference, pure and simple.</h3> <p>Instead of vendor booths or vendor keynotes, you'll find:</p>

       <p style="border-bottom: 1px dotted gray">In-depth technical sessions.</p>
       <p style="border-bottom: 1px dotted gray">Multiple concurrent tracks.</p>
       <p style="border-bottom: 1px dotted gray"><strong style="color:#2ab0e2; font-size: 14.5px;">Full-day, hands-on iOS workshop.</strong></p>
       <p style="border-bottom: 1px dotted gray">Fun and informative speaker panel!</p>
       <p style="border-bottom: 1px dotted gray">And much more!</p>
   </div>

    <!--  <span style="font-size:16px; margin-right:45px;">Cocoa Touch</span>
      <span style="font-size:18px; margin-right:15px;">iTunes</span>
      <span style="font-size:18px; margin-right:70px;">Lion</span>
      <span style="font-size:14px; margin-right:62px;">Core Animation</span>
      <span style="font-size:18px;">XCode 4</span>

       <br/>
      <span style="font-size:32px; margin-left:145px;">iOS</span>
      <span style="font-size:32px; margin-left:90px;">OS X</span>
      <span style="font-size:16px; margin-left:125px;">Quicktime</span>


      <br/>
      <span style="font-size:18px; margin-left:20px;">Objective C</span>
      <span style="font-size:14px; margin-left:30px;">Quartz</span>
      <span style="font-size:14px; margin-left:30px;">Core Audio</span>
      <span style="font-size:18px; margin-left:100px;">App Store</span>

      <span style="font-size:14px; margin-left:70px;">Core Data</span>-->

	<div id="featuredSpeakers"><h2>Featured Speakers</h2>
        <div class="featured">
            <img src="${resource(dir:'images',file:'adamson.png')}"/>
		     <p><strong>Chris Adamson</strong> - Author of <a href="http://www.amazon.com/Core-Audio-Kevin-Avila/dp/0321636848">Core Audio</a>, and <a href="http://pragprog.com/titles/amiphd/iphone-sdk-development">iPhone SDK Development</a>
            <a href="http://www.subfurther.com/blog">http://www.subfurther.com/blog</a></p>
            
        </div>
         <div class="featured">
            <img src="${resource(dir:'images',file:'dudney.png')}"/>
	    	<p><strong>Bill Dudney</strong> - Author of Pragmatic Programmer’s books <a href="http://pragprog.com/titles/amiphd/iphone-sdk-development">iPhone SDK Development</a> and <a href="http://pragprog.com/titles/bdcora/core-animation-for-mac-os-x-and-the-iphone">Core Animation</a>.
            <a href="http://www.juddsolutions.com">http://www.bill.dudney.net</a></p>

        </div>
        <div class="featured">
            <img src="${resource(dir:'images',file:'judd.png')}"/>
		    <p><strong>Christopher Judd</strong> - Leader of <a href="http://groups.google.com/group/cidug?pli=1">Columbus iPhone Developer User Group</a> and author of <a href="http://www.beginninggroovyandgrails.com/site/content/index">Beginning Groovy and Grails</a>
            <a href="http://www.juddsolutions.com">http://www.juddsolutions.com</a></p>

        </div>
        <div class="featured">
            <img src="${resource(dir:'images',file:'stein.png')}"/>
            <p><strong>Daniel Steinberg</strong> - Author of <a href="http://pragprog.com/titles/sfipad/ipad-programming">iPad Programming</a> and <a href="http://pragprog.com/titles/dscpq/cocoa-programming">Cocoa Programming</a>:
            A Quick-Start Guide for Developers <a href="http://dimsumthinking.com">http://dimsumthinking.com</a></p>
        </div>

    </div>




  </body>
</html>
