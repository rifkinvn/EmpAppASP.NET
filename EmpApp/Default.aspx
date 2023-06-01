<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmpApp._Default" %>

<%@ Register assembly="DevExpress.Web.v19.2, Version=19.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <div>
        <div style ="font-size:x-large" align="center">Employee Form</div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">Employee ID</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtEmpID" runat="server" Font-Size="Medium" Width="393px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnGet" runat="server" BackColor="#0099FF" ForeColor="Black" OnClick="btnGet_Click" Text="Get Data" Width="68px" Height="25px" BorderStyle="None" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Full Name</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtFullName" runat="server" Font-Size="Medium" Width="393px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">Birth Date</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtTgl" runat="server" Font-Size="Medium" Width="393px" type="date"
                            ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" BackColor="#0099FF" ForeColor="Black" OnClick="Button1_Click" Text="Save" Width="143px" BorderStyle="None"/>&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" BackColor="#0099FF" ForeColor="Black" OnClick="btnUpdate_Click" Text="Update" Width="143px" BorderStyle="None" />&nbsp;
                        <asp:Button ID="btnDelete" runat="server" BackColor="#0099FF" ForeColor="Black" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure to delete this record ?');" Text="Delete" Width="143px" BorderStyle="None" />&nbsp;
                        <asp:Button ID="btnSearch" runat="server" BackColor="#0099FF" ForeColor="Black" OnClick="btnSearch_Click" Text="Search" Width="143px" BorderStyle="None" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Width="594px" CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: justify" >
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
        </table>
            <br />
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 274px;
        }
        .auto-style3 {
            width: 80px;
        }
        .auto-style4 {
            width: 274px;
            height: 46px;
        }
        .auto-style5 {
            width: 80px;
            height: 46px;
        }
        .auto-style7 {
            width: 274px;
            height: 39px;
        }
        .auto-style8 {
           
            width: 80px;
            height: 39px;
        }
        .auto-style9 {
           
            height: 39px;
        }
        
        .auto-style10 {
            width: 274px;
            height: 54px;
        }
        .auto-style11 {
            width: 80px;
            height: 54px;
        }
        .auto-style12 {
            height: 54px;
        }
        .auto-style13 {
            height: 46px;
        }
        
        </style>
</asp:Content>

