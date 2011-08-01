<html>
  <head>
      <title>Cocoaconf | iOS/OS X Developer Conference | Columbus, Ohio | August 12 & 13</title>
      <meta name="layout" content="public" />
       <meta name="tab" content="schedule" />
      <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>



<script type="text/javascript">
    $(document).ready(function() {


        $(":checkbox").click(function() {
            $(this).siblings().removeAttr('checked');
        });


    });

</script>

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
  <g:link controller="home" action="index" style="text-decoration:none; float:right; background-image: url(${resource(dir:'images', file:'download.png')}); background-position: 270px -3px; background-repeat: no-repeat; margin-top:10px; padding-top:9px; display:block; width:400px; height:50px; font-weight:bold; color:#; font-size: 18px">Download Slides/Sample Code</g:link>

  <sec:ifLoggedIn>  <p style="clear:both">
      Please check the sessions you are most likely to attend.  This is not binding but will help us with room sizing.  Thanks!
  </p><g:render template="scheduleLoggedIn" /></sec:ifLoggedIn>
  <sec:ifNotLoggedIn><g:render template="schedule" /></sec:ifNotLoggedIn>
  </body>
</html>
