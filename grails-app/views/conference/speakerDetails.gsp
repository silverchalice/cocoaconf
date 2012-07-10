
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
          <meta name="tab" content="speakers" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf | ${speaker}</title>
        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('.presentation').corner("5px");
                $('.speakerPic').corner("5px");

            });

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-23159724-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	</script>

    <style type="text/css">
        .presentation {
            background: #eee;
            padding: 15px;
            margin: 5px 5px 20px;
            list-style: none;
            width:300px;
            height: 200px;
            float: left;
        }

        .speakerPic {
            float:left;
            max-height: 140px;
            max-width: 140px;
            margin: 0 10px 10px 0
        }
    </style>

    </head>
    <body>
    <div id="confSidebar">
        <g:render template="confNav" model="['conference': conference, 'current': 'speakers']" />
    </div>


    <div class="body">
        <div class="margin:5px;">
            <img src="${request.contextPath}/${speaker?.imagePath}" class="speakerPic" />
            <h1>${speaker}</h1>
            <p>${speaker.bio}</p>
        </div>
        <div style="clear: both">&nbsp;</div>


           <h2>${conference.description} Presentations by ${speaker}:</h2>
            <br/>

         <g:each in="${speakerPresentations?.sort{it.id}}" var="presentation">
             <g:if test="${presentation.title != 'TBA'}">
                 <div class="presentation">
                     <h3 style="color:#2ab0e2; padding: 0; margin:0"><g:link controller="conference" action="sessionDetails" id="${presentation.id}" params="${[confId:conference?.id]}">${presentation.title}</g:link></h3>
                     <p><cc:truncate value="${presentation.pAbstract}" size="300"/> </p>
                    <span style="font-size: 14px; float:right; vertical-align: bottom"><g:link controller="conference" action="sessionDetails" id="${presentation.id}" params="${[confId:conference?.id]}">View Details</g:link></span>

                 </div>
             </g:if>


         </g:each>

    </div>
    <div style="clear: both"></div>
</body>
</html>
