
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
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
            .presentations {
                display: block; width:600px; padding: 1px 40px 0 20px;
            }

            .presentation {
                padding: 10px; border: 1px solid #eee; list-style: none; margin-bottom:20px; background:#eeeeee;
            }

            .presentation a {
                color:#2ab0e2; font-weight: bold; font-size: 16px; text-decoration: none
            }

            .speakerPic {
                float:left; max-height: 140px; max-width: 140px; margin: 0 10px 10px 0
            }

        </style>

    </head>
    <body>

        <div>
            <img src="${request.contextPath}/${speaker?.imagePath}" class="speakerPic"/>
            <h1>${speaker}</h1>
            <p>${speaker.bio}</p>
            <p>
                <g:if test="${speaker.twitter}">
                    <a href="https://twitter.com/${speaker.twitter}" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @ZacharyAKlein</a>
                    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                </g:if>
                <g:if test="${speaker.blog}">
                    <a href="${speaker.blog}" style="color: black; text-decoration: none"><span style="font-size:14px; font-weight: bold; padding-left:20px; line-height: 30px; vertical-align: top">Read ${speaker.firstName}'s blog:</span> <img src="${resource(dir:'images', file: 'feed-icon-28x28.png')}" alt="${speaker}'s blog"></a>
                </g:if>
            </p>

        </div>
        <ul class="presentations">
           <h3>Presentations by ${speaker}:</h3>
         <g:each in="${speaker.presentations.findAll{it.current == true}.sort{it.id}}" var="presentation">
            <li class="presentation"><g:link controller="session" action="details" id="${presentation.id}">${presentation.title}</g:link><br/>
            <p>${presentation.pAbstract}</p></li>


         </g:each>
        </ul>



    </body>
</html>
