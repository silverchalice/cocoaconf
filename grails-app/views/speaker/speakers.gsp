
<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>


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
        <div class="nav">
        </div>
        <div class="body">

            <h1>Our Speakers</h1>
            <p>Cocoaconf speakers include well known trainers, authors, and professional iOS and OS X developers.</p>

            <div class="list">
                <g:each in="${speakerInstanceList}" status="i" var="speaker">
                    <div class="${(i % 2) == 0 ? 'odd' : 'even'}" style="min-height:160px; margin-bottom:10px">

                        <img class="speakerPic" style=" margin-top:40px; " src="${request.contextPath}/${speaker?.imagePath}"/>

                         <div class="bio" style="min-height:160px; width:530px">
                             <h3>${speaker}</h3>
                             ${speaker.bio}<br/>

                             <ul style="display: block; background-image: url(${resource(dir:'images', file:'session-bg.png')}); height:140px; background-repeat: no-repeat; padding: 10px 0 0 40px">
                           <h3>Presentations:</h3>
                         <g:each in="${speaker.presentations}" var="presentation">
                            <li>${presentation.title}</li>


                         </g:each>
                        </ul>
                    </div>
                        <div style="clear:both">&nbsp;</div>
	                </div>

                </g:each>
            </div>
        </div>
    </body>
</html>
