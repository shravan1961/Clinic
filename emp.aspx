<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="emp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-group">
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-md-4">
                    

                </div>
                    
                        <div class="col-md-4">
                    <div class="col-md-4">   
                         <asp:Label ID="Label1" runat="server" Text="Emp Name"></asp:Label></div>
                         <div class="col-md-4">  <asp:TextBox ID="txtname" runat="server" Height="20px"></asp:TextBox></div>
                     </div>
                       <div class="col-md-4">
                           
                            </div>
                </div>
            <br /><br />

             <div class="row">
                
                <div class="col-md-4">
                    

                </div>
                    <div class="col-md-4">
                        <div class="col-md-4">

                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></div>
                    <div class="col-md-4">  <asp:TextBox ID="txtlname" runat="server" Height="20px"></asp:TextBox></div>
                     </div>
                       <div class="col-md-4">
                           
                            </div>
                </div>
            <br /><br />
           
             <div class="row">
                
                <div class="col-md-4">
                    

                </div>
                    <div class="col-md-4">
                         <div class="col-md-4">
                        <asp:Label ID="Label3" runat="server" Text="password"></asp:Label></div>
                    <div class="col-md-4"> <asp:TextBox ID="txtpd" runat="server" Height="20px"></asp:TextBox></div>
                     </div>
                       <div class="col-md-4">
                           
                            </div>
                </div>
           <br /><br />
           
            <div class="row">
                
                <div class="col-md-4">
                    

                </div>
                    <div class="col-md-4">
                      <div class="col-md-4">   <asp:Label ID="Label4" runat="server" Text="confirm password"></asp:Label> </div>
                    <div class="col-md-4"> <asp:TextBox ID="txtcpd" runat="server" Height="20px"></asp:TextBox> </div>
                      <div class="col-md-4">   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password should be same" ControlToCompare="txtpd" ControlToValidate="txtcpd"></asp:CompareValidator> </div>
                     </div>
                       <div class="col-md-4">
                           
                            </div>
                </div>
           
            
             <div class="row">
                
                <div class="col-md-4">
                    

                </div>
                    <div class="col-md-4">
                        
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />

                     </div>
                       <div class="col-md-4">
                           
                            </div>
                </div>
            <br /><br />
           
            
            
            
             
            
            
             </div>

    </div>




</asp:Content>

