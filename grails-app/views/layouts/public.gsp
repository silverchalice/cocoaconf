<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'public.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />

    </head>
    <body  id="announcement">
        <div id="page">
           <div id="spinner" class="spinner" style="display:none;">
                <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
            </div>
            <div id="logo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'sc-logo.png')}" alt="Simply Cocoa" border="0" /></a></div>

            <div id="content">
                <g:layoutBody />
            </div>

        </div>
    </body>
</html>