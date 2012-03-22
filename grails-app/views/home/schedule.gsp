<html>
    <head>
        <title>CocoaConf | iOS/OS X Developer Conference | Chicago, Illinois | March 16 & 17</title>
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

        <h1 style="float:left">Chicago, 2012: Schedule</h1>

        <sec:ifLoggedIn>
            <g:render template="scheduleLoggedIn" model="['choice': choice]"/>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <g:render template="schedule"/>
        </sec:ifNotLoggedIn>


    </body>
</html>
