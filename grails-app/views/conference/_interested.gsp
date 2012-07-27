<div style="float:left; width: 480px;">
    <h1>${conference.description} </h1>
    <div style="background-color: #eeeeee; padding:15px" class="interest">
        <h3>${conference?.blurb} </h3>

            <h4 style="margin-top: 15px;">Enter your email address if you would like to be notified when registration opens for ${conference.description}:</h4>
            <div id="interestForm" style="text-align: center; padding-bottom: 15px">
                <g:formRemote name="interest" update="interestForm"  method="GET" url="[controller: 'interest', action: 'saveInterest']">
                    <input type="hidden" name="conference.id" value="${conference?.id}" />
                    <input name="email" style="font-size: 16px" />
                    <input type="submit" value="Submit" class="button" style="margin-left: 10px;"  />
                </g:formRemote>
            </div>
    </div>

</div>