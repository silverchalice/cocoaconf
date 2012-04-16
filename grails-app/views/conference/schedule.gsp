<html>
    <head>
        <title>CocoaConf | iOS/OS X Developer Conference | Washington DC Area | June 29 & 30, 2012</title>
        <meta name="layout" content="public"/>
        <meta name="tab" content="schedule"/>

        <link rel="stylesheet" href="${resource(dir:'js/jquery-checkbox', file: 'jquery.checkbox.css')}" />
        <link rel="stylesheet" href="${resource(dir:'js/jquery-checkbox', file: 'jquery.safari-checkbox.css')}"/>

        <script type="text/javascript" src="${resource(dir:'js/jquery-checkbox', file: 'jquery.js')}"></script>
        <script type="text/javascript" src="${resource(dir:'js/jquery-checkbox', file: 'jquery.checkbox.min.js')}"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('input:checkbox:not([safari])').checkbox();
                $('input[safari]:checkbox').checkbox({cls:'jquery-safari-checkbox'});
                $('input:radio').checkbox();

                $(":checkbox").click(function() {
                    $(this).siblings().removeAttr('checked');
                });

            });

            displayForm = function (elementId)
            {
                var content = [];
                $('#' + elementId + ' input').each(function(){
                    var el = $(this);
                    if ( (el.attr('type').toLowerCase() == 'radio'))
                    {
                        if ( this.checked )
                            content.push([
                                '"', el.attr('name'), '": ',
                                'value="', ( this.value ), '"',
                                ( this.disabled ? ', disabled' : '' )
                            ].join(''));
                    }
                    else
                        content.push([
                            '"', el.attr('name'), '": ',
                            ( this.checked ? 'checked' : 'not checked' ),
                            ( this.disabled ? ', disabled' : '' )
                        ].join(''));
                });
                alert(content.join('\n'));
            };

            changeStyle = function(skin)
            {
                jQuery('#myform :checkbox').checkbox((skin ? {cls: skin} : {}));
            }

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
            border: 0 none;
            border-bottom: 1px solid lightgray;
            margin: 0;
            padding: 10px 5px;
        }

        td.choice span {
            padding-right: 59px;
        }

        th {
            border:1px solid lightgray;
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
            color: #35b6ff;
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
            background: #edecec;
            border:1px solid #edecec;
            padding: 4px 0 0 0;
        }

        tr.break th {
            background: white;
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
            border-right: 1px solid lightgray;
        }

        td.time {
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

        .body {

            width: 665px;
        }

        </style>

    </head>

    <body>
        <g:if test="${flash.message}">
            <div id="flashMessage" style="">
                <p>${flash.message}</p>
            </div>
        </g:if>

        <h1 style="float:left">${conference.description} Schedule</h1>

        <g:each in="${schedule}" var="dayMap">
		    <h3 style="clear:both">${conference.days[dayMap.day -1]}</h3>
		    <table border="1" width="700" class="schedule">
			<g:each in="${dayMap.slots}" var="slot">
			    <g:set var="sessions" value="${slot.value}" />
 		  	    <tr class="${sessions[0]?.type}">
  		        <td align="center" width="75" align="center" class="time">${sessions[0].start}-${sessions[0].end}</td>
                <g:each in="${sessions.sort{it.track}}" var="sess">
	                <g:if test="${sessions.size() == 1}">
	                    <g:if test="${sess?.type != 'break'}">
	                        <td align="center" colspan="3"><g:link controller="session" action="details" id="${sess?.presentation?.id}">${sess?.presentation?.title}</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="${sess?.presentation?.speaker?.id}">${sess?.presentation?.speaker}</g:link></th>
		                </g:if>
		                <g:else>
		                    <td align="center" colspan="3">${sess?.presentation?.title}</span></th>
		                </g:else>
		            </g:if>
		            <g:else>
                           <td align="center" width="200" class="track${sess?.track}"><span class="sessionTitle"><g:link controller="session" action="details" id="${sess?.presentation?.id}">${sess?.presentation?.title}</g:link></span> <span class="sessionSpeaker"><g:link controller="speaker" action="viewDetails" id="${sess?.presentation?.speaker?.id}">${sess?.presentation?.speaker}</g:link></span></td>
		            </g:else>
		        </g:each>
		  	    </tr>
		    </g:each>
		    </table>
		</g:each>

	</body>
</html>
		
