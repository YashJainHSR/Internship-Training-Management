<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableSessionState="True" AutoEventWireup="true" CodeBehind="dept.aspx.cs" Inherits="JSHL.dept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br><br>
    
    <form id="form1" runat="server">
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:1500px;">
                            <br>
                            Department: <asp:Label ID="Label1" runat="server"></asp:Label>
                            <br>
<div>
                <asp:Button ID="NewApplications"  show-class="p1" runat="server" Text="New Applications" Width="200px" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="NewApplications_Click"></asp:Button>
                <asp:Button ID="InProgress"  show-class="p2" runat="server" Text="In Progress" Width="200px" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="InProgress_Click"></asp:Button>
                <asp:Button ID="Completed"  show-class="p3" runat="server" Text="Completed" Width="200px" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="Completed_Click"></asp:Button>

</div>
                            <br>
                            <div id="p1" runat="server">
                            <asp:GridView Width="98%" RowStyle-HorizontalAlign="Center" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False"  DataKeyNames="ApplicationNumber" DataSourceID="SqlDataSource1" CellPadding="4" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333" GridLines="Both">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="ApplicationNumber" HeaderText="ApplicationNumber" ReadOnly="True" SortExpression="ApplicationNumber" />
                                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                                    <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                                    <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT personaldetails.ApplicationNumber, personaldetails.Fname, personaldetails.Lname, personaldetails.Email, personaldetails.MobileNumber, appstatus.Status, educationaldetails.Degree, educationaldetails.[Graduation Status], educationaldetails.College, educationaldetails.Skills FROM personaldetails INNER JOIN appstatus ON personaldetails.ApplicationNumber = appstatus.ApplicationNumber INNER JOIN educationaldetails ON personaldetails.ApplicationNumber = educationaldetails.ApplicationNumber INNER JOIN hrapproved ON personaldetails.ApplicationNumber = hrapproved.ApplicationNumber WHERE (appstatus.Status = N'HR APPROVED') AND (hrapproved.PlantCode = @Plant) AND (hrapproved.Department = @Dept)">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="" Name="Plant" SessionField="Plant" />
        <asp:SessionParameter DefaultValue="" Name="Dept" SessionField="Department" />
    </SelectParameters>
                                </asp:SqlDataSource>
                                
                                </div>
                                <div id="p2" runat="server">
                                    
                                    <asp:GridView Width="98%" RowStyle-HorizontalAlign="Center" ID="GridView2" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" DataKeyNames="ApplicationNumber" DataSourceID="SqlDataSource2" CellPadding="4" AllowSorting="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ForeColor="#333333" GridLines="Both">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="ApplicationNumber" HeaderText="ApplicationNumber" ReadOnly="True" SortExpression="ApplicationNumber" />
                                            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                                            <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                                            <asp:BoundField DataField="Document" HeaderText="Document" SortExpression="Document" />
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

                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT appstatus.ApplicationNumber, personaldetails.Fname, personaldetails.Lname, personaldetails.Email, personaldetails.MobileNumber, educationaldetails.Degree, educationaldetails.[Graduation Status], educationaldetails.College, DocumentUpload.[Document] FROM appstatus INNER JOIN DocumentUpload ON appstatus.ApplicationNumber = DocumentUpload.ApplicationNumber INNER JOIN educationaldetails ON appstatus.ApplicationNumber = educationaldetails.ApplicationNumber INNER JOIN fieldselected ON appstatus.ApplicationNumber = fieldselected.ApplicationNumber INNER JOIN personaldetails ON appstatus.ApplicationNumber = personaldetails.ApplicationNumber INNER JOIN hrapproved ON appstatus.ApplicationNumber = hrapproved.ApplicationNumber WHERE (appstatus.Status = N'DEPT APPROVED') AND (hrapproved.PlantCode = @Plant) AND (hrapproved.Department = @Department)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Plant" SessionField="Plant" />
                                            <asp:SessionParameter Name="Department" SessionField="Department" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                    </div>
                            <div id="p3" runat="server">
                                <asp:GridView Width="98%" RowStyle-HorizontalAlign="Center" ID="GridView3" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" DataKeyNames="ApplicationNumber" DataSourceID="SqlDataSource3" CellPadding="4" AllowSorting="True" ForeColor="#333333" GridLines="Both">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="ApplicationNumber" HeaderText="ApplicationNumber" ReadOnly="True" SortExpression="ApplicationNumber" />
                                            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                                            <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                                            <asp:BoundField DataField="Document" HeaderText="Document" SortExpression="Document" />
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

                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT appstatus.ApplicationNumber, personaldetails.Fname, personaldetails.Lname, personaldetails.Email, personaldetails.MobileNumber, educationaldetails.Degree, educationaldetails.[Graduation Status], educationaldetails.College, DocumentUpload.[Document] FROM appstatus INNER JOIN DocumentUpload ON appstatus.ApplicationNumber = DocumentUpload.ApplicationNumber INNER JOIN educationaldetails ON appstatus.ApplicationNumber = educationaldetails.ApplicationNumber INNER JOIN fieldselected ON appstatus.ApplicationNumber = fieldselected.ApplicationNumber INNER JOIN personaldetails ON appstatus.ApplicationNumber = personaldetails.ApplicationNumber INNER JOIN hrapproved ON appstatus.ApplicationNumber = hrapproved.ApplicationNumber WHERE (appstatus.Status = N'COMPLETED') AND (hrapproved.PlantCode = @Plant) AND (hrapproved.Department = @Department)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Plant" SessionField="Plant" />
                                        <asp:SessionParameter Name="Department" SessionField="Department" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                                </div>




                           <br>
 <asp:Button ID="logout"  show-class="p3" Width="90px" runat="server" Text="Log Out" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="logout_Click"></asp:Button>

                            <br>
                            <br>

  </div>
        </form>

</asp:Content>
