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
      <title>Cocoaconf | iOS/OS X Developer Conference | Columbus, Ohio | August 12 & 13</title>
      <meta name="layout" content="public" />
      <meta name="tab" content="nearYou" />

      <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAAUBuwYLt8MoHV8G-JyWegDxTedV6jzRPejGhJGvcW1KcUcMdW1RS2Dxifye3ZKPwd2B2Sx7KUnQeZrw" type="text/javascript"></script>
	<script type="text/javascript">

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-23159724-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

      $(document).ready(function() {

             $("#locationForm").validate();

            $('select').selectmenu();
              <g:if test="${flash.message}">
                $("#flashMessage").dialog({ autoOpen: true, title: 'Thank you!', width:300, modal: true, resizable:false, show: "fade", hide: "fade"});
                $("#closeFlash").click(function(){
                    $("#flashMessage").dialog("close");
                });
              </g:if>
      })

	</script>

      <style type="text/css">
        input {
            color:#2ab0e2;
        }

        input.submit {
            color:black;
        }


          h4 {
              margin: 0;
              color: #01639a;
          }

          td{
              padding: 2px;
          }
      </style>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23131242-2']);
  _gaq.push(['_setDomainName', '.cocoaconf.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

  </head>

  <body>
    <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

  <script src="${resource(dir:'js', file:'jquery-1.5.1.min.js')}" type="text/javascript"></script>

  <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
  <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>

                               
   <h1> [cocoaConf next:location]</h1>
  <g:if test="${flash.message}">
      <div id="flashMessage" style=""><p>${flash.message}</p>
      </div>
  </g:if>
  <p>If you'd like to see <strong>CocoaConf come to your area</strong>, let us know.  We are currently looking for locations for future CocoaConf events and we're hoping you will help us choose.  Please enter a city and state below and, if you would like to be informed of future CocoaConf events, give us a name and email address.  Oh, and if you really want  a CocoaConf in your town, be sure to tell your friends and colleagues to post too.
</p>


  <div style="background: url(${resource(dir:'images', file:'map.png')}) no-repeat; height:400px; width:720px">

      <div style="background: url(${resource(dir:'images', file:'box-bg.png')}); width:310px; height: 200px; padding:0 30px 30px 30px; margin:50px 0 0 150px">
         <g:form controller="locationRequest" action="saveRequest" id="locationForm">

             <table>
                 <tr>
                     <td colspan="2">
                         <h4>I'd like to see a CocoaConf in:</h4>
                     </td>                                    

                 </tr>
                 <tr>
                    <td><lable for="city">City:</lable></td>
                    <td><g:textField name="city" value="${locationRequestInstance?.city}"/></td>
                 </tr>
                 <tr>
                    <td> <lable for="state">State:</lable></td>
                    <td><g:select name="state" from="${states}" value="${locationRequestInstance?.state}"/></td>
                 </tr>
                                  <tr>
                    <td colspan="2">
                        <h4>Tell me about future CocoaConf events:</h4>
                    </td>
                 </tr>
                                  <tr>
                    <td><lable for="email">Name:</lable></td>
                    <td><g:textField name="name" value="${locationRequestInstance?.name}"/></td>
                 </tr>
                                  <tr>
                    <td><lable for="email">Email:</lable></td>
                    <td><g:textField name="email" value="${locationRequestInstance?.email}"/></td>
                 </tr>

                    <tr>
                    <td></td>
                    <td><g:submitButton name="submit" value="Submit" class="submit"/></td>
                 </tr>
             </table>


       </g:form>
      </div>


  </div>


  </body>
</html>
