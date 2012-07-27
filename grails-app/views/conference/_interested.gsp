
<div style="float:left; width: 480px;">

    <h1>${conference.description}
    <br/>
    ${conference?.blurb}
    <br/>
    <h3>${flash?.message}</h3>
    <h2 style="margin-top: 15px;">Enter your email address if you would like to be notified when registration opens for ${conference.description}:</h2><br />
    <g:form controller="interest" action="save">
        <input type="hidden" name="conference.id" value="${conference?.id}" />
        <input name="email" />
        <input type="submit" value="Submit" />
    </g:form>
</div>