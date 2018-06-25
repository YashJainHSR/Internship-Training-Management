<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" EnableSessionState="True" AutoEventWireup="true" CodeBehind="hrdash.aspx.cs" Inherits="JSHL.hrdash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

 
    <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:1200px;">
                            <br>
        Application To Process: <asp:Label ID="Label1" runat="server"></asp:Label>
        <br><div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Plant Code</div>
                        <br>
                        </div>
                        <br>
                        <div>
                            <asp:RadioButtonList ID="plantcode" runat="server" Width="104px">
                                <asp:ListItem class="mdl-radio__button" Value="1100" Text="1100">1100</asp:ListItem>
                                <asp:ListItem class="mdl-radio__button" Text="1200" Value="1200">1200</asp:ListItem>
                            </asp:RadioButtonList>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Select a Plant Code" ControlToValidate="plantcode" ForeColor="Red">*</asp:RequiredFieldValidator>

                            <br>
                        </div>
        <br>
        <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Department</div>
                        <br>
                        </div>
                        <br>
                        <div>
                             <asp:DropDownList ID="department" runat="server" DataSourceID="SqlDataSource1" DataTextField="Department" DataValueField="Department">
                   
                </asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT DISTINCT Department FROM adminlog WHERE (Department NOT LIKE '%' + @Department + '%')">
                                 <SelectParameters>
                                     <asp:Parameter DefaultValue="HR" Name="Department" Type="String" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                             <br>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please select a Department" ForeColor="Red" ControlToValidate="department" Operator="NotEqual" ValueToCompare="000"></asp:CompareValidator>
                            
                            
                            <br>
                        </div>
        <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="back" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="assign" runat="server" Text="Assign" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"  ValidationGroup="Pinfo" OnClick="assign_Click"></asp:Button>
           <br><br>
            </div>

        </div>
       </form>
</asp:Content>
