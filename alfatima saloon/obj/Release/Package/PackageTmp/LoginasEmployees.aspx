<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginasEmployees.aspx.cs" Inherits="al_fatima_saloon.LoginasAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <title>this page</title>


    <!--== META TAGS ==-->
    <meta charset="utf-8" />

    <!--== ALL CSS FILES ==-->

    <link href="css/newSS.css" rel="stylesheet" />
   <%-- <link href="css/StyleSheet1.css" rel="stylesheet" />--%>
</head>


<body>
    <form id="form1" runat="server">

        <div class="login-box">
            <h1>Login Employee</h1>

            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <%-- <input type="text" placeholder="Name" id="tbL" name="" value="" />--%>
                <asp:TextBox ID="textboxE_Name" runat="server" placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf1" runat="server" ControlToValidate="textboxE_Name" ErrorMessage="*Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
          
                </div>
            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <%--<input type="password" placeholder="Password" id="tbP" name="" value="" />--%>
                <asp:TextBox ID="textboxE_Pass" runat="server" placeholder="Password" TextMode="Password">

                </asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textboxE_Pass" ErrorMessage="*Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
          
            </div>
            <asp:Button ID="btnloginfor_emp" runat="server" Text="Sign In" class="btn" OnClick="btnloginfor_emp_Click" />
            <asp:Label ID="lbladminDD" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
