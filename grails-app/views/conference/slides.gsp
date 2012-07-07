<%@ page import="com.cocoaconf.Session" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="conference" />
        <meta name="tab" content="events" />
        <meta name="nav" content="sessions" />
        <g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
        <title>${conference?.description}: Sessions</title>

        <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('.session').corner("5px");

            });

        </script>


    </head>
    <body>
	    <div id="confSidebar">
	        <g:render template="confNav" model="['conference': conference, 'current': 'none']" />
	    </div>

	    <div class="body">
	        <h1>${conference?.description}: Slides</h1>
	        <p>As speakers post slides, code or links to either, they will be added here. If you know of some we're missing, <a href="mailto:info@cocoaconf.com">let us know</a>.</p>
	        <div class="list">
	            <g:each in="${slideMap}" var="speakerMap">
	                <h2>${speakerMap.key}</h2>
	                <g:each in="${speakerMap.value}" var="presentationMap">
	                    <strong>${presentationMap.key.title}</strong><br/>
	                    <g:each in="${presentationMap.value}" var="presentationFile">
	                        <a href="${presentationFile?.link}">${presentationFile?.type}</a>&#160;&#160;&#160;
	                    </g:each>
	                    <br/>
	                </g:each>
	                <br/>
	            </g:each> 
	        </div>   
	    </div>
	    <div style="clear: both"></div>
    </body>
</html>
