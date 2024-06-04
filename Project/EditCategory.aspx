<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="Project.EditCategory" %>

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
            width: 357px;
        }
        .auto-style4 {
            height: 26px;
            width: 357px;
        }
        .auto-style6 {
            width: 100%;
            height: 214px;
        }
        .auto-style7 {
            height: 56px;
        }
        .auto-style8 {
            width: 203px;
        }
        .auto-style9 {
            height: 56px;
            width: 203px;
        }
        .auto-style10 {
            width: 203px;
            height: 26px;
        }
        .auto-style11 {
            width: 238px;
        }
        .auto-style12 {
            height: 26px;
            width: 238px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            width: 296px;
        }
        .auto-style15 {
            height: 26px;
            width: 296px;
        }
        .auto-style16 {
            width: 357px;
            height: 826px;
        }
        .auto-style17 {
            width: 296px;
            height: 826px;
        }
        .auto-style18 {
            width: 238px;
            height: 826px;
        }
        .auto-style19 {
            height: 826px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="2">
                            <Columns>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Category_Id") %>' OnCommand="LinkButton1_Command">Select</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Block">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Category_Id") %>' OnCommand="LinkButton2_Command">Block</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Category_Name" HeaderText="CategoryName" />
                                <asp:ImageField DataImageUrlField="Category_Image" HeaderText="Category Image">
                                    <ControlStyle Height="200px" Width="200px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="Category_Description" HeaderText="Cateogory Description" />
                                <asp:BoundField DataField="Category_Status" HeaderText="Category Status" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style18">
                    </td>
                    <td class="auto-style16">
                        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13" Height="750px" Visible="False" Width="699px">
                            <table class="auto-style6">
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label7" runat="server" Text="Edit Category"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="Label2" runat="server" Text="Category name"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label3" runat="server" Text="Category Image"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Image ID="Image1" runat="server" Height="195px" Width="202px" />
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="Label4" runat="server" Text="Category description"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="Label5" runat="server" Text="Category Status"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>Available</asp:ListItem>
                                            <asp:ListItem>Unavailable</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9"></td>
                                    <td class="auto-style7">&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style4"></td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2"></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style4"></td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
