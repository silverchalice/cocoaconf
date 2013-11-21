<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title><g:layoutTitle default="CocoaConf | 2014 Spring Tour" /></title>
<link rel="${resource(dir:'js/jquery', file:'jquery.countdown.css')}" type="text/css">
<g:if test="${session.beautiful}">
  <link rel="stylesheet" href="${resource(dir:'css', file:'b.css')}" type="text/css">
</g:if>
<g:else>
  <link rel="stylesheet" href="${resource(dir:'css', file:'s.css')}" type="text/css">
</g:else>

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
