<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skills.aspx.cs" Inherits="JSHL.WebForm4" EnableSessionState="True" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br>                
    <form id="skills" runat="server">
        
                    <br>
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:500px">
                            <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br><br>
                        <div class="mdl-typography--title" style="color:#ffffff">Skills related to field in which training is required.</div>
                        <br><br>
                        </div>
                        <br>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <asp:TextBox Rows="2" Wrap="true" Width="300px" ID="skill" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Skills';" placeholder="Skills"></asp:TextBox>
                               
                            </div>
                            <br>
                            
                <br>
                <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="Button1" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button2" runat="server" Text="Next" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick="return validate();" OnClick="Button2_Click"></asp:Button>

            <br><br>
        </div>
            </div>
                    </Form>

    
                    

    
</asp:Content>