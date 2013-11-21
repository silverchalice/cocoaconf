<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>


<link rel="${resource(dir:'js/jquery', file:'jquery.countdown.css')}" type="text/css">
<style type="text/css">

  html {
    font-family: 'HelveticaNeue-Light', Arial, clean, sans-serif;
    font-size: 15px;
    line-height: 19px;
    text-align: center;
    padding: 0;
  }
  
  body {
    padding: 0;
    margin: 0 auto;
  }
  
  .clear {
  clear:both;
  }
  
  .main {
    margin 0 auto;
    padding: 0;
    min-height: 800px;
  }
    
  h1 {
    font-weight: normal;
    font-size: 36pt;
    margin: 50px 0;
  }
  
  h2 {
  
    background: #CECECE;
    padding: 15px 0 19px;
    margin: 65px 0 60px;
  }
  
  #timer {
    width:1000px;
    height:200px;
    font-size: 42pt;
  }
  
  #timer span {
    color: #1DA0D1;
  }
  
  .schedule {
  width: 1280px;
  margin:0 auto;
  }
  
  .schedule li {
    float:left;
    width: 250px;
    list-style: none;
  }
  
  .share {
    padding: 25px 0;
  }
  
  .logo {
  margin-top: 25px;
  }
  
  .slogan {
  font-size:24px;
  line-height: 25px;
  margin: 0 0 25px 0;
  }
  
  .slogan span {
  color: #1DA0D1;
  }
  

  
  #footer {
  text-align:center;
  background-color: black;
  height:15%;
  width:100%;
  position: bottom;
  bottom: 0;
  }
  
  #nav {
  width:750px;
  margin:0 auto;
  }
  
  #nav a {
    color:white;
    float:left;
    font-family:'HelveticaNeue-Light', Arial ,clean,sans-serif;
    font-size:16px;
    font-weight: normal;
    text-decoration: none;
    /*border-right: 1px solid gray;  */
    line-height:100px;
    height:100%;
    width:142px;
    padding-left:0;
    display: block;
    border-right: 1px solid black;
  }
  
  #nav a:hover {
  background-color: #2AB0E2;
  }
  .copy {
  background: black;
  color: white;
  font-size: 12px;
  padding: 20px 0;
  clear:both;
  }
  
</style>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="${resource(dir:'js/jquery', file:'jquery.countdown.js')}" type="text/javascript"></script>

<script type="text/javascript">
$(function () {
  var launchDate = new Date("December 2, 2013, 00:00:00")
  $('#timer').countdown({until: launchDate, layout:'<span>{d<}{dn}</span> {dl}, {d>}'+ 
    '<span>{hn}</span> {hl}, <span>{mn}</span> {ml}, <span>{sn}</span> {sl}'}); 
});
</script>

</head>


<body>

<g:layoutBody />

<script type="text/javascript" src="jquery/retina.js"></script>
</body>
</html>
