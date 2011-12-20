
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
         <meta name="tab" content="speakers" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf | Our Speakers</title>

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
        <p><strong>As you can see our current speaker roster is pretty awesome, but it's still growing.  We will be adding more top-notch speakers in the next few weeks.</strong></p>
<p>If you have a recommendation for a CocoaConf speaker or are interested in speaking at CocoaConf, contact us at <a href="mailto:info@cocoaconf.com">info@cocoaconf.com</a></p>
        <h1>Chicago, Illinois 2012: Speakers</h1>
        <p>CocoaConf speakers include well known trainers, authors, and professional iOS and OS X developers.</p>

        <div class="list">
            <g:each in="${speakerInstanceList}" status="i" var="speaker">
                <div class="${(i % 2) == 0 ? 'odd' : 'even'}" style="min-height:160px; margin-bottom:10px">

                    <g:if test="${speaker?.imagePath}">
                         <g:link controller="speaker" action="viewDetails" id="${speaker?.id}"><img class="speakerPic" style=" margin-top:40px; " src="${request.contextPath}/${speaker?.imagePath}"/></g:link>
                    </g:if>


                     <div class="bio" style="min-height:160px; width:480px">
                         <h3>${speaker} <span style="font-size: 14px;"><g:link controller="speaker" action="viewDetails" id="${speaker?.id}">View Details</g:link></span></h3>
                         ${speaker.bio}<br/>

                </div>
                    <div style="clear:both">&nbsp;</div>
                </div>

            </g:each>
        </div>
    </body>
</html>
