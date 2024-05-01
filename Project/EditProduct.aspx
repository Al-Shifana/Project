<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Project.EditProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 520px;
        }
        .auto-style3 {
            width: 520px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 22px;
        }
        .auto-style6 {
            height: 26px;
            width: 22px;
        }
        .auto-style7 {
            width: 641px;
        }
        .auto-style8 {
            height: 26px;
            width: 641px;
        }
        .auto-style17 {
            width: 520px;
            height: 46px;
        }
        .auto-style18 {
            height: 46px;
            width: 22px;
        }
        .auto-style19 {
            height: 46px;
            width: 641px;
        }
        .auto-style20 {
            height: 46px;
        }
        .auto-style22 {
            width: 520px;
            height: 668px;
        }
        .auto-style23 {
            width: 22px;
            height: 668px;
        }
        .auto-style24 {
            width: 641px;
            height: 668px;
        }
        .auto-style25 {
            height: 668px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 102%;
            height: 675px;
        }
        .auto-style14 {
            width: 175px;
        }
        .auto-style16 {
            margin-bottom: 0px;
        }
        .auto-style15 {
            width: 175px;
            height: 35px;
        }
        .auto-style13 {
            height: 35px;
        }
        .auto-style21 {
            width: 175px;
            height: 26px;
        }
        .auto-style28 {
            width: 175px;
            height: 29px;
        }
        .auto-style29 {
            height: 29px;
        }
        .auto-style26 {
            width: 175px;
            height: 38px;
        }
        .auto-style27 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style22">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="390px" Width="16px">
                        <Columns>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Product_Id") %>' OnCommand="LinkButton1_Command">Select</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Block">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Product_Id") %>' OnCommand="LinkButton2_Command">Block</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                            <asp:ImageField DataImageUrlField="Product_Image" HeaderText="Image">
                            </asp:ImageField>
                            <asp:BoundField DataField="Product_Price" HeaderText=" Price" />
                            <asp:BoundField DataField="Product_Description" HeaderText="Description" />
                            <asp:BoundField DataField="Product_Stock" HeaderText="Stock" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style23"></td>
                <td class="auto-style24">
                    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9" Height="699px" Visible="False" Width="800px">
                        <table class="auto-style10">
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>Edit Product</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label2" runat="server" Text="Image"></asp:Label>
                                </td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="228px" Width="175px" />
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style16" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style15">
                                    <asp:Label ID="Label4" runat="server" Text="Description "></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style21"></td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style28">
                                    <asp:Label ID="Label5" runat="server" Text="Stock"></asp:Label>
                                </td>
                                <td class="auto-style29">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Value="1">Available</asp:ListItem>
                                        <asp:ListItem Value="2">Unavailable</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style26"></td>
                                <td class="auto-style27">
                                    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" style="height: 29px" />
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style21"></td>
                                <td class="auto-style4"></td>
                            </tr>
                            <tr>
                                <td class="auto-style21"></td>
                                <td class="auto-style4">
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
