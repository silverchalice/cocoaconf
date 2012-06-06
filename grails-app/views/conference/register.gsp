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

    </head>

    <body>
        <h1>Register for the DC Area CocoaConf</h1>
        <h2>What you get</h2>
        <p>CocoaConf is a two-day developer conference covering all things Cocoa and CocoaTouch.  The conference includes general sessions, a Keynote by Daniel Steinberg, and three breakout tracks covering a variety of iOS and OS X development topics.  Also included in your registration are all meals, snacks and beverages so you can keep your mind on all the new stuff you're learning and not have to go forage for sustenance.  But wait, there's more... you will also receive a collection of some of the best conference swag in the industry. All that, and the opportunity to spend the weekend with a bunch of awesome iPhone, iPad, and Mac developers. </p>
        <p>The pre-conference iOS tutorial, held on Thursday, June 28th, includes a full day of expert training by <g:link controller="speaker" action="viewDetails" id="4">Christopher Judd</g:link>, ample workspace, plenty of power outlets, lunch, snacks and a really cool t-shirt.  For those that want it all &#8212; the tutorial on Thursday and the two days of the conference &#8212; we have a special combo price.
        </p>
        <p><strong>Group discounts are also available.</strong>  Contact us at <a href="mailto:info@cocoaconf.com">info@cocoaconf.com</a> for details.</p>
        <div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=2938602439&ref=etckt" frameborder="0" height="434" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com/r/etckt" >Online Ticketing</a><span style="color:#ddd;" > for </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://cocoaconfdc.eventbrite.com?ref=etckt" >CocoaConf DC</a><span style="color:#ddd;" > powered by </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com?ref=etckt" >Eventbrite</a></div></div>
    </body>
</html>

