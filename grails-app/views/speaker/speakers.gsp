
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
         <meta name="tab" content="speakers" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>Cocoaconf | Our Speakers</title>

	<script type="text/javascript">

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

            div.odd {
                background-image: url("${resource(dir:'images', file:'background.png')}") ;
                border:  1px solid gray;
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
        <div class="nav">
        </div>
        <div class="body">

            <h1>Our Speakers</h1>
            <p>Cocoaconf speakers include well known trainers, authors, and professional iOS and OS X developers.</p>

            <div class="list">
                <g:each in="${speakerInstanceList}" status="i" var="speaker">
                    <div class="${(i % 2) == 0 ? 'odd' : 'even'}" style="min-height:160px; margin-bottom:10px">

                        <g:if test="${speaker?.imagePath}">
                             <g:link controller="speaker" action="viewDetails" id="${speaker?.id}"><img class="speakerPic" style=" margin-top:40px; " src="${request.contextPath}/${speaker?.imagePath}"/></g:link>
                        </g:if>


                         <div class="bio" style="min-height:160px; width:530px">
                             <h3>${speaker} <span style="font-size: 14px;"><g:link controller="speaker" action="viewDetails" id="${speaker?.id}">View Details</g:link></span></h3>
                             ${speaker.bio}<br/>

                    </div>
                        <div style="clear:both">&nbsp;</div>
	                </div>

                </g:each>
            </div>
        </div>
    </body>
</html>
