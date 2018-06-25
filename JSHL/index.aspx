<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JSHL.index" EnableSessionState="True" MasterPageFile="~/Site.Master" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function validate()
        {
            var Period = document.getElementById('<%=period.ClientID %>').value;
            var Stream = document.getElementById('<%=stream.ClientID %>').value;
            if (Stream == "")
            {
                alert("Please Enter Field/Stream");
                document.getElementById('<%=stream.ClientID %>').focus();
                return false;
            }
            if (Period == "")
            {
                alert("Please Enter Period for Training/Internship");
                document.getElementById('<%=period.ClientID %>').focus();
                return false;
            }
        }
    </script>

    <form id="form1" runat="server">
  
        <main class="mdl-layout__content">
            <div class="page-content">
    <br><br>
      <div class="demo-card-wide mdl-card mdl-shadow--16dp">
        <div class="mdl-shadow--16dp" style="background-color:#000000">
          <br>
          <div class="mdl-typography--title" style="color:#ffffff">Select the Field/Stream</div>
          <br>
        </div>
        <br>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            
                <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="field_SelectedIndexChanged" ID="field" runat="server" DataSourceID="SqlDataSource1" DataTextField="field" DataValueField="value">
                    
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT [field], [value] FROM [field]"></asp:SqlDataSource>
                <br>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ErrorMessage="Please select a Field" ControlToValidate="field" Operator="NotEqual" ValueToCompare="000"></asp:CompareValidator>
          <br />
              <asp:TextBox Text="Not Applicable" Visible="false" style="text-align: center" Width="200px" ID="stream" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Field/Stream';" placeholder='Field/Stream'></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Stream" ControlToValidate="stream" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
              <br>
          </div>
          <br>

          <div class="mdl-shadow--16dp" style="background-color:#000000">
          <br>
          <div class="mdl-typography--title" style="color:#ffffff">Time period for which Training/Internship is required:</div>
          <br>
        </div>
        <br>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <asp:TextBox style="text-align: center" Width="200px" ID="period" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='In Days/Weeks/Months';" placeholder='In Days/Weeks/Months'></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Period" ControlToValidate="period" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
              <br>
          </div>
          <br>

          <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
<asp:Button ID="Button1" runat="server" Text="Next" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick="return validate();" OnClick="Button1_Click" ></asp:Button>        
            <br><br>
          </div>
      </div>
            </div>
             </main>
    </form>
</asp:Content>