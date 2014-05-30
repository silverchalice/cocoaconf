<html>
<head>
    <title>CocoaConf | iOS/OS X Developer Conference | ${conference?.description} | ${conference?.dates}</title>
    <meta name="layout" content="conference" />
    <meta name="tab" content="events" />
    <meta name="nav" content="home" />
    <link href="${resource(dir:'css/custom', file:'jquery-ui-1.8.11.custom.css')}" rel="stylesheet" type="text/css"/>

    <script src="${resource(dir:'js', file:'jquery-1.6.2.min.js')}" type="text/javascript"></script>

    <script src="${resource(dir:'js', file:'jquery-ui-1.8.11.custom.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'js', file:'jquery.validate.min.js')}" type="text/javascript"></script>
    <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
    <script src="${resource(dir:'js', file:'script.js')}" type="text/javascript"></script>



    <script type="text/javascript">

        $(document).ready(function() {
            $("#dialog").dialog({ autoOpen: false, width:300, modal: true, title: 'Enter your email', hide: "fade", resizable:false, show: "fade" });


            <g:if test="${flash.message}">
            $("#flashMessage").dialog({ autoOpen: true, title: 'Thank you!', width:300, modal: true, resizable:false, show: "fade", hide: "fade"});
            $("#closeFlash").click(function(){
                $("#flashMessage").dialog("close");
            });
            </g:if>


            $(".openDialog").click(function() {
                $("#dialog").dialog('open');
            });


            $('.button').button();

            $('#dialogButton').button();

            $('#register').button();

            $("#interestForm").validate();

            $('.confHome img').corner("5px");
            $('#featuredSpeakers img').corner("10px");

        });


    </script>

    <style type="text/css">
        .confHome {
            width: 880px;
            font-size: 18px;
            font-weight: lighter;
            line-height: 28px;
        }

        #featuredSpeakers img {
            border: 1px solid #eee
        }

        strong {
            font-weight: bolder;
        }

        #altLogo {
            clear:both;
            width: 360px;
            display: block;
            margin: 0 auto;
            padding:25px
        }
    </style>

</head>

<body>

<div class="body" style="float:none">
    <div class="confHome" style=" ">
        <div class="interest">

            ${conference.blurb}

            ${conference.registrationBlurb}

        </div>

    </div>
</div>
<div style="clear: both"></div>



</body>
</html>
