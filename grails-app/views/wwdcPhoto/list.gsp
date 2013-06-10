
<%@ page import="com.cocoaconf.WwdcPhoto" %>
<html xmlns="http://www.w3.org/1999/html">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="home" />
         <meta name="tab" content="home" /> <!-- must changes this... -->
        <g:set var="entityName" value="${message(code: 'wwdcPhoto.label', default: 'MugShot')}" />
        <title>CocoaConf | WWDC Week Photo Contest</title>

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

        			$(".wwdcphoto").fancybox({
        				'overlayShow'	: false,
        				'transitionIn'	: 'elastic',
        				'transitionOut'	: 'elastic'
        			});


                    $('.wwdcphoto img').corner('5px');

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
         <h1>CocoaConf WWDC Week Photo Contest</h1>
        <p>Here are the latest entries in our WWDC Week Photo Contest.</p>
        <p>Looking good so far. Keep them coming.  We'll collect entries until Saturday, June 15th. (Note: Click the caption to see the photo source.)</p>
        <p><strong>For details about the contest and how you can participate, <a href="http://cocoaconf.com/blog/wwdc-contest-2013">check out this blog post</a>.</strong></p>
        <g:each in="${wwdcPhotoInstanceList}" status="i" var="wwdcPhoto">
            <div style="float:left; width:240px; text-align: center; margin: 0 40px 60px 40px; height: 240px">

                <g:if test="${wwdcPhoto?.imagePath}">

                    <a class="wwdcphoto"  href="${request.contextPath}/${wwdcPhoto?.imagePath}"><img alt="example1" style="margin-top:40px; max-width: 240px; max-height: 240px;" src="${request.contextPath}/${wwdcPhoto?.imagePath}" /></a>

                </g:if>


                 <br/>

                <p><g:link url="${wwdcPhoto.url}" style="font-weight:bold; font-size:14px; padding:10px 0; text-decoration: none;">${wwdcPhoto.caption}</g:link></p>
            </div>

        </g:each>

    </body>
</html>
