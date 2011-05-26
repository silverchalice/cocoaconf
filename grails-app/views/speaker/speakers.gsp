
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

            div.even div {
                float:left;
            }

            div.odd div {
                float:right;
            }

        </style>

    </head>
    <body>
        <div class="nav">
        </div>
        <div class="body">

            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <g:each in="${speakerInstanceList}" status="i" var="speaker">
                    <div class="${(i % 2) == 0 ? 'odd' : 'even'}" style="height:160px;">

                        <img class="speakerPic" src="${request.contextPath}/${speaker?.imagePath}"/>

                         <div style="height:160px;  width:700px">
                             <h3>${speaker}</h3>
                             ${speaker.bio}<br/>
                             <ul>
                            <li>Sessions:</li>
                         <g:each in="${speaker.presentations}" var="presentation">
                            <li>${presentation.title}</li>


                         </g:each>
                        </ul>
                    </div>
	                </div>
                     <div style="clear:both"></div>
                </g:each>
            </div>
        </div>
    </body>
</html>
