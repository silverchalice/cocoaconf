
<%@ page import="com.cocoaconf.Presentation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <title>CocoaConf Presentation: ${presentationInstance?.title}</title>
    </head>
    <body>
            <h1>Session Details</h1>

            <h2 style="color:#35b6ff">${presentationInstance?.title}</h2>
            <p>${presentationInstance?.pAbstract}</p>
         <sec:ifLoggedIn>
             <g:if test="${slides}">
                 <a href="${createLink(controller:'home', action:'downloadSlides', params:[file:slides])}" style="background-image: url(${resource(dir:'images', file:'download.png')}); background-position: 270px 0px; background-repeat: no-repeat; padding-top:9px; display:block; width:400px; height:50px; font-weight:bold; font-size: 18px">Download Slides/Sample Code</a>

             </g:if>
             <g:else>
                <span style="padding-top:9px; display:block; width:400px; height:50px; font-weight:bold; font-size: 18px">No Slides Available</span>
             </g:else>


         </sec:ifLoggedIn><br/>
        <div style="background-color: #eeeeee; padding:10px;">
            <img src="${request.contextPath}/${presentationInstance.speaker?.imagePath}" style="float:left" />
            <h2>${presentationInstance?.speaker}</h2>
            <p>${presentationInstance?.speaker?.bio}</p>
        </div>
    </body>
</html>
