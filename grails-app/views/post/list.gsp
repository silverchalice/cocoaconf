
<%@ page import="com.cocoaconf.Post" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
        <meta name="tab" content="blog" />
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
        <title>CocoaConf, the conference for iPhone, iPad, and Mac developers.</title>

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
        <style type="text/css">


            .list {
                width: 640px;
            }

            div.odd img {
                float: left;
            }

            div.even img {
                float:right;
            }

            div.even div.bio {
                float:left;
            }

            div.odd div.bio {
                float:right;
            }

            .paginateButtons a {
                padding-left:  8px;
                color: rgb(29, 160, 209)

            }

            .paginateButtons {
                text-align: center;
                font-weight: bold;
                color: rgb(29, 160, 209)

            }

        </style>

    </head>
    <body>
        <div class="list">
            <g:each in="${postInstanceList}" status="i" var="post">
                <g:link controller="post" action="show" params="['slug':post.slug]" class="blogTitle"><h1>${post.title}</g:link></h1>
                <p style="font-size:smaller;">Posted by ${post.postedBy} (<g:formatDate format="MMMM d, yyyy" date="${post.dateCreated}"/>, at <g:formatDate format="HH:mm aa" date="${post.dateCreated}"/>)</p>
                ${post.body}
                <hr/>
                <br />

            </g:each>
            <hr/>
        </div>

        <div class="paginateButtons">
            <g:paginate total="${postInstanceTotal}" />
        </div>

    </body>
</html>
