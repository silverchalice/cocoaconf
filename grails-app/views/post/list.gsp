<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="blog" />
        <title>CocoaConf | Blog</title>
    </head>
    <body>
    <div class="container main-text">
        <h1><span></span> The CocoaConf Blog</h1>
    </div>
    <div class="content container">
        <div class="gradient"></div>

        <!-- Main hero unit for a primary marketing message or call to action -->
        <g:each in="${postInstanceList}" var="post">
            <div class="row-fluid">
                <div class="span1"> </div>
                    <div class="span8">
                        <div class="media-body">
                            <g:link controller="post" action="show" params="['slug': post.slug]" class="post-title"><h1>${post?.title}</h1></g:link>
                        </div>
                        <p style="font-size:smaller;">By ${post.postedBy} (<g:formatDate format="MMMM d, yyyy" date="${post.dateCreated}"/>, at <g:formatDate format="H:m aa" date="${post.dateCreated}"/>)</p>
                        <br />
                        ${post.body}
                        <br />
                        <hr />
                        <br />
                    </div>
                <div class="span1"> </div>
            </div>
        </g:each>
        <div class="paginateButtons" style="max-width: 50%; text-align: center;">
            <g:paginate total="${postInstanceTotal}" />
        </div>
        <p>&nbsp;</p>
        </div>
        </div>
    </body>
</html>
