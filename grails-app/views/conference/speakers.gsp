<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
        <meta name="tab" content="events" />
        <meta name="nav" content="speakers" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf | Our Speakers</title>

        <script type="text/javascript" src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('.speaker').corner("5px");
                $('.speakerPic').corner("5px");


            });

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



        <style type="text/css">

            div.speaker {
                font-size:14px;
                border-bottom: 1px solid #eee;
                border-right: 1px solid #eee;
                padding: 0 15px 10px 15px;
                float: left;
                width: 300px;
                height: 250px;
                margin: 5px 5px 10px;
            }

        </style>

    </head>
    <body>
        <div id="confSidebar">
            <g:render template="confNav" model="['conference': conference, 'current': 'speakers']" />
        </div>


        <div class="body">
            <h1>${conference?.description}: Speakers</h1>
            <g:if test="${speakerInstanceList}">
                <p>CocoaConf speakers include well known trainers, authors, and professional iOS and OS X developers.</p>
            </g:if>
            <g:else>
            <p><strong>We are still putting together the schedule for this event.</strong> Please check back soon!</p>
            </g:else>

            <div class="list">
                <g:each in="${speakerInstanceList}" status="i" var="speaker">
                    <div class="speaker">

                     <div class="bio" style="width:98%">

                         <g:if test="${speaker?.imagePath}">

                             <g:link controller="conference" action="speakerDetails" id="${speaker?.id}" params="${[confId:conference?.id]}"><img class="speakerPic" style=" float:left; margin-right:10px; margin-bottom: 2px; max-width: 120px;" src="${request.contextPath}/${speaker?.imagePath}"/></g:link>
                        </g:if>
                         <h3>${speaker}</h3>
                         <p><cc:truncate value="${speaker.bio}" size="140" /></p>

                    </div>
                        <div style="clear:both">
                            <span style="float:left">
                                <g:if test="${speaker.twitter}">
                                    <a target="_blank" href="http://twitter.com/${speaker.twitter}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'twitter.png')}" alt="Twitter" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
                                </g:if>
                                <g:if test="${speaker.appnet}">
                                    <a target="_blank" href="http://alpha.app.net/${speaker.appnet}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'appnet.jpg')}" alt="App.net" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
                                </g:if>
                                <g:if test="${speaker.blog}">
                                    <a target="_blank" href="${speaker.blog}" style="color: black; text-decoration: none; vertical-align: top"><img src="${resource(dir:'images', file: 'feed-icon-28x28.png')}" alt="${speaker}'s blog" style="vertical-align:top; padding-right:8px; margin-bottom:5px;"></a>
                                </g:if>
                            </span>

                            <span style="font-size: 14px; float:right ">
                                <g:link controller="conference" action="speakerDetails" id="${speaker?.id}" params="${[confId:conference?.id]}">View Details</g:link>
                            </span>
                        </div>
                    </div>

                </g:each>
            </div>

        </div>
        <div style="clear: both"></div>
    </body>
</html>
