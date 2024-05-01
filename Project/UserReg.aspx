<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="Project.UserReg" %>

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
        .auto-style3 {
            height: 26px;
            width: 365px;
        }
        .auto-style4 {
            width: 365px;
        }
        .auto-style5 {
            height: 26px;
            width: 269px;
        }
        .auto-style6 {
            width: 269px;
        }
        .auto-style7 {
            height: 51px;
            width: 365px;
        }
        .auto-style8 {
            height: 51px;
            width: 269px;
        }
        .auto-style9 {
            height: 51px;
        }
        .auto-style10 {
            width: 365px;
            height: 48px;
        }
        .auto-style11 {
            width: 269px;
            height: 48px;
        }
        .auto-style12 {
            height: 48px;
        }
        .auto-style13 {
            height: 125px;
            width: 365px;
        }
        .auto-style14 {
            height: 125px;
            width: 269px;
        }
        .auto-style15 {
            height: 125px;
        }
        .auto-style16 {
            width: 365px;
            height: 50px;
        }
        .auto-style17 {
            width: 269px;
            height: 50px;
        }
        .auto-style18 {
            height: 50px;
        }
        .auto-style19 {
            width: 365px;
            height: 47px;
        }
        .auto-style20 {
            width: 269px;
            height: 47px;
        }
        .auto-style21 {
            height: 47px;
        }
        .auto-style22 {
            width: 365px;
            height: 45px;
        }
        .auto-style23 {
            width: 269px;
            height: 45px;
        }
        .auto-style24 {
            height: 45px;
        }
        .auto-style25 {
            width: 365px;
            height: 46px;
        }
        .auto-style26 {
            width: 269px;
            height: 46px;
        }
        .auto-style27 {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server" Text="User Registration"></asp:Label>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" TextMode="MultiLine" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Label ID="Label7" runat="server" Text="District"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="175px">
                        <asp:ListItem>Kasargod</asp:ListItem>
                        <asp:ListItem>Kannur</asp:ListItem>
                        <asp:ListItem>Kozhikode</asp:ListItem>
                        <asp:ListItem>Wayanad</asp:ListItem>
                        <asp:ListItem>Malappuram</asp:ListItem>
                        <asp:ListItem>Palakkad</asp:ListItem>
                        <asp:ListItem>Thrissur</asp:ListItem>
                        <asp:ListItem>Idukki</asp:ListItem>
                        <asp:ListItem>Ernakulam</asp:ListItem>
                        <asp:ListItem>Kottayam</asp:ListItem>
                        <asp:ListItem>Alappuzha</asp:ListItem>
                        <asp:ListItem>Pathanamthitta</asp:ListItem>
                        <asp:ListItem>Kollam</asp:ListItem>
                        <asp:ListItem>Thiruvananthapuram</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="176px">
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>TamilNadu</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:Label ID="Label10" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26">
                    <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox8" runat="server" Height="30px" TextMode="Password" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="52px" OnClick="Button1_Click" Text="Register" Width="139px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
