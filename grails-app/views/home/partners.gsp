<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="partners" />
        <title>CocoaConf | Partners</title>
    </head>
    <body>
    <div class="container main-text">
        <h1><span></span> Our Partners</h1>
    </div>
    <div class="content container">
        <div class="gradient"></div>

        <!-- Main hero unit for a primary marketing message or call to action -->
        <div class="row-fluid">
            <div class="span1"> </div>
            <div class="span8">
                <div class="media"> <img src="${resource(dir:'images', file:'img_sponsors_icon.png')}" alt="A person icon" class="pull-left media-object">
                    <div class="media-body">
                        <h1>The following organizations are helping to make CocoaConf awesome!</h1>
                    </div>
                </div>
            </div>
            <div class="span1"> </div>
        </div>
        <img class="photostrip hidden-phone" src="${resource(dir:'images', file:'img_photostrip_raleigh.jpg')}" alt="Speakers at last year's CocoaConf">
        <!-- Example row of columns -->

        ${partnersPageInfo?.contents}

        </div>
    </body>
</html>
