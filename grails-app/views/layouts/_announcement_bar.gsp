<span>
	<a style="color:#ff9627; text-decoration: none" href="${request.contextPath}/raleigh-2012/home">
		CocoaConf Raleigh early bird registration ends October 12th
	</a>
</span>
<span style="color:#C0C0C0; margin-left:30px; margin-right:30px;">
	|
</span>
<span>
	<a style="color:#ff9627; text-decoration: none" href="${request.contextPath}/portland-2012/home">
		CocoaConf PDX ticket sales end October 21st
	</a>
</span>
<span style="color:#ffffff; float:right; margin-right:20px">
    <sec:ifLoggedIn>
       <g:link controller="logout" action="index">Logout</g:link>
    </sec:ifLoggedIn>
    <sec:ifNotLoggedIn>
       <g:link controller="login" action="index">Login</g:link>
    </sec:ifNotLoggedIn>
</span>
