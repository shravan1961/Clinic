<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class ="form-group">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4">
                            
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4">

                        </div>

                        <br /> <br />
                         
                         <div class="col-md-4">
                            
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4">

                        </div>
                        <br /> <br />
                         <div class="col-md-4">
                            
                            
                        </div>
                       
                        <div class="col-md-4">
                           
                      <asp:Button ID="btnlogin" runat="server" Text="Login" style="left:330px" OnClick="btnlogin_Click" /> 
                       <asp:Button ID="btnnw" runat="server" Text="New User" OnClick="btnnw_Click" />
                        </div>
                        <div class="col-md-4">

                            <br /><br /><br />


                        </div>
                    </div>
                </div>
            </div>
       

</asp:Content>
      

