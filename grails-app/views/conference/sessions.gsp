<%@ page import="com.cocoaconf.Session" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sessions / ${conference?.city} / CocoaConf 2014: the conference for iPhone, iPad and Mac developers</title>
<meta name="layout" content="home" />
</head>

<body class="secondary ${conference?.city.toLowerCase()} sessions">
<div class="container main-text">
  <h1><span>${conference?.city} / </span> Sessions</h1>
</div>
<div class="content container">
  <div class="gradient"></div>
  <div class="row-fluid">
    <div class="span1"></div>
    <div class="span6">
      <div class="media"> <img src="${resource(dir: 'images', file: 'img_session_icon.png')}" alt="A speech bubble icon" class="pull-left media-object">
        <div class="media-body">
          <h1>Session List for<br>
            ${conference?.description}</h1>
        </div>
      </div>
    </div>
    <div class="span3">
    <h2><small>Early Bird Discounts Available!</small></h2>
      <g:link controller="conference" action="register" params='["tinyName": "${conference?.tinyName}"]' class="button"><button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button></g:link>
    </div>
  </div>
  <img class="photostrip hidden-phone" src="${resource(dir: 'images', file: 'img_photostrip_chicago_speaker.jpg')}" alt="Speakers at last year's CocoaConf"> 
  <!-- Example row of columns -->
  <div class="row-fluid">
    <div class="span2">
      <h3>${conference?.city} Links</h3>
      <ul class="nav nav-list">
        <li class="about"><g:link controller="conference" action="home" params='["tinyName": "${conference.tinyName}"]'>About</g:link></li>
        <li class="speakers"><g:link controller="conference" action="speakers" params='["tinyName": "${conference.tinyName}"]'>Speakers</g:link></li>
        <li class="sessions active"><g:link controller="conference" action="sessions" params='["tinyName": "${conference?.tinyName}"]'>Sessions</g:link></li>
        <li class="schedule"><a href="#">Schedule</a></li>
        <li class="venue"><g:link controller="conference" action="venue" params='["tinyName": "${conference?.tinyName}"]'>Venue</g:link></li>
        <li class="partners"><a href="#">Partners</a></li>
        <li class="register"><a href="#">Register</a></li>
      </ul>
    </div>
    <div class="span8">
      <ul class="media-list">
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" src="${resource(dir: 'images', file: 'photo_adamson_chris.jpg')}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h2 class="media-heading">AVFoundation Workshop <small>/ <a href="adamson_chris.html">Chris&nbsp;Adamson</a></small></h2>
            <p>Details coming soon!</p>
          </div>
        </li>
        <hr>
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" src="${resource(dir: 'images', file: 'photo_dempsey_james.jpg')}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h2 class="media-heading">All Day iOS Tutorial <small>/ <a href="#">James Dempsey</a></small></h2>
            <p>New to iOS programming? This one day overview will introduce you to all the basic concepts you'll need to build an application. From using Xcode's templates to displaying lists of information and navigating between screens of information. When you finish the day you'll have a fully functional iOS app that you can show off to your friends. </p>
            <ol>
              <li>Getting Started, Fast!<br>
                From installing Xcode to posting a tweet in one short lesson. In this section we'll get started with a quick success and along the way learn the basics of Xcode.</li>
              <li>Objective-C, the important bits<br>
                All the ObjC you need to know, and a bit of cool bits and pieces thrown in for good measure. We'll also talk about some of the most commonly used classes from the Foundation framework.</li>
              <li>View Controllers<br>
                Gain essential understanding of one of the fundamental building blocks of iOS programming. In this section we'll learn how to connect the custom logic of our apps to the OS.</li>
              <li>Table Views<br>
                Lists of content are pervasive, in this section we'll see how table views work and discuss common performance pitfalls.</li>
              <li>Navigation &amp; Storyboards<br>
                Building more than the most rudimentary application requires more than one view controller, this section will cover how to use Storyboards to lay out the flow of your application and how to navigate between the multiple view controllers.</li>
            </ol>
          </div>
        </li>
        <hr>
        <li class="media"> <a class="pull-left" href="#"> <img class="media-object img-circle" src="${resource(dir: 'images', file: 'photo_steinberg_daniel.jpg')}" alt="Speaker photo"> </a>
          <div class="media-body">
            <h2 class="media-heading">Crazy and Focused <small>/ <a href="#">Daniel&nbsp;Steinberg</a></small></h2>
            <p>So much of the time we focus on what we do and how we do it.</p>
            <p>We read books on coding, we come to conferences, we download open source and sample code, we read blogs and listen to podcasts.</p>
            <p>During this session we'll explore why we do what we do and for whom. Whether you're inspired or depressed by this talk, you will think differently the next time you open Xcode and type Command-Shift-N and you'll pause before you upload your next app to the app store. Uploading is when you sign your name on your work.</p>
          </div>
        </li>
      </ul>
    </div>
    <!--<div class="span2">
      <h4>Register for <span>March 7–8, 2014</span></h4>
      <button class="btn btn-block btn-large btn-flat">Register for ${conference?.city} <i class="ion-ios7-arrow-forward"></i></button>
      <hr>
      <h4>${conference?.city} Sponsors<br>
        &nbsp;</h4>
      <p><a href="#"><img src="${resource(dir: 'images', file: 'logo_wiley.jpg')}" alt="Wiley logo"></a></p>
      <hr>
      <a href="#"><img src="${resource(dir: 'images', file: 'logo_windows.jpg')}" alt="Windows Azure logo"></a>
      <hr>
      <p><a class="btn btn-flat-gray" href="#">Sponsorship Opportunities</a></p>
    </div>--> 
  </div>
  <div class="navbar navbar-inverse">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" href="#top"><i class="ion-ios7-arrow-thin-up"></i>&nbsp;Top </a>
        <!--<a class="brand" href="#"><img src="${resource(dir: 'images', file: 'img_cocoaconf_logo.png')}" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a>-->
        <div class="nav-collapse collapse">
          <ul class="nav">
            <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><cc:cityName id="${conference?.id}" /> &nbsp; <i class="ion-ios7-arrow-up"></i></a>
              <ul class="dropdown-menu">
                <!--<li class="nav-header">Choose a City</li>
              <li class="divider"></li>-->
              <li class="${conference?.id == 17 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'chicago-2014']">Chicago, IL</g:link></li>
              <li class="${conference?.id == 18 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'dc-2014']">Washington D.C.</g:link></li>
              <li class="${conference?.id == 20 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'austin-2014']">Austin, TX</g:link></li>
              <li class="${conference?.id == 19 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'sanjose-2014']">San Jose, CA</g:link></li>
              <li class="${conference?.id == 21 ? 'disabled' : ''}"><g:link controller="conference" action="home" params="['tinyName': 'raleigh-2014']">Raleigh, NC</g:link></li>
              </ul>
            </li>
          </ul>
          <ul class="nav pull-right">
            <li><a href="#">Speakers</a></li>
            <!-- <li class="active"><a href="#sessions">Sessions</a></li> -->
            <!-- <li><a href="#contact">Venues</a></li> -->
            <li><a href="#contact">Partners</a></li>
            <li><a href="#contact">Blog</a></li>
            <!-- <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li> -->
          </ul>
        </div>
        <!--/.nav-collapse --> 
      </div>
    </div>
  </div>
  <div class="gradient"></div>
</div>
    </body>
</html>
