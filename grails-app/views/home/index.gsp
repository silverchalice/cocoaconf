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
    <h2 class="text-center">Fall Tour 2014</h2>
    <div class="row-fluid">
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'columbus-2014']">
        <h3>Columbus, OH<br>
          <small>August 8–9</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'columbus-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'columbus-2014']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'columbus-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'lasvegas-2014']">
        <h3>Las Vegas, NV<br>
          <small>September 19–20</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'lasvegas-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'lasvegas-2014']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'lasvegas-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'seattle-2014']">
        <h3>Seattle, WA<br>
          <small>October 17–18</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'seattle-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'seattle-2014']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'seattle-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'boston-2014']">
        <h3>Boston, MA<br>
          <small>November 14–15</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'boston-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'boston-2014']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'boston-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'atlanta-2014']">
        <h3>Atlanta, GA<br>
          <small>December 5–6</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'atlanta-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'atlanta-2014']">Sessions</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'atlanta-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
    </div>
  </div>
</div>
<div class="speakers">
  <div class="container">
    <h2 class="text-center">Speakers</h2>
    <p class="lead text-center">CocoaConf speakers are thought leaders, authors, and professional iOS and OS X developers. <a href="${createLink(controller: 'speaker', action: 'speakers')}" title="All speakers">Meet them all <i class="ion-ios7-arrow-forward"></i></a></p>
    <p>&nbsp;</p>
    <div class="row-fluid">
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="130" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images', file: 'laura-savino.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Laura Savino</h3>
        <h4 class="text-center"><span> Khan Academy</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="104" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/daniel-jalkut', file: 'Jalkut1.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Daniel Jalkut</h3>
        <h4 class="text-center"><span>Red Sweater</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="58" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/brent-simmons', file: 'BrentSimmons2.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Brent Simmons</h3>
        <h4 class="text-center"><span> Q Branch</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="52" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/jaimee-newberry', file: 'JaimeeNewberry.JPG')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Jaimee Newberry</h3>
        <h4 class="text-center"><span>Bests.com</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="50" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images', file: 'mattt_T.jpeg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Mattt Thompson</h3>
        <h4 class="text-center"><span>Panic Inc</span></h4>
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
      <p class="quotation">“If you haven’t attended a @cocoaconf before, seriously consider it. <em>That was 2 days of awesome.</em>”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'parrots.jpg')}" alt="Curtis photo" class="pull-left img-circle"> <cite>Curtis Herbert</cite><br> <a href="https://twitter.com/parrots">@parrots</a> </p>
    </blockquote>
    <blockquote>
      <p class="quotation">“<em>If you ever have a chance to attend a CocoaConf near you, you should without hesitation do so,</em> doubly so if you are like me 3 years ago and looking for inspiration on what you want your career to become.”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'robert-haworth.jpg')}" alt="Robert photo" class="pull-left img-circle"><cite>Robert Haworth</cite><br>
        <a href="http://robertchaworth.com">Another iOS Blaaahg</a> </p>
    </blockquote>
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
