<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_Homepage.aspx.cs" Inherits="Project.Admin_Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            height: 108px;
            width: 374px;
        }
        .auto-style7 {
            height: 108px;
            width: 331px;
        }
        .auto-style10 {
            height: 108px;
            width: 307px;
        }
        .auto-style13 {
            height: 108px;
            width: 303px;
        }
        .auto-style5 {
            height: 26px;
            width: 374px;
        }
        .auto-style14 {
            height: 26px;
            width: 262px;
        }
        .auto-style8 {
            height: 26px;
            width: 331px;
        }
        .auto-style11 {
            height: 26px;
            width: 307px;
        }
        .auto-style16 {
            height: 26px;
            width: 303px;
        }
        .auto-style17 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style4"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" BackColor="White" Text="Admin Home Page"></asp:Label>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style13"></td>
                </tr>
        <tr>
                <td class="auto-style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="193px" ImageUrl="~/img/cat-1.jpg" OnClick="ImageButton1_Click" Width="339px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text="Add Category"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="191px" ImageUrl="~/img/cat-2.jpg" OnClick="ImageButton2_Click" Width="280px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Edit Category"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="190px" ImageUrl="~/img/cat-3.jpg" OnClick="ImageButton3_Click" Width="284px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Add Product"></asp:Label>
                </td>
                <td class="auto-style16">
                    <br />
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="184px" ImageUrl="~/img/cat-4.jpg" OnClick="ImageButton4_Click" Width="258px" CssClass="auto-style17" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Edit Product"></asp:Label>
                    <br />
                </td>
                </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View feedbacks" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
