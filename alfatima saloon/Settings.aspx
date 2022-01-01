<%@ Page Title="" Language="C#" MasterPageFile="~/InnerMasterPage.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="al_fatima_saloon.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .centre {
            margin: auto;
            width: 80%;
            border: 3px solid #73AD21;
            padding: 10px;
        }

        .centreRow {
            margin: auto;
            width: 80%;
            border: 3px;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="masthead">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome To Our Al-Fatenah Saloon!</div>
                <div class="intro-heading text-uppercase">Invoice Details</div>

            </div>

        </div>

    </header>

    <form id="formS1" runat="server">
        <div id="Main1">


            <div class="centreRow">
                <h1>Invoice Details</h1>
            </div>
       <%--     here--%>
            <asp:ScriptManager ID="sp1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="up1" runat="server">
                <ContentTemplate>
            <asp:GridView ID="gvdetails" runat="server" CssClass="centre" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id" OnRowDeleting="gvdetails_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS1" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Customer Name">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS1" runat="server" Text='<%#Bind("name") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Service Used">
                        <ItemTemplate>
                            <asp:Label ID="lblproductS1" runat="server" Text='<%#Bind("productname") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS1" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time">
                        <ItemTemplate>
                            <asp:Label ID="lbltimeS1" runat="server" Text='<%#Bind("time") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="lbldateS1" runat="server" Text='<%#Bind("date") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDELETE" runat="server" Text="Delete" CommandName="Delete" />

                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
                    </ContentTemplate>
        </asp:UpdatePanel>
        <%--ending gridview--%>
    </form>
</asp:Content>
