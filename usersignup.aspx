<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="EducationalOnlineSolution.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Sign Up</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Alexandria Governorate" Value="Alexandria Governorate" />
                              <asp:ListItem Text="Aswan Governorate" Value="Aswan Governorate" />
                              <asp:ListItem Text="Asyut Governorate" Value="Asyut Governorate" />
                              <asp:ListItem Text="Beheira Governorate" Value="Beheira Governorate" />
                              <asp:ListItem Text="Beni Suef Governorate" Value="Beni Suef Governorate" />
                              <asp:ListItem Text="Cairo Governorate" Value="Cairo Governorate" />
                              <asp:ListItem Text="Dakahlia Governorate" Value="Dakahlia Governorate" />
                              <asp:ListItem Text="Damietta Governorate" Value="Damietta Governorate" />
                              <asp:ListItem Text="Faiyum Governorate" Value="Faiyum Governorate" />
                              <asp:ListItem Text="Gharbia Governorate" Value="Gharbia Governorate" />
                              <asp:ListItem Text="Giza Governorate" Value="Giza Governorate" />
                              <asp:ListItem Text="Ismailia Governorate" Value="Ismailia Governorate" />
                              <asp:ListItem Text="Kafr El Sheikh Governorate" Value="Kafr El Sheikh Governorate" />
                              <asp:ListItem Text="Luxor Governorate" Value="Luxor Governorate" />
                              <asp:ListItem Text="Matruh Governorate" Value="Matruh Governorate" />
                              <asp:ListItem Text="Minya Governorate" Value="Minya Governorate" />
                              <asp:ListItem Text="Monufia Governorate" Value="Monufia Governorate" />
                              <asp:ListItem Text="New Valley Governorate" Value="New Valley Governorate" />
                              <asp:ListItem Text="North Sinai Governorate" Value="North Sinai Governorate" />
                              <asp:ListItem Text="Port Said Governorate" Value="Port Said Governorate" />
                              <asp:ListItem Text="Qalyubia Governorate" Value="Qalyubia Governorate" />
                              <asp:ListItem Text="Qena Governorate" Value="Qena Governorate" />
                              <asp:ListItem Text="Red Sea Governorate" Value="Red Sea Governorate" />
                              <asp:ListItem Text="Sharqia Governorate" Value="Sharqia Governorate" />
                              <asp:ListItem Text="Sohag Governorate" Value="Sohag Governorate" />
                              <asp:ListItem Text="South Sinai Governorate" Value="South Sinai Governorate" />
                              <asp:ListItem Text="Suez Governorate" Value="Suez Governorate" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Postal Code</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Postal Code" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>