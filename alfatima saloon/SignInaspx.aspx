<%@ Page Title="" Language="C#" MasterPageFile="~/outmasterpage.Master" AutoEventWireup="true" CodeBehind="SignInaspx.aspx.cs" Inherits="al_fatima_saloon.SignInaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="fm" runat="server">

   
    <header class="masthead">
      <div class="container">     
        <div class="intro-text">
          <div class="intro-lead-in">Welcome To Al-Fatinah Salon!</div>
          <div class="intro-heading text-uppercase">You can login here</div>
            <asp:LinkButton ID="linkbtnUser" runat="server" Text="Sign-In Employee" OnClick="signasEmployee" class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"></asp:LinkButton>
           
              <asp:LinkButton ID="linkbtnAdmin" runat="server" Text="Sign-In Admin" OnClick="signasAdmin" class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"></asp:LinkButton>
           
            <%--<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger">  </a>--%>
    </div>
          </div>
    </header>
         </form>  
</asp:Content>
