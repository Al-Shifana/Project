<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 246px;
        }
        .auto-style3 {
            width: 230px;
        }
        .auto-style7 {
            width: 230px;
            height: 78px;
        }
        .auto-style8 {
            width: 246px;
            height: 78px;
        }
        .auto-style9 {
            height: 78px;
        }
        .auto-style22 {
            width: 230px;
            height: 54px;
        }
        .auto-style23 {
            width: 246px;
            height: 54px;
        }
        .auto-style24 {
            height: 54px;
        }
        .auto-style25 {
            width: 230px;
            height: 68px;
        }
        .auto-style26 {
            width: 246px;
            height: 68px;
        }
        .auto-style27 {
            height: 68px;
        }
        .auto-style28 {
            width: 230px;
            height: 55px;
        }
        .auto-style29 {
            width: 246px;
            height: 55px;
        }
        .auto-style30 {
            height: 55px;
        }
        .auto-style31 {
            width: 230px;
            height: 47px;
        }
        .auto-style32 {
            width: 246px;
            height: 47px;
        }
        .auto-style33 {
            height: 47px;
        }
        .auto-style34 {
            width: 230px;
            height: 26px;
        }
        .auto-style35 {
            width: 246px;
            height: 26px;
        }
        .auto-style36 {
            height: 26px;
        }
        .auto-style37 {
            width: 230px;
            height: 119px;
        }
        .auto-style38 {
            width: 246px;
            height: 119px;
        }
        .auto-style39 {
            height: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style37"></td>
                    <td class="auto-style38">
                        <asp:Label ID="Label1" runat="server" Text="Admin Registration"></asp:Label>
                    </td>
                    <td class="auto-style39"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
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
                    <td class="auto-style22"></td>
                    <td class="auto-style23">
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style26">
                        <asp:Label ID="Label4" runat="server" Text="Phone no"></asp:Label>
                    </td>
                    <td class="auto-style27">
                        <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style29">
                        <asp:Label ID="Label5" runat="server" Text="Website Address"></asp:Label>
&nbsp;</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox4" runat="server" Height="30px" TextMode="MultiLine" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style32">
                        <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style29">
                        <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox6" runat="server" Height="30px" TextMode="Password" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="53px" OnClick="Button1_Click" Text="Register" Width="184px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
