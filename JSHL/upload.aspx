<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="JSHL.upload" EnableSessionState="True" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="upload" runat="server">
<br><br>
        
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:500px">
                             <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br><br>
                        <div class="mdl-typography--title" style="color:#ffffff">Upload the Recommendation letter From your College/University</div>
                        <br><br>
                        </div>
                        <br>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <asp:FileUpload ID="letter"  class="mdl-textfield__input" runat="server" />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                            <br>
                            
                <br>
                <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                    <asp:Button ID="Button2" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button1" runat="server" Text="Next" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="Button1_Click"></asp:Button>>
            
            <br><br>
        </div>
            </div>
    
    </Form>
    </asp:Content>