<div id="conferenceNav">

    <g:if test="${conference.status == 'pending'}">
        <ul>
            <li><a href="#" class="current">Event Home</a></li>
            <li><a href="#">Speakers</a></li>
            <li><a href="#">Sessions</a></li>
            <li><a href="#">Schedule</a></li>
            <li><a href="#">Venue</a></li>
            <li><a href="#">Partners</a></li>
            <li><a href="#">Register</a></li>
        </ul>
    </g:if>
    <g:else>
        <ul>
            <li><g:link class="${current == 'home' ? 'current' : ''}" controller="conference" action="home" params='[tinyName: "${conference.tinyName}"]'>Event Home</g:link></li>
            <li><g:link class="${current == 'speakers' ? 'current' : ''}" controller="conference" action="speakers" params='[tinyName: "${conference.tinyName}"]'>Speakers</g:link></li>
            <li><g:link class="${current == 'sessions' ? 'current' : ''}"  controller="conference" action="sessions" params='[tinyName: "${conference.tinyName}"]'>Sessions</g:link></li>
            <li><g:link class="${current == 'schedule' ? 'current' : ''}" controller="conference" action="schedule" params='[tinyName: "${conference.tinyName}"]'>Schedule</g:link></li>
            <li><g:link class="${current == 'venue' ? 'current' : ''}" controller="conference" action="venue" params='[tinyName: "${conference.tinyName}"]'>Venue</g:link></li>
            <li><g:link class="${current == 'partners' ? 'current' : ''}" controller="conference" action="partners" params='[tinyName: "${conference.tinyName}"]'>Partners</g:link></li>
            <li><g:link class="${current == 'register' ? 'current' : ''}" controller="conference" action="register" params='[tinyName: "${conference.tinyName}"]'>Register</g:link></li>
        </ul>
    </g:else>

</div>

<br/>
<br/>
<h2 style="color:#1da0d1;"><g:link controller="mugShot" action="list">Our Mug</g:link></h2>
<g:link controller="mugShot" action="list"><g:img dir="images" file="mugThumb.png" style="width:160px; margin:10px" /> </g:link>
<br/>
<br/>
<h2 style="color:#1da0d1;">Our Sponsors</h2>
<br/>
<div id="confPartners">
    <g:each in="${conference.getSponsorPartners()}" var="partner">
        <a href="${partner.url}"><img src="${resource(dir:'images', file: partner.logoFile)}" alt="${partner.name}" /></a>
    </g:each>
    <a href="${resource(dir:'images', file:'sponsorship.pdf')}">Sponsorships Available</a>
</div>
<br/><br/>