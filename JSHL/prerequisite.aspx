<%@ Page Language="C#"MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="prerequisite.aspx.cs" Inherits="JSHL.WebForm1"EnableSessionState="True" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

        <main class="mdl-layout__content">
            <div class="page-content">
    <br><br>
      <div class="demo-card-wide mdl-card mdl-shadow--16dp">
        <div class="mdl-shadow--16dp" style="background-color:#000000">
          <br>
          
          <div class="mdl-typography--title" style="color:#ffffff">Prerequisite: </div>
          <br>
        </div>
        <hr>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" contenteditable="false">
              <asp:Label ID="Label1" runat="server"></asp:Label>
          </div>
          <div class="mdl-shadow--16dp" style="background-color:#000000">
          <br>
          <div class="mdl-typography--title" style="color:#ffffff">Who Can Apply: </div>
              <br>
        </div>
        <hr>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <asp:Label ID="Label2" runat="server"></asp:Label>
          </div>
          <br>
          <br>
          <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
          <asp:Button ID="Button1" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          <asp:Button ID="Button2" runat="server" Text="Accept" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="Button2_Click"></asp:Button>
            <br><br>
          </div>
      </div>
        </div>
            </main>
     
        </form>

</asp:Content>
