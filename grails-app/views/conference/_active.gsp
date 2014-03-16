<p><cc:conferenceImage id="${conference.id}" /></p>
<p class="lead">${conference?.blurb}</p>
<p><g:link controller="conference" action="register" params="${[tinyName: conference?.tinyName]}" class="btn btn-flat btn-large">Register Today <i class="ion-ios7-arrow-forward"></i></g:link></p>
