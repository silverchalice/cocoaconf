
<%@ page import="com.cocoaconf.MugShot" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
         <meta name="tab" content="speakers" /> <!-- must changes this... -->
        <g:set var="entityName" value="${message(code: 'mugShot.label', default: 'MugShot')}" />
        <title>CocoaConf | Mug Shots</title>

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
         <h1>Mug Shots</h1>
        <p>This is some text about how great our mug pictures are.</p>

        <div class="list">
            <g:each in="${mugShotInstanceList}" status="i" var="mugShot">
                <div class="${(i % 2) == 0 ? 'odd' : 'even'}" style="min-height:160px; margin-bottom:10px">

                    <g:if test="${mugShot?.imagePath}">
                         <g:link controller="mugShot" action="viewDetails" id="${mugShot?.id}"><img class="speaker" style=" margin-top:40px; " src="${request.contextPath}/${mugShot?.imagePath}"/></g:link>
                    </g:if>


                     <div class="bio" style="min-height:160px; width:480px">
                         <h3>${mugShot} <span style="font-size: 14px;"><g:link controller="mugShot" action="viewDetails" id="${mugShot?.id}">View Details</g:link></span></h3>
                         ${mugShot.caption}<br/>

                </div>
                    <div style="clear:both">&nbsp;</div>
                </div>

            </g:each>
        </div>
    </body>
</html>
