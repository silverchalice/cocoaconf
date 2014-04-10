<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="speakers" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf | Speaker Availability</title>
    </head>
    <body>

    <div class="container main-text">
        <h1><span></span> Speaker Availability</h1>
    </div>
    <div class="content container">
        <div class="gradient"></div>

        <!-- Main hero unit for a primary marketing message or call to action -->
        <div class="row-fluid">
            <div class="span1"> </div>
            <div class="span8">
                <div class="media"> <img src="${resource(dir:'images', file:'img_speaker_icon.png')}" alt="A person icon" class="pull-left media-object">
                    <div class="media-body">
                        <h1>We're lining up the next CocoaConf Season. Let us know which events you are available for.</h1>
                    </div>
                </div>
            </div>
            <div class="span1"> </div>
        </div>
        <img class="photostrip hidden-phone" src="${resource(dir:'images', file:'img_photostrip_chicago_speaker.jpg')}" alt="Speakers at last year's CocoaConf">
  
        <div class="row-fluid">
          <div class="message">${flash.message}</div>
          <g:form action="saveAvailability">
            <input type="hidden" name="id" value="${speaker.id}" />
            <input type="hidden" name="conferenceIds" value="${conferenceList.collect{it.id}.join(',')}" />
            <g:each in="${conferenceList}" status="i" var="conference">
                <table>
                   <tr><td><h3>${conference.city}, ${conference.state} - ${conference.dates}</h3></td></tr>
                   <tr><td>Available:</td><td><g:select name="${conference.id}.available" value="${availabilities.get(conference.id)?.available}" from="['Yes', 'No', 'Maybe']" noSelection="['No':'Can you join us?']"/></td></tr>
                   <tr><td>Number of Sessions:</td><td><g:field type="number" name="${conference.id}.numberOfTalks" value="${availabilities.get(conference.id)?.numberOfTalks?.toInteger()}"/></td></tr>
                   <tr><td>Need travel help:</td><td><g:checkBox name="${conference.id}.travelHelp" value="${availabilities.get(conference.id)?.travelHelp}"/></td></tr>
                   <tr><td>Comments:</td><td><g:textArea name="${conference.id}.comments" value="${availabilities.get(conference.id)?.comments}"/></td></tr>
                </table>
                <p>&nbsp;</p>
            </g:each>
            <input type="submit" text="Save" />
          </g:form>
        </div>
        <p>&nbsp;</p>
    </div>
    </body>
</html>
