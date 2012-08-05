<%@ page import="com.cocoaconf.Prize" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
        <g:set var="entityName" value="${message(code: 'prize.label', default: 'Prize')}" />
        <title>CocoaConf | Conference Prizes</title>

        <script type="text/javascript" src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('.prize').corner("10px");


            });

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



        <style type="text/css">

            div.prize {
                background:#eeeeee;
                border:0;
                padding: 5px 15px;
            }

            div.prize h3 {
                color:#2d587a;
            }

            div.prize img {
                float: left;
            }


        </style>

    </head>
    <body>



            <div class="list">
                <h1>Prizes</h1>
                <p>This is a prize page, and we put prizes on it. See? SEE? Finally... about time. This is a prize page, and we put prizes on it. See? SEE? Finally... about time. </p>

                <g:each in="${prizes}" status="i" var="prize">
                     <div class="prize" style="margin-bottom:20px;">

                     <div style="width:98%">
                         <h3>${prize.name}</h3>
                         <g:if test="${prize?.imageName}">
                             <img class="prizePic" style=" float:left; margin-right:10px; margin-bottom: 2px; max-width: 75px;" src="${request.contextPath}/images/prizes/${prize?.imageName}" alt="${prize.name}"/>
                        </g:if>
                         <p>${prize.description}</p><br/>

                     </div>
                     <div style="clear:both">&nbsp;</div>
                    </div>

                </g:each>
            </div>

    </body>
</html>
