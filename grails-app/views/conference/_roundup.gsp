<%@ page import="com.cocoaconf.BlogLink" %>

<p>${conference.galleryBlurb}</p>
<h2 style="margin-top: 15px;">What people are saying about ${conference.description}:</h2><br />

<g:each in="${BlogLink.findAllByEvent(conference, [sort:'priority', order:'asc'])}" var="link">
    <div class="blogLink">
        <h3 style="color: #1da0d1">${link.title}</h3>
        <p>&#8220;${link.snippet}&#8221;

            <g:if test="${link?.username}">
                <a href="${link.url}" style="font-weight: bold">${link?.username}</a></p>
            </g:if>
            <g:else>
                <a href="${link.url}" style="font-weight: bold">Read more...</a></p>
            </g:else>
    </div>
</g:each>