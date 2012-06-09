<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Upload Image</title>
    </head>
    <body>
        <div class="body">
            <h1>Upload Image</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:uploadForm action="uploadImage" method="post">
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image">File:</label>
                                </td>
                                <td valign="top">
                                    <input type="file" id="image" name="image"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="Upload" /></span>
                </div>
            </g:uploadForm>
            <g:if test="${session.filename}">
                <p>&nbsp;</p><br />
                <p>Last uploaded image: ${session.filename}</p>
                <img src="${request.contextPath}/images/${session.filename}"/>
            </g:if>
        </div>
    </body>
</html>
