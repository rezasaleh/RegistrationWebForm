﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationWebForm.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>User Information: </h1>
    <br />
    <asp:Panel ID="enterUserInfoPanel" runat="server">
      <table cellpadding="3" border="0">
        <tr>
          <td>
            First name:</td>
          <td>
            <asp:TextBox ID="firstNameTextBox" runat="server" />

              <asp:RequiredFieldValidator ID="firstNameTextBoxValidator" runat="server" ForeColor="Red" ControlToValidate="firstNameTextBox" ErrorMessage="Please Enter First Name"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td>
            Last name:</td>
          <td>
            <asp:TextBox ID="lastNameTextBox" runat="server" />
              <asp:RequiredFieldValidator ID="lastNameTextBoxValidator" runat="server"  ControlToValidate="lastNameTextBox" ForeColor="Red" ErrorMessage="Please Enter Last   Name"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td>
            Address:</td>
          <td>
            <asp:TextBox ID="addressTextBox" runat="server" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="addressTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter an Address"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td>
            City:</td>
          <td>
            <asp:TextBox ID="cityTextBox" runat="server" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="cityTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a City"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td>
            State or Province:</td>
          <td>
            <asp:TextBox ID="stateOrProvinceTextBox" MaxLength="2" runat="server" />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="stateOrProvinceTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a Province"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="provinceValidator" runat="server" ValidationExpression="[A-z]{2}" ControlToValidate="stateOrProvinceTextBox" ForeColor="Red" ErrorMessage="Please enter 2 charaters province"></asp:RegularExpressionValidator>
          </td>
        </tr>
        <tr>
          <td>
            Zip Code/Postal Code:</td>
          <td>
            <asp:TextBox ID="zipCodeTextBox" runat="server" />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="zipCodeTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a Postal Code"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td>
            Country:</td>
          <td>
            <asp:TextBox ID="countryTextBox" runat="server" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="countryTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a Country"></asp:RequiredFieldValidator>

          </td>
        </tr>
         <tr><td> &nbsp;</td><td>&nbsp;</td></tr> <br />
        <tr>
          <td>
            &nbsp;</td>
          <td>
            <asp:Button ID="enterInfoButton" runat="server" Text="Enter user information" OnClick="EnterInfoButton_OnClick" /></td>
        </tr>
      </table>
    </asp:Panel>
    

</asp:Content>
