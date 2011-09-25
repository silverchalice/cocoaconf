<html>
    <head>
        <title>Cocoaconf | iOS/OS X Developer Conference | Columbus, Ohio | August 12 & 13</title>
        <meta name="layout" content="public"/>
        <meta name="tab" content="schedule"/>
        <script src="${resource(dir: 'js', file: 'jquery-1.6.2.min.js')}" type="text/javascript"></script>



        <script type="text/javascript">
            $(document).ready(function() {


                $(":checkbox").click(function() {
                    $(this).siblings().removeAttr('checked');
                });


            });

        </script>

        <style type="text/css">



        table {
            border: 0;
            margin: 0;
            border-collapse: collapse;
        }

        tr {
            margin: 0;
        }

        td {
            border: 0;
            margin: 0;

        }

        td.choice span {
            padding-right: 90px;
        }

        th {
            border: 0;
            margin: 0
        }

        .schedule a {
            text-decoration: none;
            border-bottom: 1px dotted #35b6ff;
            font-size: 12px;
            color: #35b6ff;
            font-weight: bold;
        }

        .schedule a:hover {

            border-bottom: 1px solid #35b6ff
        }

        tr.break td {
            background: #d3d3d3;
            padding: 4px 0 0 0;
        }

        tr.break th {
            background: #d3d3d3;
            padding: 4px 0 0 0;
        }

        td.track2 {
            background-color: #edecec;
        }

        td.time {
            background-color: #d3d3d3;
        }

        .sessionSpeaker {
            display: block;
        }

        .sessionTitle {
            font-size: 13px;

        }

        .sessionTitle a {
            font-size: 13px;
            color: black;
        }

        th.keynote {
            background: #9adeff;
            padding: 8px 0 4px 0;
        }

        th.keynote a {
            color: black;
            text-decoration: underline
        }



        </style>

    </head>

    <body>
        <g:if test="${flash.message}">
            <div id="flashMessage" style="">
                <p>${flash.message}</p>
            </div>
        </g:if>
        <h1 style="float:left">Columbus 2011, Schedule</h1>
        <sec:ifLoggedIn>
            <g:if test="${slides}">
                <a class="slideDownload" href="${createLink(controller:'home', action:'downloadSlides', params:[file:slides])}">Download Slides/Sample Code</a>
            </g:if>

        </sec:ifLoggedIn>

    <g:form controller='user' action='pickSessions'>
     <h3 style="clear:both">Friday, August 12</h3>

    <table border="1" width="700" class="schedule">
  	<tr class="break">
  		<td align="center" class="time">7:30-8:45</td>
  		<th align="center" colspan="3">Registration and Breakfast</th>
  	</tr>
  	<tr class="break2">
  		<td align="center" class="time">8:45-9:00</td>
  		<th align="center" colspan="3" style="background: #9adeff; padding: 8px 0 4px 0">Opening Remarks</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" width="100" class="time" >9:00-10:00</td>
  		<td align="center" width="200" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part One</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
  		<td align="center" width="200" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="9">ObjectiveC Runtime: Fun under the covers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
  		<td align="center" width="200" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="22">UI Automation: Testing from the top down</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center">10:00-10:15</td>
  		<th align="center" colspan="3">Break</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >10:15-11:15</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Two</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="12">NSURLConnection And Beyond: Networking with Cocoa</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="7">Steve Madsen</g:link></span></td>
  		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="24">Performance Tuning</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="15">Mark Dalrymple</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">11:15-11:45</td>
  		<th align="center" colspan="3">Break</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >11:45-12:45</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Three</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="10">Dtrace: Not Your Father's Debugger...</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="26">Understanding View Controllers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">12:45-2:00</td>
  		<th align="center" colspan="3">Lunch</th>
  	</tr>
  	<tr class="break2">
  		<td align="center" class="time">2:00-3:00</td>
  		<th align="center" colspan="3" class="keynote"><g:link controller="session" action="details" id="28">&ldquo;We Made An App For That&rdquo;</g:link><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="17">Mark Gilicinski</g:link> </span> </th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >3:15-4:45</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Four</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="20">iOS Game Development With cocos2d</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="14">Josh Smith</g:link></span></td>
  		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="7">Intro To AV Foundation (Intermediate)</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">4:45-5:00</td>
  		<th align="center" colspan="3">Break</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >5:00-6:30</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Five</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="29">Test Driven Development in the iOS World, Part One</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="18">Doug Sjoquist</g:link></span></td>
  		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="8">Advanced AV Foundation (Advanced)</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">6:30-7:30</td>
  		<th align="center" colspan="3">Dinner</th>
  	</tr>
  	<tr class="break2">
  		<td align="center" class="time">7:30-8:30</td>
  		<th align="center" colspan="3" class="keynote"><g:link controller="session" action="details" id="1">Keynote: Your Code &mdash; The Director's Cut</g:link> (<g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link>)</th>
  	</tr>
      </table>
      <br/>
     <h3>Saturday, August 13</h3>
    <table class="schedule">
  	<tr class="break">
  		<td align="center" class="time" width="100">8:00-9:00</td>
  		<th align="center" colspan="3">Breakfast</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >9:00-10:00</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="16">Keeping Secrets For iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="8">Randy Beiter</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="27">Intro To Mapkit</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
  		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="2">Blocks</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">10:00-10:15</td>
  		<th align="center" colspan="3">Break</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >10:15-11:15</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="3">Mac OS X For iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="21">MacRuby</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
  		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="6">Unit And Functional Testing For The iOS Platform</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">11:15-11:45</td>
  		<th align="center" colspan="3">Break</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >11:45-12:45</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="17">XCode 4.x</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="9">Dave Koziol</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="18">Using Game Center In iOS Apps</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="11">Mac Liaw</g:link></span></td>
  		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="25">Drawing With Core Graphics On iOS</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">12:45-2:00</td>
  		<th align="center" colspan="3">Lunch</th>
  	</tr>
  	<tr class="break2">
  		<td align="center" class="time">2:00-3:00</td>
  		<th align="center" colspan="3" style="background: #9adeff; padding: 4px 0 0 0">Panel</th>
  	</tr>
  	<tr class="slot">
  		<td align="center" class="time" >3:15-4:15</td>
  		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="19">iOS Development Using Lua And Wax Framework</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="11">Mac Liaw</g:link></span></td>
  		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="30">Test Driven Development in the iOS World, Part Two</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="18">Doug Sjoquist</g:link></span></td>
  		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="23">Thoughts On Debugging</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="15">Mark Dalrymple</g:link></span></td>
  	</tr>
  	<tr class="break">
  		<td align="center" class="time">4:30-5:00</td>
  		<th align="center" colspan="3" style="background: #9adeff; padding: 8px 0 4px 0">Closing Remarks</th>
  	</tr>

    </table>

  </g:form>
    </body>
</html>
