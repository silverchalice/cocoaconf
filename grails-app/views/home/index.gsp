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
    <h2 class="text-center">When / Where</h2>
    <div class="row-fluid">
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'chicago-2014']">
        <h3>Chicago, IL<br>
          <small>March 7–8 | Sold Out!</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'chicago-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'chicago-2014']">Session Topics</g:link></p></div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'dc-2014']">
        <h3>Wash<em class="hidden-tablet dc-title">ington</em> DC<br>
          <small>Mar<em class="hidden-tablet dc-title">ch</em> 28–29 | Sold Out!</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'dc-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'dc-2014']">Session Topics</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'dc-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Waitlist <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'austin-2014']">
        <h3>Austin, TX<br>
          <small>April 4–5 | Sold Out!</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'austin-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'austin-2014']">Session Topics</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'austin-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Waitlist <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'sanjose-2014']">
        <h3>San Jose, CA<br>
          <small>April 25–26</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'sanjose-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'sanjose-2014']">Session Topics</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'sanjose-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
      <div class="span2"> <g:link controller="conference" action="home" params="['tinyName': 'raleigh-2014']">
        <h3>Raleigh, NC<br>
          <small>May 9–10</small></h3>
        </g:link>
        <p><i class="ion-ios7-contact-outline"></i>&nbsp;<g:link controller="conference" action="speakers" params="['tinyName': 'raleigh-2014']">Speakers</g:link></p>
        <p><i class="ion-ios7-chatboxes-outline"></i>&nbsp;<g:link controller="conference" action="sessions" params="['tinyName': 'raleigh-2014']">Session Topics</g:link></p>
        <g:link controller="conference" action="register" params="['tinyName': 'raleigh-2014']" class="btn btn-flat-gray btn-large" title="Register for this city">Register <i class="ion-ios7-arrow-forward hidden-tablet"></i></g:link> </div>
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
        <h4 class="text-center"><span>GitHub</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="121" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/rob-rhyne', file: 'rob-rhyne.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Rob Rhyne</h3>
        <h4 class="text-center"><span> MartianCraft</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="137" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/sam-soffes', file: 'Sam-Soffes.jpg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Sam Soffes</h3>
        <h4 class="text-center"><span>Full Package</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="85" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/brittany-young', file: 'Brittany%20Tarvin%20Young%20square.jpeg')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Brittany Young</h3>
        <h4 class="text-center"><span> New Relic</span></h4>
      </div>
      <div class="span2"> <g:link controller="speaker" action="viewDetails" id="78" title="Learn more about this speaker"><img class="img-circle center" src="${resource(dir: 'images/speaker/marcus-zarra', file: 'zarra.png')}" width="170" alt="Speaker image"></g:link>
        <h3 class="text-center">Marcus Zarra</h3>
        <h4 class="text-center"><span>MartianCraft</span></h4>
      </div>
    </div>
  </div>
</div>
<div class="sessions">
  <div class="container">
    <h2 class="text-center">Sessions</h2>
    <div class="row-fluid">
      <div class="span5">
        <div class="media"> <g:link controller="conference" action="sessionDetails" params="${[tinyName: 'chicago-2014', slug: 'you-bought-what']}" title="Learn more" class="pull-left hidden-tablet"><img src="${resource(dir: 'images', file: 'justin-williams-bubble.png')}" alt="Speaker image"></g:link>
          <div class="media-body">
            <h3><g:link controller="conference" action="sessionDetails" params="${[tinyName: 'chicago-2014', slug: 'you-bought-what']}" class="muted">You Bought What?! Lessons From Acquiring And Running Glassboard</g:link></h3>
            <h4><span>by <g:link controller="conference" action="speakerDetails" id="111" params="${[tinyName: 'chicago-2014']}" title="Learn more about this speaker">Justin Williams</g:link></span></h4>
            <p>Learn as Justin walks you through the process of acquiring a product from a legal, professional, and technical perspective. He'll walk you through the process of dealing with lawyers and contracts, transitioning the technology from the old owner to Second Gear, handling the product announcements, and how he ramped up on new technologies quickly to hit the ground running with Glassboard after the sale announcement. &nbsp;<g:link controller="conference" action="sessionDetails" params="${[tinyName: 'chicago-2014', slug: 'you-bought-what']}">Read more&#8230;</g:link></p>
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
    <p class="text-center">View sessions at &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'chicago-2014']}">CocoaConf Chicago</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'dc-2014']}">CocoaConf D.C.</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'austin-2014']}">CocoaConf Mini Austin</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'sanjose-2014']}">CocoaConf San Jose</g:link> &nbsp; / &nbsp; <g:link controller="conference" action="sessions" params="${[tinyName: 'raleigh-2014']}">CocoaConf Mini Raleigh <i class="ion-ios7-arrow-forward"></i></g:link></p>
  </div>
</div>
<div class="comments">
  <div class="container">
    <h2 class="text-center">Comments</h2>
    <blockquote>
      <p class="quotation">“<em>All the #cocoaconf presenters are top shelf.</em> They present better than most marketing pros.”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'john-caccavale.jpg')}" alt="John photo" class="pull-left img-circle"> <cite>John Caccavale</cite><br> <a href="https://twitter.com/JohnCaccavale">@JohnCaccavale</a> </p>
    </blockquote>
    <blockquote>
      <p class="quotation">“To my surprise, my favorite moments of the conference weren’t the (admittedly fantastic) technical sessions I attended&#8230; It was nothing short of transformative to be <em>surrounded by people who were all passionate</em> about the same things I am.”</p>
      <p class="source"><img src="${resource(dir: 'images', file: 'tom-burns.jpg')}" alt="Tom photo" class="pull-left img-circle"><cite>Tom Burns</cite><br>
        <a href="http://tomburns.net">[[TBNBlog alloc] init];</a> </p>
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
      <div class="span3"><a href="http://www.macminicolo.net"><img class="center" width="200" src="${resource(dir: 'images', file: 'mac_mini_colo.png')}" alt="Wiley logo"></a></div>
      <div class="span4"><a href="http://revealapp.com"><img class="center" width="200" src="${resource(dir: 'images', file: 'reveal-logo-white.png')}" alt="Reveal logo"></a></div>
    </div>
  </div>
</div>
</body>
</html>
