<%@ Page Title="Completion Letter details"  EnableSessionState="True" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="completiondet.aspx.cs" Inherits="JSHL.completiondet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script type="text/javascript">
        function validate()
        {
            var App = document.getElementById('<%=app.ClientID %>').value;
            var Perf = document.getElementById('<%=perf.ClientID %>').value;
            var StartDate = document.getElementById('<%=start.ClientID %>').value;
            var EndDate = document.getElementById('<%=end.ClientID %>').value;
            if (App == "")
            {
                alert("Please Enter Application Number");
                document.getElementById('<%=app.ClientID %>').focus();
                return false;
            }
            if (Perf == "")
            {
                alert("Please Enter Performance of Intern/Trainee");
                document.getElementById('<%=perf.ClientID %>').focus();
                return false;

            }
            if (StartDate == "")
            {
                alert("Please Enter Start Date of Training");
                document.getElementById('<%=perf.ClientID %>').focus();
                return false;

            }
            if (EndDate == "")
            {
                alert("Please Enter End Date of Training");
                document.getElementById('<%=perf.ClientID %>').focus();
                return false;

            }
        }
    </script>
    <form id="form1" runat="server">
 <br>
    <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:500px;">  
        <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Application Number</div>
                        <br>
                        </div>
                        <br>
                        <div>
                            <asp:TextBox AutoPostBack="true" OnTextChanged="app_TextChanged" Width="250px" ID="app" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Application Number';" placeholder='Application Number'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Application Number" ControlToValidate="app" ForeColor="Red">*</asp:RequiredFieldValidator>

                            <br>
                        </div>
        <br>
        <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Performance of Intern/Trainee</div>
                        <br>
                        </div>
                        <br>
                        <div>
                            <asp:TextBox Width="250px" ID="perf" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Performance of Intern/Trainee';" placeholder='Performance of Intern/Trainee'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Performance" ControlToValidate="perf" ForeColor="Red">*</asp:RequiredFieldValidator> 

                        <br>
                        </div><br>
        <center>
        <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Training Period</div>
                        <br>
                        </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width:175px;">
                    <asp:TextBox Wrap="true" Font-Bold="true" style="text-align:center" ID="start" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Start Date';" placeholder='Start date'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter Start Date" ControlToValidate="start" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                    <div  class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width:50px;"></div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width:175px;">
                    <asp:TextBox Wrap="true" ID="end" runat="server" style="text-align:center" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='End Date';" placeholder='End Date'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter End date" ControlToValidate="end" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
                   
                </div>
        <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="back" runat="server" Text="Back" BorderStyle="Groove" Width="100px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="assign" runat="server" Text="Generate" BorderStyle="Groove" Width="100px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick="return validate();" OnClick="assign_Click"></asp:Button>
           <br><br>
            </div>

    </div>
       </form>

</asp:Content>
