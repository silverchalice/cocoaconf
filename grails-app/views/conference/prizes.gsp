<%@ page import="com.cocoaconf.Prize" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
        <meta name="tab" content="events" />
        <meta name="nav" content="speakers" />
        <g:set var="entityName" value="${message(code: 'prize.label', default: 'Prize')}" />
        <title>CocoaConf | Prizes</title>

        <script type="text/javascript" src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('.odd').corner("5px");
                $('.even').corner("5px");

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

            div.odd {
                background:#eeeeee;
                border:0;
                padding: 15px;
            }

            div.odd h3 {
                color:#2d587a;
            }

            div.odd img {
                float: left;
            }


            div.even img {
                float:right;
            }

            div.even h3 {
                color:#2ab0e2;
            }

            div.even div.bio {
                float:left;
            }

            div.odd div.bio {
                float:right;
            }

        </style>

    </head>
    <body>
        <div id="confSidebar">
            <g:render template="confNav" model="['conference': conference, 'current': 'prizes']" />
        </div>


        <div class="body">
            <h1>${conference?.description}: Prizes</h1>
            <p>CocoaConf prizes include well known trainers, authors, and professional iOS and OS X developers.</p>

            <div class="list">
                <g:each in="${prizeInstanceList}" status="i" var="prize">
                    <div class="${(i % 2) == 0 ? 'odd' : 'even'}" style="min-height:160px; margin-bottom:10px;">

                     <div class="bio" style="width:98%">
                         <h3>${prize} </h3>
                         <g:if test="${prize?.imageName}">
                             <img class="speakerPic" style=" float:left; margin-right:10px; margin-bottom: 2px; max-width: 140px;" src="${request.contextPath}/${prize?.imageName}"/>
                        </g:if>
                         <p>${prize.bio}</p><br/>
                         <span style="font-size: 14px; float:right; "><g:link controller="prize" action="viewDetails" id="${prize?.id}">View Details</g:link></span>
                    </div>
                        <div style="clear:both">&nbsp;</div>
                    </div>

                </g:each>
            </div>

        </div>
        <div style="clear: both"></div>
    </body>
</html>
