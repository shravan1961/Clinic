<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="medical.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:Panel ID="Panel1" runat="server" BorderStyle="Double" BackColor="Wheat">
         <div class="row">
     <div class="form-group">
        
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <asp:Label ID="Label1" runat="server" Text="Patient ID"></asp:Label>
                <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:Label ID="Label3" runat="server" Text="Tests Performed"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" >
                          <asp:ListItem>Blood Test</asp:ListItem>
                        <asp:ListItem>Urine Test</asp:ListItem>
                          
                       
                     </asp:DropDownList>
                </div>
            <div class="col-md-4">
                <asp:Label ID="Label2" runat="server" Text="Medicine Category"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" >
                          <asp:ListItem>Injection</asp:ListItem>
                        <asp:ListItem>Tablet</asp:ListItem>
                     </asp:DropDownList>
            </div>
            </div>
            <br /><br /><br />
        <div class="row">
             <div class="col-md-4">
                <asp:Label ID="Label5" runat="server" Text="Medicine ID"></asp:Label>
                 <asp:DropDownList ID="DropDownList4" runat="server" autopostback="true" OnSelectedIndexChanged ="DropDownList4_SelectedIndexChanged" OnTextChanged="Dropdown4"></asp:DropDownList>
            </div>

            <div class="col-md-4">
                <asp:Label ID="Label6" runat="server" Text="Medicine Name"></asp:Label>
                <asp:TextBox ID="txtmd" runat="server"></asp:TextBox>
            </div>
            
            
            <div class="col-md-4">
                                <asp:Label ID="Label4" runat="server" Text="Medicine Dosage"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" >
                          <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem>110</asp:ListItem>
                    <asp:ListItem>111</asp:ListItem>
                                        <asp:ListItem>010</asp:ListItem>
                                        <asp:ListItem>001</asp:ListItem>
                                        <asp:ListItem>101</asp:ListItem>



                     </asp:DropDownList>
                </div>


                <br />
                <br />
                <br />
            <div class="row">
                 <div class="col-md-8">
                    <asp:Label ID="Label7" runat="server" Text="Description"></asp:Label>
                    <asp:TextBox ID="txtds" textmode="MultiLine" runat="server"></asp:TextBox>
                    
                </div>
                </div>
                <br /><br /><br />

            <div class="row">
                <div class="col-md-4">
                   

                
                    
                          <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"  />
                           <%--<asp:Button ID="Button2" runat="server" Text="Retrive data" OnClick="Button2_Click" />--%>
                          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Bill" />
                     </div>
                   </div>  
            
      </div>
    </div>
  </div>
             
</div>
         </asp:Panel>
    
</asp:Content>

