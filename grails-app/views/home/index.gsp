<!DOCTYPE html>
<html lang="en">
<head>
<title>CocoaConf: The developer conference for those who think different.</title>
<meta name="layout" content="homepage" />
</head>
<body>
<div class="about">
  <div class="container">
    <div class="media"> <img src="${resource(dir: 'images', file: useImg > 75 ? 'img_imac.png' : 'img_iphone_c.png')}" alt="${useImg > 75 ? 'An iMac' : 'An iPhone 5c'}" class="pull-right ${useImg > 75 ? 'imac' : 'iphone'}"></a>
      <div class="media-body">
        <h2>About CocoaConf</h2>
        <p class="lead">CocoaConf is a touring training conference for iPhone, iPad, and Mac developers. We bring some of the best authors, trainers, and speakers to the most passionate, engaged developers in a region&#8212;together, they make magic!</p>
      </div>
    </div>
  </div>
</div>
<div class="locations">
  <div class="container">
    <h2 class="text-center">Spring Tour 2015</h2>
    <div class="row-fluid">
      <div class="span1"></div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'chicago-2015']">
        <h3>Chicago, IL<br>
          <small>March 27–28</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'chicago-2015']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'chicago-2015']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'chicago-2015']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'dc-2015']">
        <h3>Washington DC<br>
          <small>April 10–11</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'dc-2015']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'dc-2015']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'dc-2015']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'portland-2015']">
        <h3>Portland, OR<br>
          <small>May 8–9</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'portland-2015']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'portland-2015']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'portland-2015']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'austin-2015']">
        <h3>Austin, TX<br>
          <small>May 22–23</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'austin-2015']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'austin-2015']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'austin-2015']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span1"></div>
    </div>
  </div>
</div>
<div class="speakers">
  <div class="container">
    <h2 class="text-center">Speakers</h2>
    <p class="lead text-center">CocoaConf speakers are thought leaders, authors, and professional iOS and OS X developers. <a href="${createLink(controller: 'speaker', action: 'speakers')}" title="All speakers">Meet them all <i class="ion-ios7-arrow-forward"></i></a></p>
    <p>&nbsp;</p>
    <div class="row-fluid">
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="125" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/danny-greg', file: 'danny-greg.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Danny Greg</h3>
        <h4 class="text-center"><span> Mailbox</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="156" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images', file: 'jean-macdonald.png')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Jean MacDonald</h3>
        <h4 class="text-center"><span>App Camp For Girls</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="108" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/neven-mrgan', file: 'Neven-Mrgan.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Neven Mrgan</h3>
        <h4 class="text-center"><span> Panic Inc</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="3" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/chris--adamson', file: 'Chris_Adamson.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Chris Adamson</h3>
        <h4 class="text-center"><span>Rev.com</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="130" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/laura-savino', file: 'laura-savino.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Laura Savino</h3>
        <h4 class="text-center"><span>Khan Academy</span></h4>
      </div>
    </div>
  </div>
</div>
<!--
<div class="sessions">
  <div class="container">
    <h2 class="text-center">Sessions</h2>
    <div class="row-fluid">
      <div class="span5">
        <div class="media"> <g:link controller="conference" action="sessionDetails" params="${[tinyName: 'sanjose-2014', slug: 'uikit-dynamics-penn']}" title="Learn more" class="pull-left hidden-tablet"><img src="${resource(dir: 'images', file: 'jonathan-penn-bubble.png')}" alt="Speaker image"></g:link>
          <div class="media-body">
            <h3><g:link controller="conference" action="sessionDetails" params="${[tinyName: 'sanjose-2014', slug: 'uikit-dynamics-penn']}" class="muted">Sure, UIKit Dynamics... But Is It A Good Idea?</g:link></h3>
            <h4><span>by <g:link controller="conference" action="speakerDetails" id="12" params="${[tinyName: 'sanjose-2014']}" title="Learn more about this speaker">Jonathan Penn</g:link></span></h4>
            <p>The power to build dynamic animations with UIKit Dynamics is intoxicating. No longer are we bound to the cruel taskmasters of deterministic timing functions! Break free! But does this freedom come with it's own yet-to-be–discovered burdens? We'll take a look at what sets UIKit dynamics apart, and try to figure out if it's really useful or not. &nbsp;<g:link controller="conference" action="sessionDetails" params="${[tinyName: 'sanjose-2014', slug: 'uikit-dynamics-penn']}">Read more&#8230;</g:link></p>
          </div>
        </div>
      </div>
      <div class="span5">
        <div class="media"> <g:link controller="conference" action="sessionDetails" params="${[tinyName: 'dc-2014', slug: 'designing-app-engagement']}" title="Learn more" class="pull-left hidden-tablet"><img src="${resource(dir: 'images', file: 'Jaimee-Newberry-bubble.png')}" alt="Speaker image"></g:link>
          <div class="media-body">
            <h3><g:link controller="conference" action="sessionDetails" params="${[tinyName: 'dc-2014', slug: 'designing-app-engagement']}" class="muted">Designing App Engagement</g:link></h3>
            <h4><span>by <g:link controller="conference" action="speakerDetails" id="52" params="${[tinyName: 'dc-2014']}" title="Learn more about this speaker">Jaimee Newberry</g:link></span></h4>
            <p>With so many apps in the app store, what can you be thinking about to get and keep people interested in your app? Having a great concept is just the beginning. How much thinking goes into the personality and tone of your app? What about writing the error messages, alerts, calls-to-action, app descriptions or release notes? &nbsp;<g:link controller="conference" action="sessionDetails" params="${[tinyName: 'dc-2014', slug: 'designing-app-engagement']}">Read more&#8230;</g:link></p>
          </div>
        </div>
      </div>
    </div>
    <hr>
    <p class="text-center">View sessions at &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'columbus-2014']}">CocoaConf Columbus</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'lasvegas-2014']}">CocoaConf Las Vegas</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'seattle-2014']}">CocoaConf Seattle</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'boston-2014']}">CocoaConf Boston</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'atlanta-2014']}">CocoaConf Atlanta <i class="ion-ios7-arrow-forward"></i></g:link></p>
  </div>
</div>
-->
<div class="comments">
  <div class="container">
    <h2 class="text-center">Comments</h2>
    <blockquote>
      <p class="quotation">“&#8230;<em>I absolutely encourage anyone interested in developing iOS or OS X software to browse the sessions of a CocoaConf event near you.</em> I can&#8217;t emphasize enough the knowledge value that developers will get from attending.”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'ss.jpeg')}" alt="Scott photo" class="pull-left img-circle"> <cite>Scott Starr</cite><br> <a href="https://blog.safaribooksonline.com/2014/11/17/cocoaconf-boston-2014-cocoa-developer-conference-humans/">Safari Blog</a> </p>
    </blockquote>
    <blockquote>
      <p class="quotation">“&#8230;if you get a chance to attend a CocoaConf, grab the opportunity. <em>I’ve been 3 times, and had great experiences at every one.</em>”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'ms.jpg')}" alt="Mark photo" class="pull-left img-circle"><cite>Mark Struzinski</cite><br>
        <a href="http://markstruzinski.com/blog/2014/11/16/cocoaconf-boston-2014/">Thoughts on software development and technology  | Mark Struzinski</a> </p>
    </blockquote>
  </div>
</div>
<div class="speakers">
  <div class="container">
    <h2 class="text-center">Training by CocoaConf</h2>
    <p class="lead text-center">Apple developer training by the best in the business.</p>
    <p>&nbsp;</p>
    <div class="row-fluid">
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="1" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/daniel-steinberg', file: 'Daniel-Steinberg.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Daniel Steinberg</h3>
        <h4 class="text-center"><span>Dim Sum Thinking</span></h4>
      </div>
      <div class="span6">
      <h3>Spring 2015 Term <small>May 11&#8211;14, Orlando, FL</h3>
      <p class="lead" style="margin:0 15px 0 0;">We&#8217;ll be running two classes side by side: James Dempsey will be teaching “Beginning iOS Programming” and Daniel Steinberg will be teaching an “iOS 8 Programming in Swift” course for experienced iOS developers. <a href="${createLink(controller: 'term', action: 'index', params: ['slug': 'spring-2015'])}">Read more <i class="ion-ios7-arrow-forward"></i></a></p>
    </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="60" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/james-dempsey', file: 'James Dempsey.JPG')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">James Dempsey</h3>
        <h4 class="text-center"><span>Tapas Software</span></h4>
      </div>
    </div>
  </div>
</div>
<div class="yosemite">
  <div class="container">
    <h2 class="text-center">Yosemite</h2>
    <p class="lead text-center">A conference for Apple developers, designers, and enthusiasts, held in the heart of Yosemite National Park. <a href="${createLink(controller: 'home', action: 'yosemite')}" title="Read more about the Yosemite conference">Read more <i class="ion-ios7-arrow-forward"></i></a></p>
    <p>&nbsp;</p>
    <div class="row-fluid">
      <div class="span2"> <img class="img-circle center" src="${resource(dir: 'images/yosemite/speakers', file: 'Andy Ihnatko.jpg')}" width="170" alt="Speaker image">
        <h3 class="text-center">Andy Ihnatko</h3>
        <h4 class="text-center"><span> Chicago Sun-Times</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="125" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/yosemite/speakers', file: 'brent simmons.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Brent Simmons</h3>
        <h4 class="text-center"><span>Q Branch</span></h4>
        <h4 class="text-center"><span>Vesper</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="125" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/yosemite/speakers', file: 'Serenity Caldwell.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Serenity Caldwell</h3>
        <h4 class="text-center"><span> iMore</span></h4>
      </div>
      <div class="span2"> <img class="img-circle center" src="${resource(dir: 'images/yosemite/speakers', file: 'Neven Mrgan.jpg')}" width="170" alt="Speaker image">
        <h3 class="text-center">Neven Mrgan</h3>
        <h4 class="text-center"><span>Panic Inc.</span></h4>
      </div>
      <div class="span2"> <img class="img-circle center" src="${resource(dir: 'images/yosemite/speakers', file: 'Jim_Dalrymple.jpg')}" width="170" alt="Speaker image">
        <h3 class="text-center">Jim Dalrymple</h3>
        <h4 class="text-center"><span>The Loop</span></h4>
      </div>
    </div>
  </div>
</div>
<div class="share">
  <div class="container">
    <h2 class="pull-left">Spread the Word</h2>
    <p> <a href="https://twitter.com/intent/tweet?text=CocoaConf%3A%20The%20developer%20conference%20for%20those%20who%20think%20different&url=http://cocoaconf.com" class="share twitter text-center"><i class="ion-social-twitter"></i></a> <a href="http://www.facebook.com/sharer/sharer.php?s=100&p[url]=http://cocoaconf.com&p[images][0]=&p[title]=CocoaConf:%20The%20developer%20conference%20for%20those%20who%20think%20different&p[summary]=%E2%80%9CCocoaConf%20is%20a%20touring%20training%20conference%20for%20iPhone,%20iPad,%20and%20Mac%20developers.%20We%20bring%20some%20of%20the%20best%20authors,%20trainers,%20and%20speakers%20to%20the%20most%20passionate,%20engaged%20developers%20in%20a%20region%E2%80%94together,%20they%20make%20magic!%E2%80%9D" class="share facebook text-center"><i class="ion-social-facebook"></i></a> <a href="https://plus.google.com/share?url=http://cocoaconf.com" class="share google text-center"><i class="ion-social-googleplus-outline"></i></a> <a href="mailto:?subject=CocoaConf%3A%20The%20developer%20conference%20for%20those%20who%20think%20different&body=%22CocoaConf%20is%20a%20touring%20training%20conference%20for%20iPhone%2C%20iPad%2C%20and%20Mac%20developers.%20We%20bring%20some%20of%20the%20best%20authors%2C%20trainers%2C%20and%20speakers%20to%20the%20most%20passionate%2C%20engaged%20developers%20in%20a%20region--together%2C%20they%20make%20magic%21%22%0A%0Ahttp%3A//cocoaconf.com" class="share email text-center"><i class="ion-ios7-email"></i></a> <a href="https://alpha.app.net/intent/post/?text=CocoaConf%3A%20The%20developer%20conference%20for%20those%20who%20think%20different&url=http://cocoaconf.com" class="share more text-center"><i class="ion-ios7-plus-outline"></i></a> <a href="https://twitter.com/CocoaConf" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @CocoaConf</a> 
      <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script> 
    </p>
    </div>
</div>
<div class="sponsors">
  <div class="container">
    <h2 class="text-center">Sponsors</h2>
    <div class="row-fluid">
      <div class="span3"><a href="https://github.com"><img class="center" width="200" src="${resource(dir: 'images', file: 'github-white.png')}" alt="GitHub logo"></a></div>
      <div class="span3"><a href="http://martiancraft.com/"><img class="center" width="200" src="${resource(dir: 'images', file: 'MartianCraft-White.png')}" alt="MartianCraft logo"></a></div>
      <div class="span4"><a href="http://www.crittercism.com/"><img class="center" width="500" src="${resource(dir: 'images', file: 'white-Crittercism.png')}" alt="Crittercism logo"></a></div>
    </div>
  </div>
</div>
</body>
</html>
