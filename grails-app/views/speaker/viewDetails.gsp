
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
          <meta name="tab" content="speakers" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf: ${speaker}</title>

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
    </head>
    <body>

        <div>
            <img src="${request.contextPath}/${speaker?.imagePath}" style="float:left" />
            <h1>${speaker}</h1>
            <p>${speaker.bio}</p>

        </div>
        <ul style="display: block; background-image: url(${resource(dir:'images', file:'background.png')}); width:520px; border: 1px solid gray; padding: 1px 40px 0 20px">
           <h3>Presentations by ${speaker}:</h3>
         <g:each in="${speaker.presentations.findAll{it.current == true}.sort{it.id}}" var="presentation">
            <li style="background: white; padding: 6px; border: 1px solid gray; list-style: none; margin-bottom:20px;"><strong style="color:#2ab0e2">${presentation.title}</strong><br/>
            <p>${presentation.pAbstract}</p></li>


         </g:each>
        </ul>



    </body>
</html>
