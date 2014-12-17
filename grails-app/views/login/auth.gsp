<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="about" />
        <title>CocoaConf | Login</title>
        <style type="text/css">
          table td p {
            padding: 10px 0 0 20px;
          }
          form {
            width: 100%;
          }
          p.l {
            font-size: larger;
          }
          ul#about-ul {
            text-align: left;
            padding-left: 0;
          }
          ul#about-ul li {
            list-style-position: inside;
            margin: 20px 0;
          }
          p.indv {
            margin: 100px auto;
          }
          p#resume {
            margin-top: 90px;
          }
      </style>
    </head>
    <body>
    <div class="container main-text">
        <h1><span></span> Please Log In</h1>
    </div>
    <div class="content container">
        <div class="gradient"></div>

        <!-- Main hero unit for a primary marketing message or call to action -->
        <g:if test="${flash.message}">
          <p class="announce" style="margin: 0 50px;">${flash.message}</p>
          <p>&nbsp;</p>
        </g:if>
        <div class="row-fluid">
            <div class="span1"> </div>
                <div class="span8">
                    <br />
                    <form action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
                        <table cellpadding="10" style="width: 100%;" border="0">
                          <colgroup>
                            <col span="1" style="width: 30%;">
                            <col span="1" style="width: 70%;">
                          </colgroup>
                          <tbody>
                            <tr>
                              <td><p class="l">Email:</p></td>
                              <td align="center"><p><input type='text' class='text_' name='j_username' id='username' style="margin: 3px 20px 0 0; width: 700px;" /></p></td>
                            </tr>
                            <tr>
                              <td><p class="l">Password:</p></td>
                              <td align="center"><p><input type='password' class='text_' name='j_password' id='password' style="margin: 3px 20px 0 0; width: 700px;" /></p></td>
                            </tr>
                            <tr>
                              <td><p class="l"></p></td>
                              <td align="center"><p style="margin-right: 20px; text-align: right;">(<g:link style="font-size: 16px" action="password_forgettification">Forgot password?</g:link>)</p></td>
                            </tr>
                            <tr>
                              <td align="center"><p style="margin-right: 20px; text-align: center;"><input style="font-size: larger; width: 100px; height: 50px;" type="submit" value="Login" class="button" style="margin-left: 10px;"  /></p></td>
                              <td><p></p></td>
                            </tr>
                          </tbody>
                        </table>
                    </form>
                    </div>
                <div class="span1"> </div>
            </div>
        <p>&nbsp;</p>
        </div>
        </div>
    </body>
</html>
