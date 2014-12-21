<%@ page import="com.cocoaconf.YosemiteActivity" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Yosemite, by CocoaConf</title>
<meta name="layout" content="y" />
<style type="text/css">
  th { padding-top: 1000px; }
  table td p { text-align: center; }
</style>
</head>
<body>
<a name="top"></a> 
<!--<div class="navbar navbar-inverse navbar-static-top">
  <div class="navbar-inner">
    <div class="container">
      <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="brand" href="/"><img src="images/yosemite/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo"> CocoaConf</a> 
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Choose a City &nbsp; <i class="ion-ios7-arrow-down"></i></a>
            <ul class="dropdown-menu">
              <li class="nav-header">Choose a City</li>
              <li class="divider"></li>
              <li><a href="chicago.html">Chicago, IL</a></li>
              <li><a href="#">Washington D.C.</a></li>
              <li><a href="#">Austin, TX</a></li>
              <li><a href="#">San Jose, CA</a></li>
              <li><a href="#">Raleigh, NC</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav pull-right">
          <li><a href="#">Speakers</a></li>
          <li><a href="#sessions">Sessions</a></li>
          <li><a href="#contact">Venues</a></li>
          <li><a href="#contact">Partners</a></li>
          <li><a href="#contact">Blog</a></li>
          <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li>
        </ul>
      </div>--> 
<!--/.nav-collapse 
    </div>
  </div>
</div>-->
<a name="register"></a>
<div class="sessions">
  <div class="container">
    <h2 class="text-center">Select activities at Yosemite</h2>
    <div class="row-fluid">
      <div class="span10">
        <p>One of our goals for the Yosemite conference is to make sure we take advantage of the Park while we&#8217;re there. We will have free time between lunch and the evening sessions, and we are offering the following optional activities that you can take advantage of.  You can choose one activity for each of the two full conference days&#8212;Tuesday (April 21) and Wednesday (April 22).  </p>

        <p><strong>We need to reserve space for these activities, so please make your selection before February 27th.  Thanks!</strong></p>
        <br />
        <table cellpadding="10" style="width: 100%; background: url(../images/bg_main.jpg) repeat center top;" border="1">
          <colgroup>
            <col span="1" style="width: 70%;">
            <col span="1" style="width: 15%;">
            <col span="1" style="width: 15%;">
          </colgroup>
          <thead>
            <th>Activity</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
          </thead>
          <tbody>
            <g:each in="${activities}" var="yosemiteActivity">
              <tr>
                <td><p><strong>${yosemiteActivity.name}</strong> <br />
                    <span id="${yosemiteActivity.id}size">(${yosemiteActivity.groupSize} left)</span> </p>
                    <p style="font-size: smaller;"><em>${yosemiteActivity.description}</em></p></td>
                <td align="center"><p>
                  <g:if test="${yosemiteActivity.dayOne}">
                    <g:checkBox class="dayOne" name="${yosemiteActivity.id},dayOne" value="${activityIds.contains(yosemiteActivity.id)}" update="${yosemiteActivity.id}size" onchange="${remoteFunction(action:'toggle_activity_selection', id: yosemiteActivity.id, update: yosemiteActivity.id + 'size', params:'\'attending=\' + this.checked')}" />
                  </g:if>
                  <g:else>
                    <p>N/A</p>
                  </g:else>
                </p></td>
                <td align="center"><p>
                  <g:if test="${yosemiteActivity.dayTwo}">
                    <g:checkBox class="dayTwo" name="${yosemiteActivity.id},dayTwo" value="${activityIds.contains(yosemiteActivity.id)}" update="${yosemiteActivity.id}size" onchange="${remoteFunction(action:'toggle_activity_selection', id: yosemiteActivity.id, update: yosemiteActivity.id + 'size', params:'\'attending=\' + this.checked')}" />
                  </g:if>
                  <g:else>
                    <p>N/A</p>
                  </g:else>
                </p></td>
                </p></td>
              </tr>
            </g:each>
          </tbody>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
    </div>
    <hr>
  </div>
</div>

<!--<div class="comments">
  <div class="container">
    <h2 class="text-center">Comments</h2>
    <blockquote>
      <p class="quotation">“It was a great conference—<em>well worth the cost of admission and the time spent.</em> There were two days of really great talks put together by developers who really want to share their knowledge.”</p>
      <p class="source"><img src="images/yosemite/img_benjamin.jpg" alt="Benjamin photo" class="pull-left img-circle"><cite>Benjamin Turner</cite><br>
        <a href="https://twitter.com/kindjar">@kindjar</a> </p>
    </blockquote>
    <blockquote>
      <p class="quotation">“Going to  cocoa conf... has removed that nagging doubt that maybe this isn&#8217;t for me. Now, more than ever, <em>I am determined to release my first two apps</em> into the app store.”</p>
      <p class="source"><img src="images/yosemite/img_dennis.jpg" alt="Dennis photo" class="pull-left img-circle"> <cite>Dennis Bowles</cite><br>
        <a href="http://www.iphoneappexperiment.com/">iphoneappexperiment.com</a> </p>
    </blockquote>
  </div>
</div>
<div class="share">
  <div class="container">
    <h2 class="pull-left">Spread the Word</h2>
    <p> <a href="#" class="share twitter text-center"><i class="ion-social-twitter"></i></a> <a href="#" class="share facebook text-center"><i class="ion-social-facebook"></i></a> <a href="#" class="share google text-center"><i class="ion-social-googleplus-outline"></i></a> <a href="#" class="share email text-center"><i class="ion-ios7-email"></i></a> <a href="#" class="share more text-center"><i class="ion-ios7-plus-outline"></i></a> <a href="https://twitter.com/CocoaConf" class="twitter-follow-button" data-show-count="false" data-size="large">Follow @CocoaConf</a> 
      <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script> 
    </p>
  </div>
</div>
<div class="sponsors">
  <div class="container">
    <h2 class="text-center">Sponsors</h2>
    <div class="row-fluid">
      <div class="span3"><a href="#"><img class="center" src="images/yosemite/logo_wiley_white.png" alt="Wiley logo"></a></div>
      <div class="span4"><a href="#"><img class="center" src="images/yosemite/logo_ranch_white.png" alt="logo"></a></div>
      <div class="span3"><a href="#"><img class="center" src="images/yosemite/logo_wiley_white.png" alt="Wiley logo"></a></div>
    </div>
  </div>
</div>--> 
<!--<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" href="#top"><i class="ion-ios7-arrow-thin-up"></i>&nbsp;Top </a> 
      <div class="nav-collapse collapse">
        <ul class="nav">
          <li class="dropup"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Choose a City &nbsp; <i class="ion-ios7-arrow-up"></i></a>
            <ul class="dropdown-menu">
              <li><a href="chicago.html">Chicago, IL</a></li>
              <li><a href="#">Washington D.C.</a></li>
              <li><a href="#">Austin, TX</a></li>
              <li><a href="#">San Jose, CA</a></li>
              <li><a href="#">Raleigh, NC</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav pull-right">
          <li><a href="#">Speakers</a></li>
          <li><a href="#sessions">Sessions</a></li>
          <li><a href="#contact">Venues</a></li>
          <li><a href="#contact">Partners</a></li>
          <li><a href="#contact">Blog</a></li>
          <li><a href="#contact">Register &nbsp; <i class="ion-ios7-arrow-forward"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</div>-->
<footer>
  <div class="container"> <a class="brand" href="/"><img src="images/yosemite/img_cocoaconf_logo.png" height="40" width="40" alt="CocoaConf logo" class="pull-left"></a>
    <p class="text-right">&copy; 2014 Simply Cocoa, LLC. &nbsp;| &nbsp; About the <a href="/family" title="Learn more about the Kleins">Klein Family</a> &nbsp; | &nbsp; Site by <a href="http://www.gurrydesign.com" title="Hand-crafted web and graphic design from Peter Gurry" target="_blank">Gurry Design</a></p>
  </div>
</footer>
</div>
<!-- /container --> 
</body>
</html>
