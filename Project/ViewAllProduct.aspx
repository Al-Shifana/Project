<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAllProduct.aspx.cs" Inherits="Project.ViewProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style4 {
            width: 260px;
        }
        .auto-style6 {
            width: 108px;
        }
        .auto-style7 {
            width: 108px;
            height: 28px;
        }
        .auto-style8 {
            width: 260px;
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                            <ItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Product_Id") %>' Height="250px" ImageUrl='<%# Eval("Product_Image") %>' Width="250px" OnCommand="ImageButton1_Command" />
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">
                                            <asp:Label ID="Label4" runat="server" Text="Price:"></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style8"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Description") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
