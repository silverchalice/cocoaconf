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
          margin-top: 20px;
          float:left;
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

  <g:if test="${flash.message}">
      <div id="flashMessage"><p>${flash.message}</p>
       <span class="button" id="closeFlash" >Ok!</span>
      </div>
  </g:if>
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
     <div style="float:right; width:260px; margin-top: 20px;">
         <h2 style="color:#1da0d1;">Columbus 2011 Wrap Up!</h2>
         <p>The first CocoaConf was held in Dublin, Ohio on August 12th and 13th. Ninety iPhone, iPad, and Mac developers gathered for two exciting days of training, networking, and good times. With three tracks and sessions ranging from beginner to advanced, there was something for everyone to enjoy and learn from...</p>
         <g:link controller="blogLink" action="roundup" style="color:#ff9627; font-size:18px; font-weight: bold">Read more!</g:link>
     </div>
     <div class="clear" style="clear: both"></div>

     <div class="clear">&nbsp;</div>
     <img src="${resource(dir:'images', file:'xcode.png')}"  id="xcode"/>
     <div id="glossy-box">
        <h3>CocoaConf is a technical conference, <span style="color:#2ab0e2">pure and simple.</span></h3>
         <p>Instead of vendor booths or vendor keynotes, you'll find:</p>
         <ul style="list-style: none">
             <li style="border-bottom: 1px dotted gray"><strong>In-depth</strong> technical sessions.</li>           
             <li style="border-bottom: 1px dotted gray; margin-bottom:15px;">Multiple <strong>concurrent tracks</strong>.</li>
             <li style="border-bottom: 1px dotted gray; margin-bottom:15px;">Full-day, hands-on <strong>iOS workshop</strong>.</li>
             <li style="border-bottom: 1px dotted gray; margin-bottom:15px;">Fun and informative <strong>speaker panel</strong>.</li>
             <li style="border-bottom: 1px dotted gray; margin-bottom:15px; font-weight: bold">And much more!</li>
         </ul>

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
            <a href="http://www.bill.dudney.net">http://www.bill.dudney.net</a></p>

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
