<%@ page import="com.cocoaconf.BlogLink" %>
<div style="float:left; width: 480px;">


    <br/>
    ${conference.galleryBlurb}
    <br/>
    <h2 style="margin-top: 15px;">What people are saying about ${conference.description}:</h2><br />
    <p>

    </p>
    <g:each in="${BlogLink.findAllByEvent(conference)}" var="link">
        <div class="blogLink">
            <h3 style="color: #1da0d1">${link.title}</h3>
            <p>&#8220;${link.snippet}&#8221; <a href="${link.url}" style="font-weight: bold">Read more...</a></p>
        </div>
    </g:each>
</div>