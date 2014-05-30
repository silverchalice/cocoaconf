<%--
  Created by IntelliJ IDEA.
  User: zak
  Date: 4/1/11
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>CocoaConf | iOS/OS X Developer Conference</title>
      <meta name="layout" content="home" />
      <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

      <script src="${resource(dir:'js', file:'jquery-1.5.1.min.js')}" type="text/javascript"></script>

      <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
      <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
      <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAAUBuwYLt8MoHV8G-JyWegDxTedV6jzRPejGhJGvcW1KcUcMdW1RS2Dxifye3ZKPwd2B2Sx7KUnQeZrw" type="text/javascript"></script>

      <style type="text/css">
          strong, h3 {
              color:black;
          }

           a {
               text-decoration: none;
               color:#2ab0e2;
               font-weight: bold
          }

          a:hover {
              text-decoration: underline
          }

          #content {
              min-height:360px;
          }
      </style>




  </head>

  <body>
    <img src="${resource(dir:'images', file:'threesateam-big.png')}" style="float:left; padding-right: 10px;"/><h1>Two's Company, Three's a <span style="color:#2ab0e2">Team!</span></h1>
    <p><strong>The team that trains together stays together</strong>, so we are offering a special discount for teams of three or more.  For every two people that register in one transaction, we will give your team one free pass.  You could think of it as a "Buy 2 get one free" deal, but we think "Team Discount" sounds better.
    </p>
    <h3>Here's how it works</h3>
    <p><g:link controller="home" action="register">When you register</g:link>, sign up two people at one time and then send an email to <a href="mailto:info@cocoaconf.com">info@cocoaconf.com</a> with the name and email address of the third team member. We will send that person a <strong>100% discount code</strong> so they can register for free.  If you sign up four team members at once, send us names and email address of two other team members and so on.
    </p>
With three concurrent tracks and 30 different sessions, there will be something for everyone on your team.

  </body>
</html>
