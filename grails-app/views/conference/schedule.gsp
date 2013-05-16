<html>
    <head>
        <title>CocoaConf | iOS/OS X Developer Conference | ${conference?.description} | ${conference?.dates}</title>
        <meta name="layout" content="conference"/>
        <meta name="tab" content="events" />
        <meta name="nav" content="schedule" />

		<script lib="jquery />
		
        <script type="text/javascript">
            $(document).ready(function() {
	
				$('input:checkbox').click(function() {
					var rowClass = $(this).attr('class');
				    $('.' + rowClass).filter(':checked').not(this).removeAttr('checked');
				    $(this).prop("checked", true);
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
            border: 1px solid #EDECEC;
            margin: 0;
            padding: 10px 5px;
        }

        td.choice span {
            padding-right: 59px;
        }

        th {
            border:1px solid #EDECEC;
            margin: 0
        }

        .schedule {
            font-size: 12px;
            font-weight: bold;
        }

        .schedule a {
            text-decoration: none;
            border-bottom: 1px dotted #35b6ff;
            font-size: 12px;
            color: #2AB0E2;
            font-weight: bold;
        }

        .schedule a:hover {

            border-bottom: 1px solid #35b6ff
        }

        tr.session td{
	
        }

        tr.general td{
	
        }

        tr.break td {
            background: #fff;
            border:1px solid #edecec;
            padding: 4px 0 0 0;
        }

        tr.break th {
            background: #fff;
            border:1px solid #edecec;
            padding: 4px 0 0 0;
        }

        tr.choice {
            color:#ff8c00;
        }

        td.track2 {
            background-color: #edecec;
        }

        td.track3 {
            background-color: white;
            border-right: 1px solid #EDECEC;
        }

        td.time {
            border:1px solid #edecec;
            background-color: #edecec;
        }
		
		tr.break td.time {
            border:1px solid #edecec;
            background-color: #edecec;
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
            color: black;

        }

        .keynote a {
            color:black;
        }


        </style>

    </head>

    <body>
	    <sec:ifLoggedIn>
            <g:set var="ix" value="${1}" />
            <form id="myForm" name="myForm" action="pickSessions">
	    </sec:ifLoggedIn>
        <div id="confSidebar">
            <g:render template="confNav" model="['conference': conference, 'current': 'schedule']" />
        </div>

        <div class="body">
            <g:if test="${flash.message}">
                <div id="flashMessage" style="">
                    <p>${flash.message}</p>
                </div>
            </g:if>

            <h1>${conference?.description}: Schedule</h1>
            <g:if test="${1 > schedule.slots}">
                <p><strong>We are still working on the schedule for this event.</strong> Please check back soon!</p>
            </g:if>

            <g:each in="${schedule}" var="dayMap">
                <h3 style="clear:both">${conference.days[dayMap.day -1]}</h3>
                <table border="1" width="700" class="schedule">
                <g:each in="${dayMap.slots}" var="slot">
                    <g:set var="sessions" value="${slot.value}" />
                    <tr class="${sessions[0]?.type}">
                    <td align="center" width="75" align="center" class="time">
	                  ${sessions[0].start}-${sessions[0].end}
	                </td>
                    <g:each in="${sessions.sort{it.track}}" var="sess">
                        <g:if test="${sessions.size() == 1}">
                            <g:if test="${sess?.type != 'break'}">
                                <td align="center" colspan="3">
	                              <g:link controller="conference" 
	                                      action="sessionDetails" 
	                                      id="${sess?.presentation?.id}" 
	                                      params="${[confId:conference?.id]}"> 
	                                ${sess?.presentation?.title} 
	                              </g:link>
	                              <span class="sessionSpeaker">
		                            <g:link controller="conference" 
		                                    action="speakerDetails" 
		                                    id="${sess?.presentation?.speaker?.id}" 
		                                    params="${[confId:conference?.id]}">
		                              ${sess?.presentation?.speaker}
		                            </g:link>
		                          </span>
		                        </td>
                            </g:if>
                            <g:else>
                                <td align="center" colspan="3">
	                              ${sess?.presentation?.title}
	                            </td>
                            </g:else>
                        </g:if>
                        <g:else>
                          <td align="center" width="200" class="track${sess?.track}">
                            <span class="sessionTitle">
	                          <g:link controller="conference" 
	                                  action="sessionDetails" 
	                                  params="${[tinyName:conference?.tinyName, 
		                                         slug:sess?.presentation?.slug ?: 'null']}">
		                        ${sess?.presentation?.title}
		                      </g:link>
		                    </span>
		                    <span class="sessionSpeaker">
			                  <g:link controller="conference" 
			                          action="speakerDetails" 
			                          id="${sess?.presentation?.speaker?.id}" 
			                          params="${[confId:conference?.id]}">
			                    ${sess?.presentation?.speaker}
			                  </g:link>
			                </span>
			              </td>
                        </g:else>
                    </g:each>
                    </tr>
                    <sec:ifLoggedIn>
                      <g:if test="${registered}">
                          <g:if test="${sessions.size() > 1 && !(sessions[0].presentation?.title?.contains('Tutorial'))}">
    	                    <tr>
    		                  <td align="center" width="75" align="center" class="time"></td>
    		                  <g:each in="${sessions.sort{it.track}}" var="sess">
    		                    <td align="center" width="200" class="track${sess?.track}">
    	                          <g:set var="sessionName" value="${'session' + ix++}" />
    	                          <g:set var="selected" value="${choice?.checkProp(sessionName)}" />
    	                          <input type="checkbox" class="row${dayMap.day}-${slot.key}" name="${sessionName}" ${selected ? "checked='checked'" : ''} />
    	                        </td>
    	                      </g:each>
    	                    </tr>
    	                  </g:if>
                        </g:if>
	                </sec:ifLoggedIn>
                </g:each>
                </table>
            </g:each>
            <sec:ifLoggedIn>
                <input type="hidden" name="tinyName" value="${tinyName}" />
				<br/>
                <input type="submit" value="Save Session Selections" style="float:right;" />
                </form>
            </sec:ifLoggedIn>
        </div>
        <div style="clear: both"></div>
    </body>
</html>
		
