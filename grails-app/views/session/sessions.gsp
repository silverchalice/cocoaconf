<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
          <meta name="tab" content="sessions" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf | iOS/OS X Developer Conference | Washington DC Area | June 29 & 30, 2012</title>

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
            div.odd img {
                float: left;
            }




            div.even img {
                float:right;
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

        <h1>Session Listing</h1>

        <div class="list">
            <g:each in="${presentationInstanceList}" status="i" var="presentation">
               <div>
                   <h3 style="color:#2ab0e2">${presentation.title}</h3>
                   <h4><g:link style="color:#2ab0e2" controller="speaker" action="viewDetails" id="${presentation?.speaker?.id}">${presentation.speaker}</g:link> </h4>
                   <p>${presentation.pAbstract}</p>
               </div>
               <hr/>
            </g:each>
        </div>

    </body>
</html>