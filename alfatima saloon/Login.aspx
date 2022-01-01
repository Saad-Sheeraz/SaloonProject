<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="al_fatima_saloon.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <title>this page</title>


    <!--== META TAGS ==-->
    <meta charset="utf-8" />
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />


    

    <!--== ALL CSS FILES ==-->

    <link href="css/newSS.css" rel="stylesheet" />
    <%-- <link href="css/StyleSheet1.css" rel="stylesheet" />--%>
</head>


<body>
    <form id="form1" runat="server">

        <div class="login-box">
            <h1>Login Owner</h1>

            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <%-- <input type="text" placeholder="Name" id="tbL" name="" value="" />--%>

                <asp:TextBox ID="textboxName" runat="server" placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf1" runat="server" ControlToValidate="textboxName" ErrorMessage="*Please Enter Email!" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <%--<input type="password" placeholder="Password" id="tbP" name="" value="" />--%>
                <asp:TextBox ID="textboxPass" runat="server" placeholder="Password" TextMode="Password">
                    
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="rf2" runat="server" ControlToValidate="textboxPass" ErrorMessage="*Please Enter Password!" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
            <asp:Button ID="btnAdminC" runat="server" Text="Log-In" class="btn" OnClick="btnAdminC_Click" />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
