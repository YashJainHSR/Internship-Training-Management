<%@ Page Title="Confirmation Letter Details" Language="C#" EnableSessionState="True" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="confirmdet.aspx.cs" Inherits="JSHL.confirmdet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function validate()
        {
            var App = document.getElementById('<%=app.ClientID %>').value;
            var StartDate = document.getElementById('<%=start.ClientID %>').value;
            if (App == "")
            {
                alert("Please Enter Application Number");
                document.getElementById('<%=app.ClientID %>').focus();
                return false;
            }
            if (StartDate == "")
            {
                alert("Please Enter Start Date");
                document.getElementById('<%=start.ClientID %>').focus();
                return false;

            }
        }
    </script>
    <form id="form1" runat="server">
 <br>
    <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:400px;">  
        <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Application Number</div>
                        <br>
                        </div>
                        <br>
                        <div>
                            <asp:TextBox Width="250px" ID="app" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Application Number';" placeholder='Application Number'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Application Number" ControlToValidate="app" ForeColor="Red">*</asp:RequiredFieldValidator>

                            <br>
                        </div>
        <br>
        <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Date From Which Training Starts<br/>(eg. 01 June, 2018)</div>
                        <br>
                        </div>
                        <br>
                        <div>
                            <asp:TextBox Width="250px" ID="start" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Date of Training Start';" placeholder='Date of Training Start'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Date" ControlToValidate="start" ForeColor="Red">*</asp:RequiredFieldValidator> 

                        <br>
                        </div>
        <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="back" runat="server" Text="Back" BorderStyle="Groove" Width="100px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="assign" runat="server" Text="Generate" BorderStyle="Groove" Width="100px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick="return validate();" OnClick="assign_Click"></asp:Button>
           <br><br>
            </div>

        </div>
       </form>
</asp:Content>
