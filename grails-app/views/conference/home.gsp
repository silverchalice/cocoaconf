<html>
    <head>
        <title>CocoaConf | iOS/OS X Developer Conference | Washington DC Area | June 29 & 30, 2012</title>
        <meta name="layout" content="conference" />
        <meta name="tab" content="events" />
        <meta name="nav" content="home" />
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

    </head>

    <body>

        <div id="confSidebar">
            <g:render template="confNav" model="['conference': conference, 'current': 'home']" />
        </div>


        <div class="body">

            <div style="float:left; width: 480px;">
                <g:if test="${flash.message}">
                    <div id="flashMessage"><p>${flash.message}</p>
                     <span class="button" id="closeFlash" >Ok!</span>
                    </div>
                </g:if>
                <br/>
                <h1>${conference?.description}</h1>
                <h3>${conference?.dates}</h3>
                ${conference?.blurb}
              </div>

            <div id="featuredSpeakers">
                <h2 style="color:#1da0d1;">Featured Speakers</h2>
                ${conference?.featuredSpeakers}
            </div>
        </div>
        <div style="clear: both"></div>



    </body>
</html>
