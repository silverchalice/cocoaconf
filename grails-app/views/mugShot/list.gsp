
<%@ page import="com.cocoaconf.MugShot" %>
<html xmlns="http://www.w3.org/1999/html">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="public" />
         <meta name="tab" content="home" /> <!-- must changes this... -->
        <g:set var="entityName" value="${message(code: 'mugShot.label', default: 'MugShot')}" />
        <title>CocoaConf | Mug Shots</title>

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


        <script src="${resource(dir:'js', file:'jquery-1.5.1.min.js')}" type="text/javascript"></script>
        <script type="text/javascript" src="${resource(dir: 'js/fancybox', file: 'jquery.mousewheel-3.0.4.pack.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/fancybox', file: 'jquery.fancybox-1.3.4.pack.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/fancybox', file: 'j')}"></script>
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/fancybox', file: 'jquery.fancybox-1.3.4.css')}" media="screen" />

        <script type="text/javascript">
        		$(document).ready(function() {
        			/*
        			*   Examples - images
        			*/

        			//$("a#example1").fancybox();

        			$(".mugshot").fancybox({
        				'overlayShow'	: false,
        				'transitionIn'	: 'elastic',
        				'transitionOut'	: 'elastic'
        			});

        			/*$("a#example3").fancybox({
        				'transitionIn'	: 'none',
        				'transitionOut'	: 'none'
        			});

        			$("a#example4").fancybox({
        				'opacity'		: true,
        				'overlayShow'	: false,
        				'transitionIn'	: 'elastic',
        				'transitionOut'	: 'none'
        			});

        			$("a#example5").fancybox();

        			$("a#example6").fancybox({
        				'titlePosition'		: 'outside',
        				'overlayColor'		: '#000',
        				'overlayOpacity'	: 0.9
        			});

        			$("a#example7").fancybox({
        				'titlePosition'	: 'inside'
        			});

        			$("a#example8").fancybox({
        				'titlePosition'	: 'over'
        			});

        			$("a[rel=example_group]").fancybox({
        				'transitionIn'		: 'none',
        				'transitionOut'		: 'none',
        				'titlePosition' 	: 'over',
        				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
        					return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
        				}
        			});


        			*   Examples - various


        			$("#various1").fancybox({
        				'titlePosition'		: 'inside',
        				'transitionIn'		: 'none',
        				'transitionOut'		: 'none'
        			});

        			$("#various2").fancybox();

        			$("#various3").fancybox({
        				'width'				: '75%',
        				'height'			: '75%',
        				'autoScale'			: false,
        				'transitionIn'		: 'none',
        				'transitionOut'		: 'none',
        				'type'				: 'iframe'
        			});

        			$("#various4").fancybox({
        				'padding'			: 0,
        				'autoScale'			: false,
        				'transitionIn'		: 'none',
        				'transitionOut'		: 'none'
        			});*/

        		});
        	</script>

    </head>
    <body>
         <h1>CocoaConf - The Mug</h1>
        <g:img dir="images" file="mug.png" style="float:left; width:100px; margin: 10px" />
        <p>CocoaConf is all about relevant content, high-quality speakers and sessions, and a top-notch attendee experience. But that doesn't mean we don't give any thought to the conference swag, and one of our attendees favorite souvenirs has been our exclusive, high-capacity CocoaConf mug.</p>
        <p>In fact, some of our attendees loved it so much, they started sharing pictures of their CocoaConf mugs in action. We've even learned of some creative uses for the mug that we certainly wouldn't have thought of... <a href="">iPhone amplifier, anyone?</a></p>
        <p>We decided, instead of keeping all these fun tidbits to ourselves, why not share them with the rest of the OS X/iOS community?</p>

        <g:img dir="images" file="mug2.png" style="float:right; width:100px; margin: 10px" />
        <h3>Got any "mugshots" you want to share?</h3>
        <p>We'd love to post your "mugshots" here as well! Just send us your image over Twitter at <a href="http://twitter.com/cocoaconf">@cocoaconf</a>. We'd love to see your CocoaConf mug in the wild, whether it's upping the volume of your favorite podcast, supplying you with extra doses of caffeine for those late-night crunches, or collecting stray pencils and paper clips... does anyone seriously use those anymore?</p>

        <g:each in="${mugShotInstanceList}" status="i" var="mugShot">
            <div style="float:left; width:240px; margin: 0 40px 60px 40px; height: 240px">

                <g:if test="${mugShot?.imagePath}">

                    <a class="mugshot"  href="${request.contextPath}/${mugShot?.imagePath}"><img alt="example1" style="margin-top:40px; max-width: 240px; max-height: 240px;" src="${request.contextPath}/${mugShot?.imagePath}" /></a>


                </g:if>



                     <h3><g:link url="${mugShot.url}">${mugShot.caption}</g:link> </h3>

            </div>

        </g:each>

    </body>
</html>
