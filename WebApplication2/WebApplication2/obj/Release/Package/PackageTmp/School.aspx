<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="School.aspx.cs" Inherits="WebApplication2.School" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>School details</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="SId" HeaderText="SId" ReadOnly="True" SortExpression="SId" />
                    <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rohitkokaredbConnectionString %>" ProviderName="<%$ ConnectionStrings:rohitkokaredbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Rainbow]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
