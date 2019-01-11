<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
        <asp:BoundField DataField="plname" HeaderText="plname" SortExpression="plname" />
        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
        <asp:BoundField DataField="occupation" HeaderText="occupation" SortExpression="occupation" />
        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
        <asp:BoundField DataField="blood_group" HeaderText="blood_group" SortExpression="blood_group" />
        <asp:BoundField DataField="mar_status" HeaderText="mar_status" SortExpression="mar_status" />
        <asp:BoundField DataField="adress" HeaderText="adress" SortExpression="adress" />
        <asp:BoundField DataField="cnum" HeaderText="cnum" SortExpression="cnum" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="pin" HeaderText="pin" SortExpression="pin" />
    </Columns>
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:clinicConnectionString %>" SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>

</asp:Content>

