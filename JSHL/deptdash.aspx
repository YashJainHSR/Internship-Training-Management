<%@ Page Title="" Language="C#" EnableSessionState="True" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deptdash.aspx.cs" Inherits="JSHL.deptdash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function validate() {
            var Area = document.getElementById('<%=area.ClientID %>').value;
            var Trainer = document.getElementById('<%=trainer.ClientID %>').value;
            if (Area == "") {
            alert("Please Enter Area to Assign");
            document.getElementById('<%=area.ClientID %>').focus();
            return false;
            }
            if (Trainer == "") {
            alert("Please Enter Trainer Name");
            document.getElementById('<%=trainer.ClientID %>').focus();
            return false;
            }

        }
        </script>
    <form id="form1" runat="server">

 
    <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:700px;">
                            <br>
        Application To Process: <asp:Label ID="Label1" runat="server"></asp:Label>
        
        <br>
        <div class="mdl-shadow--16dp" style="background-color:#000000" style="width:700px">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Trainer Allocation</div>
                        <br>
                        </div>
                        <br>
                        <div><br>
                            <table width="95%">
                                   <tr>
                                 <td width="49%"><asp:Label ID="Label2" runat="server" Text="Area: "></asp:Label><td>
                                 <td width="1%"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Area: " ControlToValidate="area" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                                <td width="60%"><asp:TextBox ID="area" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Area for Training';" placeholder='Area for Training'></asp:TextBox></td>
                                
                    </tr>
                                       </table> 
                            <br>
                            
                            
                            <br>
                        </div>
        <br>
        <div><br>
                            <table width="95%">
                                   <tr>
                                 <td width="49%"><asp:Label ID="Label3" runat="server" Text="Trainer: "></asp:Label><td>
                                 <td width="1%"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Trainer Name: " ControlToValidate="trainer" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                                <td width="60%"><asp:TextBox ID="trainer" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Trainer Name';" placeholder='Trainer Name'></asp:TextBox></td>
                                
                    </tr>
                                       </table> 
                            <br>
                            
                            
                            <br>

            </div>
        <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="back" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="assign" runat="server" Text="Assign" BorderStyle="Groove" OnClientClick="return validate();" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"  ValidationGroup="Pinfo" OnClick="assign_Click" ></asp:Button>
        <br>    <br>
        </div>

        </div>
       </form>
</asp:Content>
