<a href="${createLink(controller: 'conference', action: 'home', params: ['tinyName': conference.tinyName])}">
    <div class="conferenceCell" style="background: url(${resource(dir: 'images', file: conference.thumbnail )}) no-repeat bottom;">
        <div class="conferenceCellName">${conference.city}, ${conference.state} - ${conference.dates}</div>
    </div>
</a>

<br/>