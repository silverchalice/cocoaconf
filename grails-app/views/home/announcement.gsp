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
      <title>CocoaConf | iOS/OS X Developer Conference | Raleigh, North Carolina | December 2 & 3</title>
      <meta name="layout" content="announcement" />

      <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

      <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>

      <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
      <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
      <script src="${resource(dir:'js', file:'script.js')}" type="text/javascript"></script>

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
              font-size:18px;
              margin-left:200px;
              margin-top:15px;
          }

          a {
              text-decoration: none;
              color:#2ab0e2;
          }

          a:hover {
              text-decoration: underline
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


    <div style="width:480px; float:left; padding-left:20px">
        <g:if test="${flash.message}">
            <div id="flashMessage"><p>${flash.message}</p>
             <span class="button" id="closeFlash" >Ok!</span>
            </div>
        </g:if>

        <h1>Chicago, IL: March 15 - 17, 2012</h1>
        <img src="${resource(dir:'images', file:'raleigh2.JPG')}" style="float:left; width:250px; margin:14px;"/>
        <p>Join us in Chicago for the first CocoaConf of 2012.  This March we will gather a hundred iOS and OS X developers for two days packed with cutting edge technical content.  Our speakers include developers, trainers, and authors who have been there and done that.  And they're eager to pass on what they've learned to all of us.  
        </p>
        <p>Opportunities to learn from experts like this don&#8217;t come very often, so we want to help you make the most of it.  From the classroom arrangement to providing all meals and snacks to keeping the attendee to speaker ratio as low as possible, this event is all about providing you with the best learning experience ever. 
        <p>With three tracks on Friday and Saturday, we will have sessions for all skill levels, but for those just getting started, we also offer an all-day hands-on iOS tutorial on Thursday, March 15th. In this intense class, you&#8217;ll learn by building a real application with the help of an expert instructor.  There's never been a better time to get into this exciting and fast-growing field of development.</p>
        <p>You don&#8217;t want to miss this conference, so <g:link controller="home" action="register">register today</g:link> and be prepared to learn! </p>

        <!-- <div style="background-image: url(${resource(dir:'images',file:'threesateam.png')}); background-position: 0 0; padding-left: 80px; background-repeat: no-repeat; margin-top: 20px; min-height: 75px">

            <h2>Two's Company, Three's a <span style="color:#2ab0e2">Team</span></h2>
		    <p><strong>The team that trains together stays together</strong>, so we are offering a special discount for teams of three or more.  For every two people that register in one transaction, we will give your team one free pass.
            <br/><a href="/blog/threes-a-team">Get the details here.</a></p>
        </div>  -->

        <h2 style="color:#1da0d1;">Raleigh 2011 Wrap Up!</h2>
        <p><img src="${resource(dir:'images', file:'cc-small.png')}" class="paralogo">The second CocoaConf was held in Raleigh, North Carolina on December 2nd and 3rd. Over seventy iPhone, iPad, and Mac developers met up for two days packed with in-depth technical content. With fourteen excellent speakers and three tracks, it was often difficult to decide what to attend, but the tough choices paid off with great ideas, new insights and renewed motivation.</p>
        <g:link controller="blogLink" action="roundup" style="color:#ff9627; font-size:18px; font-weight: bold">Read more!</g:link>
    </div>


    <div id="featuredSpeakers">
        <h2 style="color:#1da0d1;">Featured Speakers</h2>
        <div class="featured">
           <img src="${resource(dir:'images',file:'stein.png')}"/>
           <p><strong>Daniel Steinberg</strong> - Author of <a href="http://pragprog.com/titles/sfipad/ipad-programming">iPad Programming</a> and <a href="http://pragprog.com/titles/dscpq/cocoa-programming">Cocoa Programming:
           A Quick-Start Guide for Developers</a> - <a href="http://dimsumthinking.com">http://dimsumthinking.com</a></p>
       </div>
        <div class="featured">
           <img src="${resource(dir:'images',file:'dudney.png')}"/>
           <p><strong>Bill Dudney</strong> - Author of Pragmatic Programmer’s books <a href="http://pragprog.com/titles/amiphd/iphone-sdk-development">iPhone SDK Development</a> and <a href="http://pragprog.com/titles/bdcora/core-animation-for-mac-os-x-and-the-iphone">Core Animation</a>.
            - <a href="http://www.bill.dudney.net">http://www.bill.dudney.net</a></p>

       </div>
        <div class="featured">
            <img src="${resource(dir:'images',file:'adamson.png')}"/>
             <p><strong>Chris Adamson</strong> - Author of <a href="http://www.amazon.com/Core-Audio-Kevin-Avila/dp/0321636848">Core Audio</a>, and <a href="http://pragprog.com/titles/amiphd/iphone-sdk-development">iPhone SDK Development</a>
            - <a href="http://www.subfurther.com/blog">http://www.subfurther.com/blog</a></p>

        </div>
        <div class="featured">
            <img src="${resource(dir:'images',file:'biggus.png')}"/>
            <p><strong>Jeff Biggus</strong> - Founder of HyperJeff, Inc. and curator of the <a href="http://hyperjeff.net">HyperJeff Network</a>.</p>

        </div>
     </div>



  </body>
</html>
