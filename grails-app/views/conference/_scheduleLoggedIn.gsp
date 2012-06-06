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

        <td align="center" width="75" class="time" >9:00-10:00</td>
        <td align="center" width="200" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="22">UI Automation</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
        <td align="center" width="200" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="71">Painless Localization</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="29">Whitney Young</g:link></span></td>
        <td align="center" width="200" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="79">iOS Computer Vision</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="36">Jonathan Blocksom</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px; padding-right:0">
            <input type="checkbox" name="session02" ${choice?.session02 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session01" ${choice?.session01 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session03" ${choice?.session03 ? "checked='checked'" : ''} />
        </td>
	</tr>
	<tr class="slot">
    <tr class="slot">
        <td align="center" class="time">10:15-11:15</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="77">Objective‐C Runtime</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="63">Playing in the App Sandbox</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="27">Boisy Pitre</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="54">Documents on iOS 5</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox" name="session04" ${choice?.session04 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session06" ${choice?.session06 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session05" ${choice?.session05 ? "checked='checked'" : ''} />
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >11:30-12:30</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="66">Debugging with XCode</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="9">Dave Koziol</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="50">Accelerate</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="25">Jeff Biggus</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="44">Partly Cloudy Mobile Apps: Amazon iOS SDK</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="14">Josh Smith</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox" name="session07" ${choice?.session07 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session09" ${choice?.session09 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session08" ${choice?.session08 ? "checked='checked'" : ''} />
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
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="21">Mac Ruby</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="12">Jonathan Penn</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="74">DTrace: Its Not Your Father's Debugger</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="2">Craig Castelaz</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox" name="session10" ${choice?.session10 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session12" ${choice?.session12 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session11" ${choice?.session11 ? "checked='checked'" : ''} />
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >3:45-4:45</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="80">iTest my Code: OCDSpec and ocslim for the iPhone</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="37">Eric Meyer</g:link></span></td>
<<<<<<< HEAD
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="62">Walking the Tightrope: Managing apps in and out of the Mac App Store </g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="27">Boisy Pitre</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="70">Visualize Your Data with Core Animation</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="32">Brian Coyner</g:link></span></td>
=======
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="70">Visualize Your Data with Core Animation</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="32">Brian Coyner</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="62">Walking the Tightrope: Managing apps in and out of the Mac App Store </g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="27">Boisy Pitre</g:link></span></td>
>>>>>>> 34b9ff547e946fb88b23296fb8ebd016a499e09e
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox" name="session13" ${choice?.session13 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session15" ${choice?.session15 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session14" ${choice?.session14 ? "checked='checked'" : ''} />
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >5:00-6:00</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="65">Keeping Secrets for iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="28">Randy Beiter</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="3">Mac OS X for iOS Developers</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="61">Understanding OpenGL ES 2.0 shaders</g:link></span><span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="33">Brad Larson</g:link></span></td>
    </tr>
    <tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
        <td colspan="3" width="200" class="choice" style="padding-left:65px">
               <input type="checkbox" name="session16" ${choice?.session16 ? "checked='checked'" : ''} />
               <input type="checkbox" name="session18" ${choice?.session18 ? "checked='checked'" : ''} />
               <input type="checkbox" name="session17" ${choice?.session17 ? "checked='checked'" : ''} />
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
    <tr><td colspan="4"><h3>Saturday, March 17</h3></td></tr>
  	<tr class="break">
  		<td align="center" class="time" width="75">8:00-9:00</td>
  		<th align="center" colspan="3">Breakfast</th>
  	</tr>
    <tr class="slot">
        <td align="center" class="time" >9:00-10:30</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="68">Enter the Matrix</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="34">Mark Pospesel</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="39">Core Audio Cranks It Up</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="42">NSPredicates For Fun and Profit</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="14">Joshua Smith</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox" name="session19" ${choice?.session19 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session20" ${choice?.session20 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session21" ${choice?.session21 ? "checked='checked'" : ''} />
        </td>
	</tr>
    <tr class="slot">
        <td align="center" class="time" >10:45-12:15</td>
        <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="69">Embracing OCUnit</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="32">Brian Coyner</g:link></span></td>
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="59">Core What?</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="3">Chris Adamson</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="49">Blocks</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="25">Jeff Biggus</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox" name="session22" ${choice?.session22 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session23" ${choice?.session23 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session24" ${choice?.session24 ? "checked='checked'" : ''} />
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
<<<<<<< HEAD
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="67">XCode Grab Bag</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="9">Dave Koziol</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="56">Storyboards</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
=======
        <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="56">Storyboards</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="1">Daniel Steinberg</g:link></span></td>
        <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="67">XCode Grab Bag</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="9">Dave Koziol</g:link></span></td>
>>>>>>> 34b9ff547e946fb88b23296fb8ebd016a499e09e
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox" name="session25" ${choice?.session25 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session27" ${choice?.session27 ? "checked='checked'" : ''} />
            <input type="checkbox" name="session26" ${choice?.session26 ? "checked='checked'" : ''} />
        </td>
	</tr>
    <tr class="slot">
      <td align="center" class="time" >4:00-5:00</td>
      <td align="center" class="track1"><span class="sessionTitle"><g:link controller="session" action="details" id="25">Drawing with Core Graphics on iOS</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="16">Bill Dudney</g:link></span></td>
      <td align="center" class="track2"><span class="sessionTitle"><g:link controller="session" action="details" id="81">Core Motion Crazy</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="36">Jonathan Blocksom</g:link></span></td>
      <td align="center" class="track3"><span class="sessionTitle"><g:link controller="session" action="details" id="60">Migrating to Automatic Reference Counting</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="33">Brad Larson</g:link></span></td>
    </tr>
	<tr class="choice">
        <td align="center" width="75" class="time" >Attending:</td>
		<td colspan="3" width="200" class="choice" style="padding-left:65px">
            <input type="checkbox"  name="session29" ${choice?.session29 ? "checked='checked'" : ''} />
            <input type="checkbox"  name="session28" ${choice?.session28 ? "checked='checked'" : ''} />
            <input type="checkbox"  name="session30" ${choice?.session30 ? "checked='checked'" : ''} />
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