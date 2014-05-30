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
                <h1>Saturday Drawing Prize List</h1>
                <p>During the closing session on Saturday we will be giving away a bunch of great prizes donated by our publishing partners and others.</p>
                <p>If your name is called during the drawing you can come to the prize table and claim your prize.  Use this list to help you decide in advance what you want to get.  And then cross your fingers...</p>

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
