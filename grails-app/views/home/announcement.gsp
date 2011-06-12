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
	  _gaq.push(['_setAccount', 'UA-23159724-1']);
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
  <g:link controller="home" action="register" class="button" style="font-weight:bold;">Super Early Bird Registration open now!</g:link>

  <div class="clear">&nbsp;</div>
  <img src="${resource(dir:'images', file:'xcode.png')}"  id="xcode"/>
  <div id="glossy-box"><strong>Cocoaconf is a technical conference, pure and simple.</strong> <p>You won't find any vendor booths or vendor keynotes.  You will find in-depth technical sessions delivered by experts on the topics that matter most.
    Be the first to find out when registration opens. <strong>You won't want to miss it</strong>.</p></div>


  <p id="tagcloud">
      <span style="font-size:16px; margin-right:85px;">Cocoa Touch</span>
      <span style="font-size:18px; margin-right:15px;">iTunes</span>
      <span style="font-size:18px; margin-right:130px;">Lion</span>
      <span style="font-size:14px; margin-right:62px;">Core Animation</span>
      <span style="font-size:18px;">XCode 4</span>

       <br/>
      <span style="font-size:32px; margin-left:185px;">iOS</span>
      <span style="font-size:32px; margin-left:165px;">OS X</span>
      <span style="font-size:16px; margin-left:95px;">Quicktime</span>


      <br/>
      <span style="font-size:18px; margin-left:20px;">Objective C</span>
      <span style="font-size:14px; margin-left:30px;">Quartz</span>
      <span style="font-size:14px; margin-left:30px;">Core Audio</span>
      <span style="font-size:18px; margin-left:100px;">App Store</span>

      <span style="font-size:14px; margin-left:70px;">Core Data</span>

      <div id="cloud-bg">
	<div style="position:absolute; top:340px;"><h2>Featured Speakers</h2></div>
        <div style="float:left; padding-right:10px; width:200px; font-size:11px">
            <img src="${resource(dir:'images',file:'adamson.png')}"/>
		 <p><strong>Chris Adamson</strong> - Author of Core Audio, and iPhone SDK Development
            <a href="http://www.subfurther.com/blog">http://www.subfurther.com/blog</a></p>
            
        </div>
        <div style="float:left; padding-right:10px; width:200px; font-size:11px">
            <img src="${resource(dir:'images',file:'judd.png')}"/>
		<p><strong>Christopher Judd</strong> - Leader of Columbus iPhone Developer User Group and author of Beginning Groovy and Grails
            <a href="http://www.juddsolutions.com">http://www.juddsolutions.com</a></p>
           
        </div>
        <div style="float:left; padding-right:10px; width:200px; font-size:11px">
            <img src="${resource(dir:'images',file:'stein.png')}"/>
            <p><strong>Daniel Steinberg</strong> - Author of iPad Programming and Cocoa Programming:
            A Quick-Start Guide for Developers <a href="http://dimsumthinking.com">http://dimsumthinking.com</a></p>
        </div>

      </div>

  </p>

        <div id="dialog">
            <form id="interestForm" method="post" action="/cocoaconf/interest/register">
                <table>
                    <tbody>

                        <tr class="prop">
                            <td valign="top" class="name">
                                <label for="email"><g:message code="interest.email.label" default="Email" /></label>
                            </td>
                            <td valign="top" class="value ${hasErrors(bean: interestInstance, field: 'email', 'errors')}">
                                <g:textField name="email" value="${interestInstance?.email}" class="required email" />
                            </td>
                        </tr>


                        <tr class="prop">
                            <td valign="top" class="name" colspan="2">
                                <label for="needHotel" style="font-size:12px;">Please check if you are coming from out of town.</label>

                                <g:checkBox name="needHotel" value="${interestInstance?.needHotel}" style="background-color:#3B93E8" />
                            </td>
                        </tr>

                    </tbody>
                </table>

            <div class="buttons">
                <span class="button" ><g:submitButton id="register" name="create" class="save" value="Submit" /></span>
            </div>
        </form>
    </div>



  </body>
</html>
