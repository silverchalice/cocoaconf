<g:form controller='user' action='pickSessions'>
    <h3 style="clear:both">Thursday, March 15</h3>
    <table border="1" width="700" class="schedule">
  	<tr class="break">
  		<td align="center" class="time">8:30-5:00</td>
          <th align="center" colspan="3"><g:link controller="session" action="details" id="57">iOS Tutorial</g:link> <br /> (<g:link controller="home" action="register">separate registration</g:link>) </span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></th>
  	</tr>
      <tr class="break">
          <td align="center" class="time">6:00-10:00</td>
          <th align="center" colspan="3">NSCoder Night <br /> (sponsored by CocoaConf; open to the public)</th>
      </tr>
    </table>
     <h3 style="clear:both">Friday, March 16</h3>
    <table border="1" width="700" class="schedule">
  	<tr class="break">
  		<td align="center" class="time">8:00-8:45</td>
  		<th align="center" colspan="3">Registration, Breakfast, Opening Remarks</th>
  	</tr>
    <tr class="slot">

        <td align="center" width="100" class="time" >9:00-10:00</td>
        <td align="center" width="200" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="71">Painless Localization</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="29">Whitney Young</g:link></span></td>
        <td align="center" width="200" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="22">UI Automation</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
        <td align="center" width="200" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="79">iOS Computer Vision</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="36">Jonathan Blocksom</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:80px; padding-right:0">
            <g:checkBox id="session01" name="session01" value="${choice?.session01}" /><span>Attending</span>
            <g:checkBox id="session02" name="session02" value="${choice?.session02}" /><span>Attending</span>
            <g:checkBox id="session03" name="session03" value="${choice?.session03}" /><span>Attending</span>
        </td>
	</tr>
	<tr class="slot">
    <tr class="slot">
        <td align="center" class="time">10:15-11:15</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="77">Objective‐C Runtime</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="54">Documents on iOS 5</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="63">Playing in the App Sandbox</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="27">Boisy Pitre</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session04" name="session04" value="${choice?.session04}" /><span>Attending</span>
            <g:checkBox id="session05" name="session05" value="${choice?.session05}" /><span>Attending</span>
            <g:checkBox id="session06" name="session06" value="${choice?.session06}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >11:30-12:30</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="66">Debugging with XCode</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="9">Dave Koziol</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="44">Partly Cloudy Mobile Apps: Amazon iOS SDK</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="14">Josh Smith</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="50">Accelerate</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="25">Jeff Biggus</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session07" name="session07" value="${choice?.session07}" /><span>Attending</span>
            <g:checkBox id="session08" name="session08" value="${choice?.session08}" /><span>Attending</span>
            <g:checkBox id="session09" name="session09" value="${choice?.session09}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="break">
        <td align="center" class="time">12:30-1:30</td>
        <th align="center" colspan="3">Lunch</th>
    </tr>
    <tr class="break2">
        <td align="center" class="time">1:30-2:15</td>
        <th align="center" colspan="3" class="keynote"><g:link controller="session" action="details" id="28">&ldquo;We Made An App For That&rdquo;</g:link><span class="sessionSpeaker"></span> </th>
    </tr>
    <tr class="slot">
        <td align="center" class="time" >2:30-3:30</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="76">GLKit: Why you should care.</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="14">Josh Smith</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="74">DTrace: Its Not Your Father's Debugger</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
            <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="21">Mac Ruby</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session10" name="session10" value="${choice?.session10}" /><span>Attending</span>
            <g:checkBox id="session11" name="session11" value="${choice?.session11}" /><span>Attending</span>
            <g:checkBox id="session12" name="session12" value="${choice?.session12}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >3:45-4:45</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="67">XCode Grab Bag</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="9">Dave Koziol</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="70">Visualize Your Data with Core Animation</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="32">Brian Coyner</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="62">Walking the Tightrope: Managing apps in and out of the Mac App Store </g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="27">Boisy Pitre</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:80px">
            <g:checkBox id="session13" name="session13" value="${choice?.session13}" /><span>Attending</span>
            <g:checkBox id="session14" name="session14" value="${choice?.session14}" /><span>Attending</span>
            <g:checkBox id="session15" name="session15" value="${choice?.session15}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >5:00-6:00</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="65">Keeping Secrets for iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="28">Randy Beiter</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="61">Understanding OpenGL ES 2.0 shaders</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="33">Brad Larson</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="3">Mac OS X for iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
    </tr>
    <tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
        <td colspan="3" width="200" class="choice" style="padding-left:80px">
               <g:checkBox id="session13" name="session13" value="${choice?.session16}" /><span>Attending</span>
               <g:checkBox id="session14" name="session14" value="${choice?.session17}" /><span>Attending</span>
               <g:checkBox id="session15" name="session15" value="${choice?.session18}" /><span>Attending</span>
           </td>
    </tr>
  	<tr class="break">
  		<td align="center" class="time">6:00-7:00</td>
  		<th align="center" colspan="3">Dinner</th>
  	</tr>
  	<tr class="break2">
  		<td align="center" class="time">7:00-8:00</td>
   		<th align="center" colspan="3" class="keynote"><g:link controller="session" action="details" id="1">Your Code: The Director&#8217;s Cut</g:link> &nbsp; (<g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link>)</th>
  	</tr>
      </table>
      <br/>
     <h3>Saturday, March 17</h3>
    <table class="schedule">
  	<tr class="break">
  		<td align="center" class="time" width="100">8:00-9:00</td>
  		<th align="center" colspan="3">Breakfast</th>
  	</tr>
    <tr class="slot">
        <td align="center" class="time" >9:00-10:30</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="68">Enter the Matrix</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="34">Mark Pospesel</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="39">Core Audio Cranks It Up</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="42">NSPredicates For Fun and Profit</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="14">Joshua Smith</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:55px">
            <g:checkBox id="session16" name="session16" value="${choice?.session19}" /><span>Attending</span>
            <g:checkBox id="session17" name="session17" value="${choice?.session20}" /><span>Attending</span>
            <g:checkBox id="session18" name="session18" value="${choice?.session21}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >10:45-12:15</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="69">Embracing OCUnit</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="32">Brian Coyner</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="59">Core What?</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="49">Blocks</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="25">Jeff Biggus</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:55px">
            <g:checkBox id="session19" name="session19" value="${choice?.session22}" /><span>Attending</span>
            <g:checkBox id="session20" name="session20" value="${choice?.session23}" /><span>Attending</span>
            <g:checkBox id="session21" name="session21" value="${choice?.session24}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="break">
        <td align="center" class="time">12:15-1:30</td>
        <th align="center" colspan="3">Lunch</th>
    </tr>
    <tr class="break1">
        <td align="center" class="time">1:30-2:30</td>
        <th align="center" colspan="3" style="border:1px solid lightgray;  padding: 4px 0 0 0"><g:link controller="session" action="details" id="78">Reverse Q&A Panel</g:link>, moderated by <g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></th>
    </tr>
    <tr class="slot">
        <td align="center" class="time" >2:45-3:45</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="64">Styling and Composing your UIViews with CALayers on iOS</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="31">Heath Borders</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="56">Storyboards</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="80">iTest my Code: OCDSpec and ocslim for the iPhone</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="37">Eric Meyer</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:55px">
            <g:checkBox id="session22" name="session22" value="${choice?.session25}" /><span>Attending</span>
            <g:checkBox id="session23" name="session23" value="${choice?.session26}" /><span>Attending</span>
            <g:checkBox id="session24" name="session24" value="${choice?.session27}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="slot">
      <td align="center" class="time" >4:00-5:00</td>
      <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="81">Core Motion Crazy</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="36">Jonathan Blocksom</g:link></span></td>
      <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="25">Drawing with Core Graphics on iOS</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
      <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="60">Migrating to Automatic Reference Counting</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="33">Brad Larson</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="100" class="time" >&nbsp;</td>
		<td colspan="3" width="200" class="choice" style="padding-left:55px">
            <g:checkBox id="session25" name="session25" value="${choice?.session28}" /><span>Attending</span>
            <g:checkBox id="session26" name="session26" value="${choice?.session29}" /><span>Attending</span>
            <g:checkBox id="session27" name="session27" value="${choice?.session30}" /><span>Attending</span>
        </td>
	</tr>
    <tr class="break">
        <td align="center" class="time">5:15-5:30</td>
        <th align="center" colspan="3" style="background: #9adeff; padding: 8px 0 4px 0">Closing Remarks</th>
    </tr>
 </table>
  <br/>
  <span style="margin: 20px 280px">
        <g:submitButton name="submit" style="font-size: 20px" value="Save Session Selection" id="sessionChoiceSubmit"/>
  </span>

</g:form>