<html>
    <head>
        <title>Cocoaconf | iOS/OS X Developer Conference | Raleigh, North Carolina | December 2 & 3</title>
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
            border: 0 none;
            border-bottom: 1px solid lightgray;
            margin: 0;
            padding: 10px 5px;
        }

        td.choice span {
            padding-right: 90px;
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
            border:1px solid lightgray;
            padding: 4px 0 0 0;
        }

        tr.break th {
            background: white;
            border:1px solid lightgray;
            padding: 4px 0 0 0;
        }

        td.track2 {
            background-color: #edecec;
        }

        td.track3 {
            background-color: white;
            border-right: 1px solid lightgray;
        }

        td.time {
            border:1px solid lightgray;
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
            color: black;

        }

        .keynote a {
            color:black;
        }



        </style>

    </head>

    <body>
        <g:if test="${flash.message}">
            <div id="flashMessage" style="">
                <p>${flash.message}</p>
            </div>
        </g:if>
        <h1 style="float:left">Raleigh 2011, Schedule</h1>
<!--
        <sec:ifLoggedIn>
            <g:if test="${slides}">
                <a class="slideDownload" href="${createLink(controller:'home', action:'downloadSlides', params:[file:slides])}">Download Slides/Sample Code</a>
            </g:if>

        </sec:ifLoggedIn>

        <sec:ifLoggedIn>
            <p style="clear:both">Please check the sessions you are most likely to attend.  This is not binding but will help us with room sizing. Thanks!</p>
            <g:render template="scheduleLoggedIn"/>
        </sec:ifLoggedIn>

        <sec:ifNotLoggedIn>
-->
            <g:render template="schedule"/>
<!--        </sec:ifNotLoggedIn>  -->
    </body>
</html>
