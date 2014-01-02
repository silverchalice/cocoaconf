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
        <div class="row-fluid">
            <div class="span1"> </div>
                <div class="span8">
                    <div class="media-body">
                        <h1>${postInstance?.title}</h1>
                    </div>
                    <p style="font-size:smaller;">By ${postInstance.postedBy} (<g:formatDate format="MMMM d, yyyy" date="${postInstance.dateCreated}"/>, at <g:formatDate format="H:m aa" date="${postInstance.dateCreated}"/>)</p>
                    <br />
                    ${postInstance.body}
                    <br />
                    <hr />
                    </div>
            <div class="span1"> </div>
        </div>
        <p>&nbsp;</p>
        </div>
        </div>
    </body>
</html>
