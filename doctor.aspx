<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctor.aspx.cs" Inherits="Default2" %>

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
                         <asp:Label ID="Label1" runat="server" Text="Doctor Name"></asp:Label></div>
                         <div class="col-md-4">  <asp:TextBox ID="txtdname" runat="server" Height="20px"></asp:TextBox></div>
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
                    <div class="col-md-4">  <asp:TextBox ID="txtdlname" runat="server" Height="20px"></asp:TextBox></div>
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
                    <div class="col-md-4"> <asp:TextBox ID="txtdpd" runat="server" Height="20px"></asp:TextBox></div>
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
                    <div class="col-md-4"> <asp:TextBox ID="txtdcpd" runat="server" Height="20px"></asp:TextBox> </div>
                      <div class="col-md-4">   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password should be same" ControlToCompare="txtdpd" ControlToValidate="txtdcpd"></asp:CompareValidator> </div>
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

