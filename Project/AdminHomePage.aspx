<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="Project.AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 108px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 108px;
            width: 374px;
        }
        .auto-style5 {
            height: 26px;
            width: 374px;
        }
        .auto-style6 {
            width: 374px;
        }
        .auto-style7 {
            height: 108px;
            width: 331px;
        }
        .auto-style8 {
            height: 26px;
            width: 331px;
        }
        .auto-style9 {
            width: 331px;
        }
        .auto-style10 {
            height: 108px;
            width: 307px;
        }
        .auto-style11 {
            height: 26px;
            width: 307px;
        }
        .auto-style12 {
            width: 307px;
        }
        .auto-style13 {
            height: 108px;
            width: 303px;
        }
        .auto-style14 {
            height: 26px;
            width: 262px;
        }
        .auto-style15 {
            width: 303px;
        }
        .auto-style16 {
            height: 26px;
            width: 303px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" BackColor="White" Text="Admin Home Page"></asp:Label>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style13"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="193px" ImageUrl="~/img/cat-1.jpg" OnClick="ImageButton1_Click" Width="339px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text="Add Category"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="199px" ImageUrl="~/img/cat-2.jpg" OnClick="ImageButton2_Click" Width="296px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Edit Category"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="190px" ImageUrl="~/img/cat-3.jpg" OnClick="ImageButton3_Click" Width="284px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Add Product"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="181px" ImageUrl="~/img/cat-4.jpg" OnClick="ImageButton4_Click" Width="246px" />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Edit Product"></asp:Label>
                    <br />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style8"></td>
                <td class="auto-style11"></td>
                <td class="auto-style16"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Panel ID="Panel1" runat="server">
                    </asp:Panel>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style8"></td>
                <td class="auto-style11"></td>
                <td class="auto-style16"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style8"></td>
                <td class="auto-style11"></td>
                <td class="auto-style16"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
