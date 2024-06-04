<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style4 {
            height: 32px;
            margin-right: 0px;
        }
        .auto-style5 {
            width: 248px;
        }
        .auto-style6 {
            width: 248px;
            height: 32px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CssClass="auto-style4" Height="387px" Width="604px">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Category_Id") %>' Height="289px" ImageUrl='<%# Eval("Category_Image") %>' OnCommand="ImageButton1_Command" Width="325px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category_Description") %>'></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>
        </ItemTemplate>

    </asp:DataList>
           
                
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <table class="w-100">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Text="Send Feedback"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="661px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style1">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
           
                
</asp:Content>
