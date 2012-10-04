
<%@ page import="com.cocoaconf.Speaker" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="events" />
    <meta name="tab" content="events" />
    <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
    <title>CocoaConf | Our Speakers</title>

    <script type="text/javascript"  src="${resource(dir:'js', file:'jquery.corner.js')}"></script>
    <script type="text/javascript">
        $(document).ready(function() {


            $('.list .conferenceCell').corner("5px");
            $('.conferenceCellDetails').corner("bottom 5px");
            $('.register').corner("top 5px");
            $('.speakerPic').corner("5px");

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
        .list .conferenceCell {
            float: left;
            width: 250px;
            margin: 15px 15px;
            height: 180px;
            padding: 0;
            position: relative;

        }

        .conferenceCellDetails {
            position: absolute;
            bottom: 0;
            text-align: center;
            width:240px; color:
            white;
            padding:  10px 5px;
            background: rgb(0, 0, 0) transparent;
            background: rgba(0, 0, 0, 0.7);
        }

        .conferenceCellDetails:hover {
            background: rgb(0, 0, 0) transparent;
            background: rgba(0, 0, 0, 0.9);
            color: #c6e3fd;
        }

        .conferenceCellDetails h3 {
            margin:0
        }

        .list .register {
            color: #ff9627;
            font-weight: bold;
            background: rgb(0, 0, 0) transparent;
            background: rgba(0, 0, 0, 0.5);
             width: 240px;
             padding: 5px;
        }

    </style>

</head>
<body>
<h1>Upcoming Events</h1>

<p>We are thrilled to be bringing the great technical content, exciting keynotes, fun and informative panels other awesomeness that is CocoaConf to eight cities across the US in 2013. Make your plans now to attend the CocoaConf closest to you or in a city you've been wanting to visit!</p>
<p><strong>If you would like to be notified when registration opens for any of these events,</strong> just click the image below and enter your email address on the event page. We will let you know about registration before we announce it elsewhere, so you can be sure to get a spot.</p>
<div class="list">
    <g:each in="${conferenceInstanceList}" status="i" var="conference">

        <a href="${createLink(controller: 'conference', action: 'home', params: ['tinyName': conference.tinyName])}"><div class="conferenceCell" style="background: url(${resource(dir: 'images', file: conference.thumbnail )}) no-repeat bottom;">
           <g:if test="${conference.status == 'active'}"><div class="register">Register Now!</div></g:if>

            <div class="conferenceCellDetails">
                <h3>${conference.description}</h3>
                ${conference.dates}<br/>
                ${conference.city}, ${conference.state}
            </div>
        </div></a>
    </g:each>

</div>
</body>
</html>