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
      <title>CocoaConf | iOS/OS X Developer Conference | Columbus, Ohio | August 12 & 13</title>
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
         <br/>

          <img src="${resource(dir:'images', file:'andy.png')}" style="float:left; margin:14px;"/>
          <p>The developers of North Carolina have spoken, and we&#8217;ve listened.  By popular demand, CocoaConf will be coming to downtown Raleigh, NC, in early December. We will have the same format, with two intense days of technical sessions, relevant keynotes, great food, and cool swag.  Included in the two-day conference is an optional all-day hands-on iOS tutorial, in which we will create an iPhone app from design to deployment &#8212; a great way to get started in this exciting field!
          </p>
          <p>
          This workshop was so popular in Columbus that we decided to hold it twice in Raleigh.  All CocoaConf attendees can go to the iOS tutorial on Friday, December 2, but we&#8217;ll also be offering the tutorial as a stand-alone class on Thursday, December 1.  This is a separate registration for those who want only the tutorial, but there is a special combined rate for those that just can&#8217;t get enough.
          </p>
          <p><strong>We are also thrilled to announce that CocoaConf Raleigh will feature a keynote by Andy Hunt!  </strong>
          </p>
          <p>You don&#8217;t want to miss this conference, so <g:link controller="home" action="register">register today</g:link> and save $150 with the early bird rate. </p>
      <br/>

          <h2 style="color:#1da0d1;">Columbus 2011 Wrap Up!</h2>
          <p><img src="${resource(dir:'images', file:'cc-small.png')}" class="paralogo">The first CocoaConf was held in Dublin, Ohio on August 12th and 13th. Ninety iPhone, iPad, and Mac developers gathered for two exciting days of training, networking, and good times. With three tracks and sessions ranging from beginner to advanced, there was something for everyone to enjoy and learn from...</p>
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
            <img src="${resource(dir:'images',file:'judd.png')}"/>
            <p><strong>Christopher Judd</strong> - Leader of <a href="http://groups.google.com/group/cidug?pli=1">Columbus iPhone Developer User Group</a> and author of <a href="http://www.beginninggroovyandgrails.com/site/content/index">Beginning Groovy and Grails</a>
            - <a href="http://www.juddsolutions.com">http://www.juddsolutions.com</a></p>

        </div>
     </div>



  </body>
</html>
