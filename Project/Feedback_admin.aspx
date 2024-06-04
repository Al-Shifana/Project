<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback_admin.aspx.cs" Inherits="Project.Feedback_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            height: 243px;
        }
        .auto-style3 {
            width: 265px;
        }
        .auto-style4 {
            width: 265px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">
                <asp:Panel ID="Panel1" runat="server" Height="241px" Width="1187px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="240px" Width="1190px">
                        <Columns>
                            <asp:BoundField HeaderText="User Id" DataField="User_Id" />
                            <asp:BoundField HeaderText="Feedback message" DataField="Feedback_msg" />
                            <asp:BoundField HeaderText="Reply" DataField="Reply" />
                            <asp:BoundField HeaderText="Status" DataField="Status" />
                            <asp:TemplateField HeaderText="Click here to edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Edit" runat="server" CommandArgument='<%# Eval("Feedback_Id") %>' OnCommand="Edit_Command" Text="Edit"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <table class="w-100">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Response to feedback"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Reply"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="667px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
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
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
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
