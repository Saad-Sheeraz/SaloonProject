<%@ Page Title="" Language="C#" MasterPageFile="~/InnerMasterPage.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Productsaspx.aspx.cs" Inherits="al_fatima_saloon.Productsaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/SSGridViews.css" rel="stylesheet" />
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

        .divtb {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header class="masthead">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome To Our Al-Fatenah Salon!</div>
                <div class="intro-heading text-uppercase">Our Products</div>

            </div>
        </div>

    </header>

    <form id="from12" runat="server">
        <asp:ScriptManager ID="sp2" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="up1" runat="server">
            <ContentTemplate>
        <div id="Main1">
            
            <br />
            <br />
            <br />
            <div class="centreRow">
                <h1>Hair Service</h1>
            </div>
            <%--gridview1--%>


            <asp:GridView ID="gvHairServicee" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvHairServicee_RowCancelingEdit" OnRowEditing="gvHairServicee_RowEditing" OnRowDeleting="gvHairServicee_RowDeleting" OnRowUpdating="gvHairServicee_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid1" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct1" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct1" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice1" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice1" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" style="border-collapse: collapse" class="centreRow">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd1" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd1" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                        <asp:Label ID="lblmsg1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>



            <br />
            <br />
            <br />

            <%--gridview2--%>
            <div class="centreRow">
                <h1>Hair Dye Service</h1>
            </div>
            <asp:GridView ID="gvHairDyee" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvHairDyee_RowCancelingEdit" OnRowEditing="gvHairDyee_RowEditing" OnRowDeleting="gvHairDyee_RowDeleting" OnRowUpdating="gvHairDyee_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid2" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct2" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct2" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice2" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice2" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" style="border-collapse: collapse" class="centreRow">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd2" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd2" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click1" />
                        <asp:Label ID="lblmsg2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>


            <br />
            <br />
            <br />


            <%--   gridview3--%>
            <div class="centreRow">
                <h1>Hair Treatment</h1>
            </div>

            <asp:GridView ID="gvhairtreatment" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvhairtreatment_RowCancelingEdit" OnRowEditing="gvhairtreatment_RowEditing" OnRowDeleting="gvhairtreatment_RowDeleting" OnRowUpdating="gvhairtreatment_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid3" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct3" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct3" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice3" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice3" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd3" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd3" runat="server" CssClass="divtb" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button3" runat="server" Text="Add" OnClick="Button3_Click" />
                        <asp:Label ID="lblmsg3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>


            <br />
            <br />
            <br />

            <%--gridview4--%>
            <div class="centreRow">
                <h1>Facial Services</h1>
            </div>
            <asp:GridView ID="gvfacialServices" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvfacialServices_RowCancelingEdit" OnRowEditing="gvfacialServices_RowEditing" OnRowDeleting="gvfacialServices_RowDeleting" OnRowUpdating="gvfacialServices_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid4" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct4" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct4" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice4" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd4" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd4" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button4" runat="server" Text="Add" OnClick="Button4_Click" />
                        <asp:Label ID="lblmsg4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>

            <br />
            <br />
            <br />


            <%--gridview5--%>

            <div class="centreRow">
                <h1>Henna Services</h1>
            </div>
            <asp:GridView ID="gvhennaService" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvhennaService_RowCancelingEdit" OnRowEditing="gvhennaService_RowEditing" OnRowDeleting="gvhennaService_RowDeleting" OnRowUpdating="gvhennaService_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid5" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct5" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct5" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice5" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice5" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd5" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd5" runat="server" CssClass="divtb" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button5" runat="server" Text="Add" OnClick="Button5_Click1" />
                        <asp:Label ID="lblmsg5" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>


            <br />
            <br />
            <br />


            <%--gridview6--%>
            <div class="centreRow">
                <h1>Face Hair Removal Service</h1>
            </div>

            <asp:GridView ID="gvfacehairRemoval" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvfacehairRemoval_RowCancelingEdit" OnRowEditing="gvfacehairRemoval_RowEditing" OnRowUpdating="gvfacehairRemoval_RowUpdating" OnRowDeleting="gvfacehairRemoval_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid6" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct6" runat="server" Text='<%#Eval("productname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct6" runat="server" Text='<%#Eval("productname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice6" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice6" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd6" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd6" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button6" runat="server" Text="Add" OnClick="Button6_Click" />
                        <asp:Label ID="lblmsg6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>

            <br />
            <br />
            <br />

            <%--gridview7--%>


            <div class="centreRow">
                <h1>Face Bleach Service</h1>
            </div>
            <asp:GridView ID="gvFaceBleach" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvFaceBleach_RowCancelingEdit" OnRowEditing="gvFaceBleach_RowEditing" OnRowUpdating="gvFaceBleach_RowUpdating" OnRowDeleting="gvFaceBleach_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid7" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct7" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct7" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice7" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice7" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd7" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd7" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button7" runat="server" Text="Add" OnClick="Button7_Click" />
                        <asp:Label ID="lblmsg7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>


            <br />
            <br />
            <br />

            <%--gridview8--%>
            <div class="centreRow">
                <h1>Body Bleach Service</h1>
            </div>
            <asp:GridView ID="gvBodyBleach" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvBodyBleach_RowCancelingEdit" OnRowEditing="gvBodyBleach_RowEditing" OnRowUpdating="gvBodyBleach_RowUpdating" OnRowDeleting="gvBodyBleach_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid8" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct8" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct8" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice8" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice8" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd8" runat="server" CssClass="divtb" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd8" runat="server" CssClass="divtb" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button8" runat="server" Text="Add" OnClick="Button8_Click" />
                        <asp:Label ID="lblmsg8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>

            <br />
            <br />
            <br />

            <%--gridview9--%>
            <div class="centreRow">
                <h1>Body Hair Removal Service</h1>
            </div>

            <asp:GridView ID="gvBodyHairRemoval" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvBodyHairRemoval_RowCancelingEdit" OnRowEditing="gvBodyHairRemoval_RowEditing" OnRowDeleting="gvBodyHairRemoval_RowDeleting" OnRowUpdating="gvBodyHairRemoval_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid9" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct9" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct9" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice9" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice9" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd9" runat="server" CssClass="divtb" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd9" runat="server" CssClass="divtb" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button9" runat="server" Text="Add" OnClick="Button9_Click" />
                        <asp:Label ID="lblmsg9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            
            <br />
            <br />
            <br />

            <%--gridview10--%>
            <div class="centreRow">
                <h1>Nail Care Service</h1>
            </div>
            <asp:GridView ID="gvnailcare" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvnailcare_RowCancelingEdit" OnRowEditing="gvnailcare_RowEditing" OnRowDeleting="gvnailcare_RowDeleting" OnRowUpdating="gvnailcare_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid10" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct10" runat="server" Text='<%#Eval("product") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct10" runat="server" Text='<%#Eval("product") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice10" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice10" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd10" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd10" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button10" runat="server" Text="Add" OnClick="Button10_Click" />
                        <asp:Label ID="lblmsg10" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>


            <br />
            <br />
            <br />



             <%--gridview11--%>
            <div class="centreRow">
                <h1>Nail Care Service</h1>
            </div>
            <asp:GridView ID="gvProducts" CssClass="centre" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
                OnRowCancelingEdit="gvProducts_RowCancelingEdit" OnRowDeleting="gvProducts_RowDeleting" OnRowEditing="gvProducts_RowEditing" OnRowUpdating="gvProducts_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblid11" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblproduct11" runat="server" Text='<%#Eval("productname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproduct11" runat="server" Text='<%#Eval("productname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblprice11" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice11" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit" Text="edit"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary" />
                             <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete"><i class="fa fa-trash-o" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
            <table border="1" class="centreRow" style="border-collapse: collapse">
                <tr>
                    <td style="width: 150px">Product:<br />
                        <asp:TextBox ID="txtproductadd11" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 150px">Price:<br />
                        <asp:TextBox ID="txtpriceadd11" CssClass="divtb" runat="server" Width="200" />
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="Button11" runat="server" Text="Add" OnClick="Button11_Click" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>


            <br />
            <br />
            <br />



            <%--   The End--%>
        </div>
                </ContentTemplate>
            </asp:UpdatePanel>
    </form>
</asp:Content>
