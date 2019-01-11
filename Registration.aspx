<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

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
                        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                       
                         <asp:TextBox ID="txtname" runat="server"></asp:TextBox>

                     </div>
                       <div class="col-md-4">
                           <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                           <asp:TextBox ID="Txtlname" runat="server"></asp:TextBox>
                            </div>
                </div>
                <br /> <br /> <br />
            <div class="row">

                 <div class="col-md-4">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                     <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                          <asp:ListItem>Others</asp:ListItem>
                       
                     </asp:DropDownList>
                </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label5" runat="server" Text="Occupation"></asp:Label>
                       
                             <asp:TextBox ID="txtoccu" runat="server"></asp:TextBox>

                             </div>
                          <div class="col-md-4">
                           <asp:Label ID="Label6" runat="server" Text="Patient Age"></asp:Label>
                           <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                             </div>
            </div>
                <br /><br /><br />
            <div class="row">
                 <div class="col-md-4">
                    <asp:Label ID="Label7" runat="server" Text="Blood Group"></asp:Label>
                    <asp:TextBox ID="txtbg" runat="server"></asp:TextBox>

                            </div>
                        <div class="col-md-4">
                        <asp:Label ID="Label8" runat="server" Text="Martial Status"></asp:Label>
                       
                        <asp:DropDownList ID="DropDownList2" runat="server">
                             <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Single</asp:ListItem>
                        </asp:DropDownList>
                           </div>
                              <div class="col-md-4">
                                  <asp:Label ID="Label9" runat="server" Text="Address:  "></asp:Label>
                                  <asp:TextBox ID="txtad" runat="server"></asp:TextBox>
                                </div>
                </div>
                <br />
                <br />
                <br />
            <div class="row">
                 <div class="col-md-4">
                    <asp:Label ID="Label10" runat="server" Text="Contact Num"></asp:Label>
                    <asp:TextBox ID="txtcnum" runat="server"></asp:TextBox>

                </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
                       
                         <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>

                     </div>
                       <div class="col-md-4">
                           <asp:Label ID="Label12" runat="server" Text="Pin code"></asp:Label>
                           <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                            </div>
            </div>
                <br />
                <br />
                <br />
                 <div class="col-md-4">
                   

                </div>
                    <div class="col-md-4">
                          <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                           <asp:Button ID="Button2" runat="server" Text="Retrive data" OnClick="Button2_Click" />
                     </div>
                     <div class="col-md-4">
                         
                            </div>

                <br />
                 <br />
                 <br />

                <div class="col-md-4">
                   

                </div>
                    <div class="col-md-4">
<%--                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>--%>
                     </div>
                     <div class="col-md-4">
                         
                            </div>


            </div>
        </div> 
  
</asp:Content>

