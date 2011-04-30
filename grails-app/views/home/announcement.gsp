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
      <title>Cocoaconf - Coming Soon!</title>
      <meta name="layout" content="public" />

      <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

      <script src="${resource(dir:'js', file:'jquery-1.5.1.min.js')}" type="text/javascript"></script>

      <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
      <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>




      <script type="text/javascript">
         $(document).ready(function() {
            $("#dialog").dialog({ autoOpen: false, width:300, modal: true, title: 'Enter your email', hide: "fade", resizable:false, show: "fade" });


              <g:if test="${flash.message}">
                $("#flashMessage").dialog({ autoOpen: true, title: 'Thank you!', width:300, modal: true, resizable:false, show: "fade", hide: "fade"});
                $("#closeFlash").click(function(){
                    $("#flashMessage").dialog("close");
                });
              </g:if>


            $("#openDialog").click(function() {
                $("#dialog").dialog('open');
            });


            $('#closeFlash').button();

            $('#register').button();

            $("#interestForm").validate();

         });


      </script>

      <style type="text/css">

          #announcement .ui-widget-header {
              background:none;
              border:0;
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

        html {
            font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
            font-size: 14px;
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
  <div class="clear">&nbsp;</div>
  <img src="${resource(dir:'images', file:'xcode.png')}"  id="xcode"/>
  <div id="glossy-box"><strong>CocoaConf is a technical conference, pure and simple.</strong> You won't find any vendor booths or vendor keynotes.  You will find in-depth technical sessions delivered by experts on the topics that matter most.
    Be the first to find out when registration opens. You won't want to miss it. <a id="openDialog" href="javascript:openDialog();" style="font-weight:bold;">Keep me posted!</a></div>


  <p id="tagcloud">
      <span style="font-size:16px; margin-right:100px;">Cocoa Touch</span>
      <span style="font-size:18px; margin-right:170px;">iTunes</span>
      <span style="font-size:18px; margin-right:100px;">XCode</span>
      <span style="font-size:16px;">coreaudio</span>
       <br/>
      <span style="font-size:32px; margin-left:185px;">iOS</span>
      <span style="font-size:32px; margin-left:165px;">OSX</span>


      <br/>
      <span style="font-size:18px; margin-left:20px;">Objective C</span>
      <span style="font-size:18px; margin-left:90px;">App Store</span>
      <span style="font-size:14px; margin-left:220px;">coredata</span>

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
                                <label for="needHotel" style="font-size:12px;">Are you coming from out of town?</label>

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
