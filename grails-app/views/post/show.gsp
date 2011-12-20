
<%@ page import="com.cocoaconf.Post" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
        <title>CocoaConf | iOS/OS X Developer Conference | Chicago, Illinois | March 15 & 17</title>

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

        </style>

    </head>
    <body>
        <div class="list">
               <br /><h1>${postInstance.title}</h1>
               <p style="font-size:smaller;">Posted by ${postInstance.postedBy} (<g:formatDate format="MMMM d, yyyy" date="${postInstance.dateCreated}"/>, at <g:formatDate format="HH:mm aa" date="${postInstance.dateCreated}"/>)</p>
               ${postInstance.body}
               <p>&#8592; <g:link controller="post" action="list">Blog</g:link></p>
        </div>
    </body>
</html>
