<%@ Page Title="" Language="C#" MasterPageFile="~/employemaster.Master" AutoEventWireup="true" CodeBehind="employeePanel.aspx.cs" Inherits="al_fatima_saloon.employeePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheetforTable.css" rel="stylesheet" />
    <link href="css/SSGridViews.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <style>
        .TATA {
            margin: auto;
            width: 85%;
            border: 3px solid #73AD21;
            padding: 10px;
        }

        .centreRow {
            margin: auto;
            width: 90%;
            border: 3px;
            padding: 10px;
            text-align: center;
        }

        .centreGrid {
            /*text-align: center;
            margin: auto;
            width: 80%;
            border: 3px solid green;
           padding: 70px 0;*/
            margin-left: auto;
            margin-right: auto;
        }

        .container {
            width: 4000px;
            margin-left: auto;
            margin-right: auto;
            text-align: left;
        }

        .TB {
            margin: auto;
            text-align: left;
            float: left;
            left: 3px;
        }

        .refreshcss {
            right: 20%;
            background-color: #00ff90;
            border: none;
            color: blue;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 16px 2px;
            cursor: pointer;
        }

        .addbtn {
            border: none;
            color: blue;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 16px 2px;
            cursor: pointer;
        }


        /*invoicedesign {
            width: 300px;
            height: 100px;
            padding: 50px;
            border: 1px solid red;
        }*/

        .tbaddval {
            width: 20%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .centre {
            margin: auto;
            width: 280%;
            border: 3px solid #73AD21;
            padding: 10px;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function printDiv(divID) {
            //Get the HTML of div
            var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var oldPage = document.body.innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML =
                "<html><head><title></title></head><body>" +
                divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML = oldPage;


        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="masthead">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome To Our Al-Fatenah Saloon!</div>
                <div class="intro-heading text-uppercase">This is Products</div>

            </div>

        </div>

    </header>

    <form id="formS1" runat="server">
        <div id="Main1">

            <div class="centreRow">
                <h1>Hair Service</h1>
            </div>

            <asp:GridView ID="gvHairService" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
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
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS1" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS1" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Select">

                        <ItemTemplate>
                            <asp:CheckBox ID="cbs" AutoPostBack="false" runat="server" Font-Size="4px"></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="Red" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />

            </asp:GridView>

            <br />
            <br />
            <br />
            <div class="centreRow">
                <h1>Hair Dye Service</h1>
            </div>

            <asp:GridView ID="gvHairDye" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS2" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS2" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS2" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect2" CssClass="gridCB" runat="server"></asp:CheckBox>
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
            <div class="centreRow">
                <h1>Hair Treatment</h1>
            </div>

            <asp:GridView ID="gvHairTreatment" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS3" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS3" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS3" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect3" CssClass="gridCB" runat="server"></asp:CheckBox>
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



            <div class="centreRow">
                <h1>Facial Services</h1>
            </div>

            <asp:GridView ID="gvFacialService" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS4" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS4" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS4" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect4" CssClass="gridCB" runat="server"></asp:CheckBox>
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
            <div class="centreRow">
                <h1>Henna Services</h1>
            </div>

            <asp:GridView ID="gvHennaService" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS5" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS5" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS5" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect5" CssClass="gridCB" runat="server"></asp:CheckBox>
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

            <div class="centreRow">
                <h1>Face Hair Removal Service</h1>
            </div>

            <asp:GridView ID="gvfacehairRem" CssClass="TATA" runat="server" AutoGenerateColumns="false" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS6" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS6" runat="server" Text='<%#Bind("productname") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS6" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect6" CssClass="gridCB" runat="server"></asp:CheckBox>
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
            <div class="centreRow">
                <h1>Face Bleach Service</h1>
            </div>

            <asp:GridView ID="gvfaceBleach" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS7" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS7" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS7" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect7" CssClass="gridCB" runat="server"></asp:CheckBox>
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
            <div class="centreRow">
                <h1>Body Bleach Service</h1>
            </div>

            <asp:GridView ID="gvbodybleach" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS8" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS8" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS8" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect8" CssClass="gridCB" runat="server"></asp:CheckBox>
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
            <div class="centreRow">
                <h1>Body Hair Removal Service</h1>
            </div>

            <asp:GridView ID="gvBodyHairRem" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS9" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS9" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS9" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect9" CssClass="gridCB" runat="server"></asp:CheckBox>
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

            <div class="centreRow">
                <h1>Nail Care Service</h1>
            </div>

            <asp:GridView ID="gvnaicareS" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS10" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS10" runat="server" Text='<%#Bind("product") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS10" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect10" CssClass="gridCB" runat="server"></asp:CheckBox>
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

            <div class="centreRow">
                <h1>Products</h1>
            </div>

            <asp:GridView ID="gvproducts" CssClass="TATA" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="S-no">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblidS11" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:Label ID="lblnameS11" runat="server" Text='<%#Bind("productname") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblpriceS11" runat="server" Text='<%#Bind("price") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox ID="cbSelect11" CssClass="gridCB" runat="server"></asp:CheckBox>
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

        </div>





        <%-- gridview ends here--%>

        <br />
        <br />
        <br />

        <h2>INVOICE SECTION</h2>

        <p>
            &nbsp;
           <asp:ScriptManager ID="sp1" runat="server"></asp:ScriptManager>
        </p>
        <asp:UpdatePanel ID="up1" runat="server">
            <ContentTemplate>
                <div id="centre">
                    <asp:Label ID="LblCustomerN" runat="server" Text="Customer Name :" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="txtboxCustomerN" CssClass="tbaddval" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvC" runat="server" ControlToValidate="txtboxCustomerN" ErrorMessage="*Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>


                    <asp:Button ID="btnAddtoCart" runat="server" CssClass="addbtn" Text="Go for Invoice" OnClick="btnAddtoCart_Click" />

                    <asp:Button ID="btnRefresh" runat="server" CssClass="refreshcss" Text="Refresh" OnClick="btnRefresh_Click" />

                </div>


                <br />
                <div id="printthis">
                    <div class="container">

                        <h4>Al-Fatenah Salon</h4>
                        <br />
                        <br />
                        <h5>Julfar - Ras al Khaimah - United Arab Emirates </h5>
                        <br />
                        <br />
                        <br />
                    </div>
                    <br />
                    <br />

                    <div id="TB">

                        <asp:Label ID="lblnameprint" runat="server" Text="Customer Name :" Style="margin: auto; text-align: left; float: left; left: 3px;"></asp:Label>
                        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="lblnamemsg" Font-Bold="true" Style="margin: auto; text-align: left; float: left; left: 3px;" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lbl_date" runat="server" Style="margin: auto; text-align: left; float: left; left: 3px;"
                            Text="Date :"></asp:Label>
                        &nbsp; &nbsp; &nbsp; &nbsp;
               
        <asp:Label ID="lbl_dateshow" Font-Bold="true" Style="margin: auto; text-align: left; float: left; left: 3px;" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lbl_time" runat="server" Style="margin: auto; text-align: left; float: left; left: 3px;"
                            Text="Time:"></asp:Label>

                        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="lbl_timeshow" Font-Bold="true" runat="server" Style="margin: auto; text-align: left; float: left; left: 3px;"></asp:Label>
                        <br />
                        <br />

                        <asp:Label ID="lblmsg" runat="server" Style="margin: auto; text-align: left; float: left; left: 3px;"></asp:Label>
                        <br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="lblmsgcheck" runat="server" Style="margin: auto; text-align: left; float: left; left: 3px;"></asp:Label>

                    </div>

                    <i class="fab fa-instagram  fa-2x"></i>
                    <asp:Label ID="lblinsta" runat="server" Text="alfatenah_salon" Font-Bold="true"></asp:Label>

                  
                    <br />

                    <i class="fa fa-phone fa-2x"></i>
                    <asp:Label ID="lblpname" runat="server" Text="Contact :" Font-Bold="true"></asp:Label>
                    <asp:Label ID="lblPhone" runat="server" Text="072212238" Font-Bold="true"></asp:Label>

                    <br />
                    <br />


                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <input type="button" class="refreshcss" value="Print" onclick="javascript: printDiv('printthis')" />






    </form>
</asp:Content>
