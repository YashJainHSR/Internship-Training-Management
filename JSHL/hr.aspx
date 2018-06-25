<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hr.aspx.cs" Inherits="JSHL.hrd" EnableSessionState="True" MasterPageFile="~/Site.Mobile.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br><br>
    
    <form id="form1" runat="server">
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:1500px;">
                            <br>
<div>
                <asp:Button ID="NewApplications"  show-class="p1" runat="server" Text="New Applications" Width="200px" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="NewApplications_Click"></asp:Button>
                <asp:Button ID="InProgress"  show-class="p2" runat="server" Text="In Progress" Width="200px" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="InProgress_Click"></asp:Button>
                <asp:Button ID="Completed"  show-class="p3" runat="server" Text="Completed" Width="200px" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="Completed_Click"></asp:Button>

</div>
                            <br>
                            <div id="p1" runat="server">
                            <asp:GridView GridLines="Both" Width="98%" RowStyle-HorizontalAlign="Center" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False"  DataKeyNames="ApplicationNumber" DataSourceID="SqlDataSource1" CellPadding="4" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="ApplicationNumber" HeaderText="Application Number" ReadOnly="True" SortExpression="ApplicationNumber" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number" SortExpression="MobileNumber" />
                                    <asp:BoundField DataField="Reference" HeaderText="Reference" SortExpression="Reference" />
                                    <asp:BoundField DataField="ReferenceId" HeaderText="Reference ID" SortExpression="ReferenceId" />
                                    <asp:BoundField DataField="ReferenceContact" HeaderText="Reference Contact" SortExpression="ReferenceContact" />
                                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                                    <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                    <asp:BoundField DataField="Cemail" HeaderText="College Email" SortExpression="Cemail" />
                                    <asp:BoundField DataField="Field" HeaderText="Stream" SortExpression="Field" />
                                    <asp:BoundField DataField="Period" HeaderText="Period" SortExpression="Period" />
                                    <asp:CommandField ButtonType="Button" SelectText="Process" ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" BorderColor="Black" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT personaldetails.ApplicationNumber, personaldetails.Fname +' '+ personaldetails.Lname AS Name, personaldetails.Email, personaldetails.MobileNumber, personaldetails.Reference, personaldetails.ReferenceId, personaldetails.ReferenceContact, educationaldetails.College, educationaldetails.Degree, educationaldetails.[Graduation Status], educationaldetails.Cemail, fieldselected.Field, fieldselected.Period FROM personaldetails INNER JOIN educationaldetails ON personaldetails.ApplicationNumber = educationaldetails.ApplicationNumber INNER JOIN fieldselected ON personaldetails.ApplicationNumber = fieldselected.ApplicationNumber INNER JOIN appstatus ON personaldetails.ApplicationNumber = appstatus.ApplicationNumber WHERE (appstatus.Status = N'SUBMITTED')"></asp:SqlDataSource>
                                
                                </div>
                                <div id="p2" runat="server">
                                    
                                    <asp:GridView GridLines="Both" Width="98%" RowStyle-HorizontalAlign="Center" ID="GridView2" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" DataKeyNames="ApplicationNumber" DataSourceID="SqlDataSource2" CellPadding="4" AllowSorting="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ForeColor="#333333">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="ApplicationNumber" HeaderText="Application Number" ReadOnly="True" SortExpression="ApplicationNumber" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number" SortExpression="MobileNumber" />
                                            <asp:BoundField DataField="Reference" HeaderText="Reference" SortExpression="Reference" />
                                            <asp:BoundField DataField="ReferenceId" HeaderText="Reference ID" SortExpression="ReferenceId" />
                                            <asp:BoundField DataField="ReferenceContact" HeaderText="Reference Contact" SortExpression="ReferenceContact" />
                                            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                                            <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                            <asp:BoundField DataField="Cemail" HeaderText="College Email" SortExpression="Cemail" />
                                            <asp:BoundField DataField="Field" HeaderText="Stream" SortExpression="Field" />
                                            <asp:BoundField DataField="Period" HeaderText="Period" SortExpression="Period" />
                                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                            <asp:CommandField ButtonType="Button" SelectText="Complete" ShowSelectButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>

                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT personaldetails.ApplicationNumber, personaldetails.Fname + ' ' + personaldetails.Lname AS Name, personaldetails.Email, personaldetails.MobileNumber, personaldetails.Reference, personaldetails.ReferenceId, personaldetails.ReferenceContact, educationaldetails.College, educationaldetails.Degree, educationaldetails.[Graduation Status], educationaldetails.Cemail, fieldselected.Field, fieldselected.Period, appstatus.Status FROM personaldetails INNER JOIN educationaldetails ON personaldetails.ApplicationNumber = educationaldetails.ApplicationNumber INNER JOIN fieldselected ON personaldetails.ApplicationNumber = fieldselected.ApplicationNumber INNER JOIN appstatus ON personaldetails.ApplicationNumber = appstatus.ApplicationNumber WHERE (appstatus.Status = N'HR APPROVED') OR (appstatus.Status = N'DEPT APPROVED')"></asp:SqlDataSource>

                                    </div>
                            <div id="p3" runat="server">
                                <asp:GridView Width="98%" RowStyle-HorizontalAlign="Center" ID="GridView3" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" DataKeyNames="ApplicationNumber" DataSourceID="SqlDataSource3" CellPadding="4" AllowSorting="True" ForeColor="#333333" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" >
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="ApplicationNumber" HeaderText="Application Number" ReadOnly="True" SortExpression="ApplicationNumber" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number" SortExpression="MobileNumber" />
                                            <asp:BoundField DataField="Reference" HeaderText="Reference" SortExpression="Reference" />
                                            <asp:BoundField DataField="ReferenceId" HeaderText="Reference Id" SortExpression="ReferenceId" />
                                            <asp:BoundField DataField="ReferenceContact" HeaderText="Reference Contact" SortExpression="ReferenceContact" />
                                            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                                            <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                            <asp:BoundField DataField="Cemail" HeaderText="College Email" SortExpression="Cemail" />
                                            <asp:BoundField DataField="Field" HeaderText="Stream" SortExpression="Field" />
                                            <asp:BoundField DataField="Period" HeaderText="Period" SortExpression="Period" />
                                            <asp:CommandField ButtonType="Button" SelectText="Reprocess" ShowSelectButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT personaldetails.ApplicationNumber, personaldetails.Fname + ' ' + personaldetails.Lname AS Name, personaldetails.Email, personaldetails.MobileNumber, personaldetails.Reference, personaldetails.ReferenceId, personaldetails.ReferenceContact, educationaldetails.College, educationaldetails.Degree, educationaldetails.[Graduation Status], educationaldetails.Cemail, fieldselected.Field, fieldselected.Period FROM personaldetails INNER JOIN educationaldetails ON personaldetails.ApplicationNumber = educationaldetails.ApplicationNumber INNER JOIN fieldselected ON personaldetails.ApplicationNumber = fieldselected.ApplicationNumber INNER JOIN appstatus ON personaldetails.ApplicationNumber = appstatus.ApplicationNumber WHERE (appstatus.Status = N'COMPLETED')"></asp:SqlDataSource>

                                </div>




                           <br>
 <asp:Button ID="logout"  show-class="p3" Width="90px" runat="server" Text="Log Out" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="logout_Click"></asp:Button>

                            <br>
                            <br>

  </div>
        </form>
        </asp:Content>
