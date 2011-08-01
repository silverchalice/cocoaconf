




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
		<td align="center" width="100" class="time" rowspan="2">9:00-10:00</td>
		<td align="center" width="200" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part One</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
		<td align="center" width="200" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="9">ObjectiveC Runtime: Fun under the covers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
		<td align="center" width="200" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="22">UI Automation: Testing from the top down</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px; padding-right:0">
            <g:checkBox id="session01" name="session01" value="${choice?.session01}" /><span>Attending</span>
            <g:checkBox id="session02" name="session02" value="${choice?.session02}" /><span>Attending</span>
            <g:checkBox id="session03" name="session03" value="${choice?.session03}" /><span>Attending</span>
        </td>
	</tr>
	<tr class="break">
		<td align="center">10:00-10:15</td>
		<th align="center" colspan="3">Break</th>
	</tr>
	<tr class="slot">
		<td align="center" class="time" rowspan="2">10:15-11:15</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Two</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="12">NSURLConnection And Beyond: Networking with Cocoa</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="7">Steve Madsen</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="24">Performance Tuning</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="15">Mark Dalrymple</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session04" name="session04" value="${choice?.session04}" /><span>Attending</span>
            <g:checkBox id="session05" name="session05" value="${choice?.session05}" /><span>Attending</span>
            <g:checkBox id="session06" name="session06" value="${choice?.session06}" /><span>Attending</span>
        </td>
	</tr>
	<tr class="break">
		<td align="center" class="time">11:15-11:45</td>
		<th align="center" colspan="3">Break</th>
	</tr>
	<tr class="slot">
		<td align="center" class="time" rowspan="2">11:45-12:45</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Three</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="10">Dtrace: Not Your Father's Debugger...</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="26">Understanding View Controllers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session07" name="session07" value="${choice?.session07}" /><span>Attending</span>
            <g:checkBox id="session08" name="session08" value="${choice?.session08}" /><span>Attending</span>
            <g:checkBox id="session09" name="session09" value="${choice?.session09}" /><span>Attending</span>
        </td>
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
		<td align="center" class="time" rowspan="2">3:15-4:45</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Four</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="20">iOS Game Development With cocos2d</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="14">Josh Smith</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="7">Intro To AV Foundation (Intermediate)</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session10" name="session10" value="${choice?.session10}" /><span>Attending</span>
            <g:checkBox id="session11" name="session11" value="${choice?.session11}" /><span>Attending</span>
            <g:checkBox id="session12" name="session12" value="${choice?.session12}" /><span>Attending</span>
        </td>
	</tr>
	<tr class="break">
		<td align="center" class="time">4:45-5:00</td>
		<th align="center" colspan="3">Break</th>
	</tr>
	<tr class="slot">
		<td align="center" class="time" rowspan="2">5:00-6:30</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="4">iOS Tutorial, Part Five</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="29">Test Driven Development in the iOS World, Part One</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="18">Doug Sjoquist</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="8">Advanced AV Foundation (Advanced)</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session13" name="session13" value="${choice?.session13}" /><span>Attending</span>
            <g:checkBox id="session14" name="session14" value="${choice?.session14}" /><span>Attending</span>
            <g:checkBox id="session15" name="session15" value="${choice?.session15}" /><span>Attending</span>
        </td>
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
		<td align="center" class="time" rowspan="2">9:00-10:00</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="16">Keeping Secrets For iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="8">Randy Beiter</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="27">Intro To Mapkit</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="2">Blocks</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session16" name="session16" value="${choice?.session16}" /><span>Attending</span>
            <g:checkBox id="session17" name="session17" value="${choice?.session17}" /><span>Attending</span>
            <g:checkBox id="session18" name="session18" value="${choice?.session18}" /><span>Attending</span>
        </td>
	</tr>
	<tr class="break">
		<td align="center" class="time">10:00-10:15</td>
		<th align="center" colspan="3">Break</th>
	</tr>
	<tr class="slot">
		<td align="center" class="time" rowspan="2">10:15-11:15</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="3">Mac OS X For iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="21">MacRuby</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="6">Unit And Functional Testing For The iOS Platform</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="4">Chris Judd</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session19" name="session19" value="${choice?.session19}" /><span>Attending</span>
            <g:checkBox id="session20" name="session20" value="${choice?.session20}" /><span>Attending</span>
            <g:checkBox id="session21" name="session21" value="${choice?.session21}" /><span>Attending</span>
        </td>
	</tr>
	<tr class="break">
		<td align="center" class="time">11:15-11:45</td>
		<th align="center" colspan="3">Break</th>
	</tr>
	<tr class="slot">
		<td align="center" class="time" rowspan="2">11:45-12:45</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="17">XCode 4.x</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="9">Dave Koziol</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="18">Using Game Center In iOS Apps</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="11">Mac Liaw</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="25">Drawing With Core Graphics On iOS</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session22" name="session22" value="${choice?.session22}" /><span>Attending</span>
            <g:checkBox id="session23" name="session23" value="${choice?.session23}" /><span>Attending</span>
            <g:checkBox id="session24" name="session24" value="${choice?.session24}" /><span>Attending</span>
        </td>
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
		<td align="center" class="time" rowspan="2">3:15-4:15</td>
		<td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="19">iOS Development Using Lua And Wax Framework</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="11">Mac Liaw</g:link></span></td>
		<td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="30">Test Driven Development in the iOS World, Part Two</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="18">Doug Sjoquist</g:link></span></td>
		<td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="23">Thoughts On Debugging</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="15">Mark Dalrymple</g:link></span></td>
	</tr>
	<tr class="choice">
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session25" name="session25" value="${choice?.session25}" /><span>Attending</span>
            <g:checkBox id="session26" name="session26" value="${choice?.session26}" /><span>Attending</span>
            <g:checkBox id="session27" name="session27" value="${choice?.session27}" /><span>Attending</span>
        </td>
	</tr>
	<tr class="break">
		<td align="center" class="time">4:30-5:00</td>
		<th align="center" colspan="3" style="background: #9adeff; padding: 8px 0 4px 0">Closing Remarks</th>
	</tr>
  </table>
      <br/>
  <span style="margin: 20px 280px">
        <g:submitButton name="submit" style="font-size: 20px" value="Save Session Selection" id="sessionChoiceSubmit"/>
  </span>

</g:form>