<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Billing.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="form-group">
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="Patient Id"></asp:Label>
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>

                </div>

                 <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Patient Name"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     </div>
                </div>
                <br /> <br /> <br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label3" runat="server" Text="Medicine ID"></asp:Label>
                    <asp:TextBox ID="txtmid" runat="server"></asp:TextBox>

                </div>

                <div class="col-md-4">
                    <asp:Label ID="Label4" runat="server" Text="Medicine Name"></asp:Label>
                    <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br /><br /><br />
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label5" runat="server" Text="Medicine Price"></asp:Label>
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>

                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label7" runat="server" Text="Description"></asp:Label>
                    <asp:TextBox ID="txtds" textmode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                    
                </div>
                <br /><br /><br/>
            <div class="row">
                <div class="col-md-2">

                       
                     </div>
                <div class="col-md-2">
                          <asp:Button ID="Button2" runat="server"  Text="Save"  />

                       
                          <asp:Button ID="Button1" runat="server"  Text="Print" />
                    </div>
                       
                     </div>

                </div>
            </div>
        


</asp:Content>

