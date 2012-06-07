<html>
    <head>
        <title>CocoaConf | iOS/OS X Developer Conference | Washington DC Area | June 29 & 30, 2012</title>
        <meta name="layout" content="conference" />

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


        <div style="width:480px; float:left; padding-left:20px">
            <g:if test="${flash.message}">
                <div id="flashMessage"><p>${flash.message}</p>
                 <span class="button" id="closeFlash" >Ok!</span>
                </div>
            </g:if>

            <h1>Chicago, IL: March 16 & 17, 2012</h1>
            ${conference?.blurb}

        <div id="featuredSpeakers">
            <h2 style="color:#1da0d1;">Featured Speakers</h2>
            <div class="featured">
               <img src="${resource(dir:'images',file:'stein.png')}"/>
               <p><strong>Daniel Steinberg</strong> - Author of <a href="http://pragprog.com/titles/sfipad/ipad-programming">iPad Programming</a> and <a href="http://pragprog.com/titles/dscpq/cocoa-programming">Cocoa Programming:
               A Quick-Start Guide for Developers</a> - <a href="http://dimsumthinking.com">http://dimsumthinking.com</a></p>
           </div>
            <!-- <div class="featured">
               <img src="${resource(dir:'images',file:'dudney.png')}"/>
               <p><strong>Bill Dudney</strong> - Author of Pragmatic Programmer’s books <a href="http://pragprog.com/titles/adios">iPhone SDK Development</a> and <a href="http://pragprog.com/titles/bdcora/core-animation-for-mac-os-x-and-the-iphone">Core Animation</a>.
                - <a href="http://bill.dudney.net">http://bill.dudney.net</a></p>
                                                                                                                                                                                                             c
           </div>-->
            <div class="featured">
                <img src="${resource(dir:'images',file:'adamson.png')}"/>
                 <p><strong>Chris Adamson</strong> - Author of <a href="http://www.amazon.com/Core-Audio-Kevin-Avila/dp/0321636848">Core Audio</a>, and <a href="http://pragprog.com/titles/adios">iPhone SDK Development</a>
                - <a href="http://www.subfurther.com/blog">http://www.subfurther.com/blog</a></p>

            </div>
            <div class="featured">
                <img src="${resource(dir:'images',file:'biggus.png')}"/>
                <p><strong>Jeff Biggus</strong> - Founder of HyperJeff, Inc. and curator of the <a href="http://hyperjeff.net">HyperJeff Network</a>.</p>

            </div>
            <div class="featured">
                <img src="${resource(dir:'images',file:'judd.png')}"/>
                <p><strong>Christopher Judd</strong> - Leader of <a href="http://groups.google.com/group/cidug?pli=1">Columbus iPhone Developer User Group</a> and author of <a href="http://www.beginninggroovyandgrails.com/site/content/index">Beginning Groovy and Grails</a>
                            <a href="http://www.juddsolutions.com">http://www.juddsolutions.com</a></p>

            </div>

        </div>



    </body>
</html>
