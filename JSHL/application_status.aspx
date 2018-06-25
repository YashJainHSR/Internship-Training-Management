<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="application_status.aspx.cs" EnableSessionState="True" MasterPageFile="~/Site.Master" Inherits="JSHL.application_status" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function validate() {
            var App = document.getElementById('<%=applicationno.ClientID %>').value;
            if (App == "") 
{
            alert("Please Enter Your Application Number");
             document.getElementById('<%=applicationno.ClientID %>').focus();
    return false;
        }
var appPat = /^[2][0-9]{9}$/
    var appmatchArray = App.match(appPat);
    if (appmatchArray == null) {
        alert("Please Enter a Valid Application Number");
        return false;
    }
}
</script>
        
<br>
                    <form id="applstatus" runat="server">
<br><br>
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:500px">
                            <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Check Status of your Application</div>
                        <br>
                        </div>
                        <br>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <asp:TextBox ID="applicationno" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Enter Your Application Number';" placeholder='Enter Your Application Number'  width="300px"></asp:TextBox>
                            </div>
                            <br>
                <br>
                <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
           <asp:Button ID="Button1" runat="server" Text="Show Application Status" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick="return validate();" OnClick="Button1_Click"></asp:Button>
            <br><br>
        </div>
            </div>
   
    </Form>

</asp:Content>