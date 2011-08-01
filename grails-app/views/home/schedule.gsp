<html>
  <head>
      <title>Cocoaconf | iOS/OS X Developer Conference | Columbus, Ohio | August 12 & 13</title>
      <meta name="layout" content="announcement" />
       <meta name="tab" content="schedule" />
      <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

      <style type="text/css">



          table{
              border: 0;
              margin: 0;
              border-collapse: collapse;
          }

          tr {
              margin: 0;
          }

          td {
              border: 0;
              margin: 0

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
              color:black;
          }

          th.keynote {
              background: #9adeff; padding: 8px 0 4px 0;
          }

          th.keynote a {
              color:black;
              text-decoration: underline
          }

      </style>


</head>
  <body>
    <g:if test="${flash.message}">
      <div id="flashMessage" style=""><p>${flash.message}</p>
      </div>
  </g:if>
   <h1 style="float:left">Schedule</h1>
  <span style="float:right; background-image: url(${resource(dir:'images', file:'download.png')}); background-position: 270px 0px; background-repeat: no-repeat; margin-top:10px; padding-top:9px; display:block; width:400px; height:50px; font-weight:bold; color:#; font-size: 18px">Download Slides/Sample Code</span>

  <sec:ifLoggedIn><g:render template="scheduleLoggedIn" /></sec:ifLoggedIn>
  <sec:ifNotLoggedIn><g:render template="schedule" /></sec:ifNotLoggedIn>
  </body>
</html>
