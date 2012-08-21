<html>
    <head>
        <title>CocoaConf | iOS/OS X Developer Conference | ${conference?.description} | ${conference?.dates}</title>
        <meta name="layout" content="conference" />
        <meta name="tab" content="events" />
        <meta name="nav" content="home" />
        <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

        <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>

        <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
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

               $('.confHome img').corner("5px");
               $('.interest').corner("10px");
               $('#featuredSpeakers img').corner("10px");

           });


        </script>

        <style type="text/css">
            .confHome {
                float:left; width: 480px;
            }

            #featuredSpeakers img {
                border: 1px solid #eee
            }
        </style>

    </head>

    <body>

        <div id="confSidebar">
            <g:render template="confNav" model="['conference': conference, 'current': 'home']" />
        </div>


        <div class="body">
            <g:if test="${conference?.status == 'active'}">
                <g:render template="confHome" model="['conference': conference]"/>
            </g:if>
            <g:elseif test="${conference?.status == 'completed'}">
                <g:render template="roundup" model="['conference': conference]"/>
            </g:elseif>
            <g:elseif test="${conference?.status == 'pending'}">
                <g:render template="interested" model="['conference': conference]"/>
            </g:elseif>

            <div id="featuredSpeakers">
                <h2 style="color:#1da0d1;">Featured Speakers</h2>
                ${conference?.featuredSpeakers}
            </div>
        </div>
        <div style="clear: both"></div>



    </body>
</html>
