<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View_Cart.aspx.cs" Inherits="Project.View_Cart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 156px;
            width: 504px;
        }
        .auto-style2 {
            height: 156px;
        }
        .auto-style5 {
            width: 504px;
        }
        .auto-style6 {
            height: 33px;
            width: 504px;
        }
        .auto-style3 {
            height: 33px;
        }
        .auto-style7 {
            width: 504px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Cart_Id") %>' OnCommand="LinkButton2_Command">Remove</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Product_Id") %>' OnCommand="LinkButton3_Command">Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Product_Id") %>'></asp:LinkButton>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:Label ID="Label2" runat="server" Text="Enter the quantity:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                    </asp:Panel>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add Account" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Bill" />
                </td>
            </tr>
        </table>
        <div>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
        </div>
            </td>
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
</asp:Content>
