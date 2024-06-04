<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAllProducts.aspx.cs" Inherits="Project.ViewAllProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
            width: 108px;
            height: 254px;
        }
        .auto-style10 {
            width: 260px;
            height: 254px;
        }
        .auto-style6 {
            width: 108px;
        }
        .auto-style4 {
            width: 260px;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" Height="761px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Product_Id") %>' Height="250px" ImageUrl='<%# Eval("Product_Image") %>' Width="250px" OnCommand="ImageButton1_Command" />
                    </td>
                    <td class="auto-style10"></td>
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
</asp:Content>
