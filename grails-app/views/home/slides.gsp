<%@ page import="com.cocoaconf.MugShot" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
         <meta name="tab" content="speakers" /> <!-- must changes this... -->
        <g:set var="entityName" value="${message(code: 'mugShot.label', default: 'MugShot')}" />
        <title>CocoaConf | Slides</title>

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

            div.odd {
                background:#eeeeee;
                border:0;
                padding: 15px;
            }

            div.odd h3 {
                color:#2d587a;
            }

            div.odd img {
                float: left;
            }


            div.even img {
                float:right;
            }

            div.even h3 {
                color:#2ab0e2;
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
         <h1>Slides from CocoaConf Chicago</h1>
        <p>This is some text about how great our slides are.</p>

        <div class="list">
            <ul>
                <li>Bundle: Day One</li>
                <li>Bundle: Day Two</li>
                <li><a href="${resource(dir:'slides', file:'automation.pdf')}">Jonathan Penn &#8212; UI Automation</a></li>
                <li><a href="${resource(dir:'slides', file:'vision.key.pdf')}">Jonathan Blocksom &#8212; iOS Computer Vision</a></li>
                <li><a href="${resource(dir:'slides', file:'sandbox.pdf')}">Boisy Pitre &#8212; Playing In The App Sandbox</a></li>
                <li><a href="${resource(dir:'slides', file:'macruby.pdf')}">Jonathan Penn &#8212; MacRuby</a></li>
                <li><a href="${resource(dir:'slides', file:'tightrope.pdf')}">Boisy Pitre &#8212; Walking The Tightrope</a></li>
                <li><a href="${resource(dir:'slides', file:'animation.pdf')}">Brian Coyner &#8212; Core Animation</a></li>
                <li><a href="${resource(dir:'slides', file:'keeping.pdf')}">Randy Beiter &#8212; Keeping Secrets For iOS Developers</a></li>
                <li><a href="${resource(dir:'slides', file:'shader.key')}">Brad Larson &#8212; OpenGL ES 2.0 Shaders</a></li>
                <li><a href="${resource(dir:'slides', file:'matrix.pdf')}">Mark Pospesel &#8212; Enter The Matrix</a></li>
                <li><a href="${resource(dir:'slides', file:'ocunit.pdf')}">Brian Coyner &#8212; Embracing OCUnit</a></li>
                <li><a href="${resource(dir:'slides', file:'motion.key')}">Jonathan Blocksom &#8212; Core Motion Crazy</a></li>
                <li><a href="${resource(dir:'slides', file:'arc.key')}">Brad Larson &#8212; Migrating To ARC</a></li>
            </ul>
        </div>
    </body>
</html>
