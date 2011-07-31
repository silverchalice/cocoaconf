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
        <meta name="tab" content="register" />
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

            $('#closeFlash').button();

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
          #content {
              min-height:360px;
          }
          #register {
              font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
              font-size:17px;
              margin-left:75px;
              margin-top:15px;
          }

          #openDialog {
              font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
              font-size:15px;
              margin-left:25px;
              margin-top:5px;
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
  <h1 style="margin-left:150px;">Registration ends August 8!</h1>
  <div style="width:200px; padding-top:20px; text-align:center; float:left" ></div>
      <div style="float:right; width:480px; padding-top:20px"><span style="font-size:16px; font-weight: bold">Columbus, Ohio. August 12-13</span><p>Don't risk missing out!</p></div>

  <h2>What you get</h2>
  <p>Registration includes two days packed with technical sessions and interesting keynotes (no sales pitches), all meals and snacks, and some cool swag so you can show all your friends and co-workers that you were there!</p>
  <p>Also included is a <a href="http://www.cocoaconf.com/session/details/4" style="color:#2ab0e2; font-size: 14.5px; text-decoration: none; font-weight: bold">full-day hands on iOS tutorial and workshop!</a></p>
  <p>
      Can't wait to see you there!
  </p>

<div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=1649713337&ref=etckt" frameborder="0" height="338" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com/features?ref=etckt" >Event registration</a><span style="color:#ddd;" > for </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://cocoaconf.eventbrite.com?ref=etckt" >Cocoaconf  | Columbus, Ohio</a><span style="color:#ddd;" > powered by </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com?ref=etckt" >Eventbrite</a></div></div>

  </body>
</html>
