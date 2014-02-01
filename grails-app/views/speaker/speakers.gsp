<%@ page import="com.cocoaconf.Speaker" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="speakers" />
        <g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
        <title>CocoaConf | Our Speakers</title>
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

    <div class="container main-text">
        <h1><span></span> All Speakers</h1>
    </div>
    <div class="content container">
        <div class="gradient"></div>

        <!-- Main hero unit for a primary marketing message or call to action -->
        <div class="row-fluid">
            <div class="span1"> </div>
            <div class="span8">
                <div class="media"> <img src="${resource(dir:'images', file:'img_speaker_icon.png')}" alt="A person icon" class="pull-left media-object">
                    <div class="media-body">
                        <h1>Our speakers include trainers, authors, and professional iOS and OS X developers.</h1>
                    </div>
                </div>
            </div>
            <div class="span1"> </div>
        </div>
        <img class="photostrip hidden-phone" src="${resource(dir:'images', file:'img_photostrip_chicago_speaker.jpg')}" alt="Speakers at last year's CocoaConf">
        <!-- Example row of columns -->


        <!--

                <div class="well well-small">
            <h3 class="text-center">Browse by last name</h3>
            <div class="pagination pagination-centered pagination-large">
                <ul>
                    <li><a href="#">A</a></li>
                    <li><a href="#">B</a></li>
                    <li><a href="#">C</a></li>
                    <li><a href="#">D</a></li>
                    <li class="disabled"><a href="#">E</a></li>
                    <li><a href="#">F</a></li>
                    <li><a href="#">G</a></li>
                    <li><a href="#">H</a></li>
                    <li><a href="#">I</a></li>
                    <li class="disabled"><a href="#">J</a></li>
                    <li><a href="#">K</a></li>
                    <li><a href="#">L</a></li>
                    <li><a href="#">M</a></li>
                    <li class="disabled"><a href="#">N</a></li>
                    <li class="disabled"><a href="#">O</a></li>
                    <li class="disabled"><a href="#">P</a></li>
                    <li class="disabled"><a href="#">Q</a></li>
                    <li><a href="#">R</a></li>
                    <li><a href="#">S</a></li>
                    <li><a href="#">T</a></li>
                    <li class="disabled"><a href="#">U</a></li>
                    <li><a href="#">V</a></li>
                    <li><a href="#">W</a></li>
                    <li><a href="#">X</a></li>
                    <li class="disabled"><a href="#">Y</a></li>
                    <li class="disabled"><a href="#">Z</a></li>
                </ul>
            </div>
        </div>

        <hr/>
        -->



        <!-- <div class="gradient"></div>

        <h2>&nbsp;</h2>
        <hr> -->

    <div class="row-fluid">

            <g:each in="${speakerInstanceList}" status="i" var="speaker">

                <div class="span3">
                    <ul class="media-list">
                        <li class="media"> <g:link controller="speaker" action="viewDetails" id="${speaker?.id}" class="pull-left"> <img class="media-object img-circle" src="${request.contextPath}/${speaker?.imagePath}" alt="Speaker photo"> </g:link>
                            <div class="media-body">
                                <h3 class="media-heading">${speaker} <!-- <span>/ Author</span>--></h3>
                            </div>
                            <p><cc:truncate value="${speaker.bio}" size="200" /></p>
                            <p><g:link controller="speaker" action="viewDetails" id="${speaker?.id}">Read more&nbsp;<i class="ion-ios7-arrow-forward"></i></g:link></p>
                            <p class="author-links">

                            <!--<i class="ion-ios7-location-outline"></i>&nbsp;<span class="location"> Speaking in <a href="chicago.html">Chicago, IL</a></span>-->

                            <g:if test="${speaker.twitter}">
                                <span class="twitter"><a href="https://twitter.com/${speaker.twitter}" title="Visit ${speaker} on Twitter" target="_blank"><i class="ion-social-twitter-outline"></i>&nbsp;@${speaker.twitter}</a></span>
                            </g:if>

                            <g:if test="${speaker.appnet}">
                                <span class="appnet"><i class="ion-ios7-arrow-up"></i>&nbsp;<a href="http://alpha.app.net/${speaker.appnet}">${speaker.appnet}</a></span>
                            </g:if>

                            <g:if test="${speaker.website}">
                                <span class="website"><a href="${speaker.website}" title="Visit ${speaker}'s website" target="_blank"><i class="ion-social-rss"></i>&nbsp;${speaker.website.minus("http://")}</a></span>
                            </g:if>

                            <g:if test="${speaker.blog}">
                                <span class="blog"><a href="${speaker.blog}" title="Visit ${speaker}'s blog" target="_blank"><i class="ion-social-rss"></i>&nbsp;${speaker.blog.minus("http://")}</a></span>
                            </g:if>

                            </p>
                        </li>
                    </ul>
                </div>

                <g:if test="${i > 0 && (i + 1) % 3 == 0}">
                    </div>

                     <div class="row-fluid">

                </g:if>

            </g:each>

        </div>

        <p>&nbsp;</p>

        </div>
    </body>
</html>
