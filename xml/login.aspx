<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="Site.xsl"?>
<?xml-stylesheet type="text/css" href="../RenderFail.css"?>

<RDWAPage helpurl="http://go.microsoft.com/fwlink/?LinkId=141038" workspacename="HAL9000" baseurl="https://hal9000.gruposanjose.biz/RDWeb/Pages/en-US/">
  <RenderFailureMessage>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <title>Error: Unable to display RD Web Access</title>
        </head>
        <body>
            <h1>Error: Unable to display RD Web Access</h1>
            <p>An unexpected error has occurred that is preventing this page from being displayed correctly.</p>
            <p>Viewing this page in Internet Explorer with the Enhanced Security Configuration enabled can cause such an error.</p>
            <p>Please try loading this page without the Enhanced Security Configuration enabled. If this error continues to be displayed, please contact your administrator.</p>
        </body>
    </html> 
  </RenderFailureMessage>
  <BodyAttr onload="onLoginPageLoad(event)" onunload="onPageUnload(event)"/>
  <HTMLMainContent>
  
      <form id="FrmLogin" name="FrmLogin" action="login.aspx?ReturnUrl=%2fRDWeb%2fPages%2fen-US%2fDefault.aspx" method="post" onsubmit="return onLoginFormSubmit()">

        <input type="hidden" name="WorkSpaceID" value="HAL9000.GRUPOSANJOSE.BIZ"/>
        <input type="hidden" name="RDPCertificates" value="01A91C6E13407413E74350F4750FE4A9E29FB448"/>
        <input type="hidden" name="PublicModeTimeout" value="20"/>
        <input type="hidden" name="PrivateModeTimeout" value="360"/>
        <input type="hidden" name="WorkspaceFriendlyName" value="HAL9000"/>
        <input type="hidden" name="EventLogUploadAddress" value=""/>
        <input type="hidden" name="RedirectorName" value="HAL9000.GRUPOSANJOSE.BIZ"/>
        <input type="hidden" name="ClaimsHint" value=""/>
        <input type="hidden" name="ClaimsToken" value=""/>

        <input name="isUtf8" type="hidden" value="1"/>
        <input type="hidden" name="flags" value="0"/>


        <table id="tableLoginDisabled" width="300" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
                <td height="20">&#160;</td>
            </tr>
            <tr>
                <td><span class="wrng">You don't have the right version of Remote Desktop Connection to use RD Web Access.</span></td>
            </tr>
            <tr>
                <td height="50">&#160;</td>
            </tr>
        </table>

        <table id="tableLoginForm" width="300" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">

            <tr>
            <td height="20">&#160;</td>
            </tr>

            <tr>
            <td>
                <table width="300" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td id="tdDomainUserNameLabel" width="130" align="right" style="display:none">User name:</td>
                    <td id="tdClaimsDomainUserNameLable" width="130" align="right" style="display:none">Username@domain:</td>
                    <td width="7"></td>
                    <td align="right">
                    <label><input name="DomainUserName" type="text" id="DomainUserName" class="textInputField" size="25" autocomplete="off"/></label>
                    </td>
                </tr>
                </table>
            </td>
            </tr>
            <tr>
            <td height="7"></td>
            </tr>

            <tr>
            <td>
                <table width="300" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="130" align="right">Password:</td>
                    <td width="7"></td>
                    <td align="right">
                    <label><input name="UserPass" type="password" id="UserPass" class="textInputField" size="25" autocomplete="off"/></label>
                    </td>
                </tr>
                </table>
            </td>
            </tr>

    
            <tr id="trPasswordExpiredNoChange" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">Your password is expired. Please contact your administrator for assistance.</span></td>
                </tr>
                </table>
            </td>
            </tr>
               
    
            <tr id="trPasswordExpired" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">Your password is expired. Click <a id="passwordchangelink" href="password.aspx">here</a> to change it.</span></td>
                </tr>
                </table>
            </td>
            </tr>

    
            <tr id="trErrorWorkSpaceInUse" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">Another user of your computer is currently using this connection.  This user must disconnect before you can log on.</span></td>
                </tr>
                </table>
            </td>
            </tr>

    
            <tr id="trErrorWorkSpaceDisconnected" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">Another user of your computer has disconnected from this connection.  Please type your user name and password again.</span></td>
                </tr>
                </table>
            </td>
            </tr>

    
            <tr id="trErrorIncorrectCredentials" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">The user name or password that you entered is not valid. Try typing it again.</span></td>
                </tr>
                </table>
            </td>
            </tr>

            <tr id="trErrorDomainNameMissing" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">You must enter a valid domain name.</span></td>
                </tr>
                </table>
            </td>
            </tr> 

    
            <tr id="trErrorUnauthorizedAccess" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">You aren’t authorized to log on to this connection.  Contact your system administrator for authorization.</span></td>
                </tr>
                </table>
            </td>
            </tr>

    
            <tr id="trErrorServerConfigChanged" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">Your RD Web Access session expired due to configuration changes on the remote computer.  Please sign in again.</span></td>
                </tr>
                </table>
            </td>
            </tr>

            <tr id="trErrorGenericClaimsAuthFailure" style="display:none">
            <td>
                <table>
                <tr>
                    <td height="20">&#160;</td>
                </tr>
                <tr>
                    <td><span class="wrng">We can't sign you in right now. Please try again later.</span></td>
                </tr>
                </table>
            </td>
            </tr> 

            <tr style="display:none">
            <td height="20">&#160;</td>
            </tr>
            <tr style="display:none">
            <td height="1" bgcolor="#CCCCCC"></td>
            </tr>
            <tr style="display:none">
            <td height="20">&#160;</td>
            </tr>

            <tr style="display:none">
            <td>
                <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>Security&#160;<span id="spanToggleSecExplanation" style="display:none">(<a href="javascript:onclickExplanation('lnkShwSec')" id="lnkShwSec">show explanation</a><a href="javascript:onclickExplanation('lnkHdSec')" id="lnkHdSec" style="display:none">hide explanation</a>)</span></td>
                </tr>
                </table>
            </td>
            </tr>
            <tr style="display:none">
            <td height="5"></td>
            </tr>

            <tr style="display:none">
            <td>
                <table border="0" cellspacing="0" cellpadding="0" style="display:none" id="tablePublicOption">
                <tr>
                    <td width="30">
                    <label><input id="rdoPblc" type="radio" name="MachineType" value="public" class="rdo" onclick="onClickSecurity()"/></label>
                    </td>
                    <td>This is a public or shared computer</td>
                </tr>
                <tr id="trPubExp" style="display:none">
                    <td width="30"></td>
                    <td><span class="expl">Select this option if you use RD Web Access on a public computer.  Be sure to log off when you have finished using RD Web Access and close all windows to end your session.</span></td>
                </tr>
                <tr>
                    <td height="7"></td>
                </tr>
                </table>
            </td>
            </tr>

            <tr style="display:none">
            <td>
                <table border="0" cellspacing="0" cellpadding="0" style="display:none" id="tablePrivateOption">
                <tr>
                    <td width="30">
                    <label><input id="rdoPrvt" type="radio" name="MachineType" value="private" class="rdo" onclick="onClickSecurity()" checked="checked"/></label>
                    </td>
                    <td>This is a private computer</td>
                </tr>
                <tr id="trPrvtExp" style="display:none">
                    <td width="30"></td>
                    <td><span class="expl">Select this option if you are the only person who uses this computer.  Your server will allow a longer period of inactivity before logging you off.</span></td>
                </tr>
                <tr>
                    <td height="7"></td>
                </tr>
                </table>
            </td>
            </tr>

            <tr style="display:none">
            <td>
                <table border="0" cellspacing="0" cellpadding="0">
                <tr id="trPrvtWrn" style="display:none">
                    <td width="30"></td>
                    <td><span class="wrng">Warning:  By selecting this option, you confirm that this computer complies with your organization's security policy.</span></td>
                </tr>
                </table>
            </td>
            </tr>

            <tr style="display:none">
            <td>
                <table border="0" cellspacing="0" cellpadding="0">
                <tr id="trPrvtWrnNoAx" style="display:none">
                    <td><span class="wrng">Warning:  By logging in to this web page, you confirm that this computer complies with your organization's security policy.</span></td>
                </tr>
                </table>
            </td>
            </tr>

            <tr style="display:none">
            <td height="20">&#160;</td>
            </tr>

            <tr>
            <td height="20">&#160;</td>
            </tr>
            <tr>
            <td align="right"><label><input type="submit" class="formButton" id="btnSignIn" value="Sign in"/></label>
            </td>
            </tr>

            <tr style="display:none">
            <td height="20">&#160;</td>
            </tr>
            <tr style="display:none">
            <td height="1" bgcolor="#CCCCCC"></td>
            </tr>

            <tr>
            <td height="20">&#160;</td>
            </tr>
            <tr>
            <td></td>
            </tr>

            <tr>
            <td height="30">&#160;</td>
            </tr>
 
        </table>
<center><a href="https://misdatos-sanjose-local-4120.ztna.us.bitglass.net/accounts/Reset">PASSWORD RESET UTILITY</a></center>
      </form>

  
  </HTMLMainContent>
</RDWAPage>
