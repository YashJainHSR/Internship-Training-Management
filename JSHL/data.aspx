<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="data.aspx.cs" Inherits="JSHL.data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><br/><center>
            <asp:Button ID="home" Width="90px" runat="server" Text="Home" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="home_Click"></asp:Button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="Export" Width="90px" runat="server" Text="Export" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="Export_Click"></asp:Button><br/>
            </center><br/>
            <asp:GridView Width="90%" OnRowDataBound="GridView1_RowDataBound" RowStyle-HorizontalAlign="Center" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ApplicationNumber" DataSourceID="SqlDataSource1" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ApplicationNumber" HeaderText="Application Number" ReadOnly="True" SortExpression="ApplicationNumber" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                    <asp:BoundField DataField="Reference" HeaderText="JSHL Reference" SortExpression="Reference" />
                    <asp:BoundField DataField="ReferenceId" HeaderText="Reference ID" SortExpression="ReferenceId" />
                    <asp:BoundField DataField="ReferenceContact" HeaderText="Reference Contact" SortExpression="ReferenceContact" />
                    <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                    <asp:BoundField DataField="Degree" HeaderText="Degree/Diploma" SortExpression="Degree" />
                    <asp:BoundField DataField="Field" HeaderText="Stream" SortExpression="Field" />
                    <asp:BoundField DataField="Graduation Status" HeaderText="Graduation Status" SortExpression="Graduation Status" />
                    <asp:BoundField DataField="Cref" HeaderText="College Reference" SortExpression="Cref" />
                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                    <asp:BoundField DataField="Ccity" HeaderText="College City" SortExpression="Ccity" />
                    <asp:BoundField DataField="Cstate" HeaderText="College State" SortExpression="Cstate" />
                    <asp:BoundField DataField="Cemail" HeaderText="College Email" SortExpression="Cemail" />
                    <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" />
                    <asp:BoundField DataField="Document" HeaderText="Document" SortExpression="Document" />
                    <asp:BoundField DataField="Period" HeaderText="Training Period" SortExpression="Period" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="ConfirmCert" HeaderText="Confirmation Certificate" SortExpression="ConfirmCert" />
                    <asp:BoundField DataField="ConfirmCertIssDate" HeaderText="Issue Date" SortExpression="ConfirmCertIssDate" />
                    <asp:BoundField DataField="CompleteCert" HeaderText="Completion Certificate" SortExpression="CompleteCert" />
                    <asp:BoundField DataField="CompleteCertIssDate" HeaderText="CompleteCertIssDate" SortExpression="CompleteCertIssDate" />
                    <asp:BoundField DataField="PlantCode" HeaderText="Plant Code" SortExpression="PlantCode" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="WorkArea" HeaderText="Work Area" SortExpression="WorkArea" />
                    <asp:BoundField DataField="Trainer" HeaderText="Trainer" SortExpression="Trainer" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                    <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                    <asp:BoundField DataField="Performance" HeaderText="Performance" SortExpression="Performance" />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IndustrialTrainingConnectionString %>" SelectCommand="SELECT personaldetails.ApplicationNumber, personaldetails.Fname + ' ' + personaldetails.Lname AS Name, personaldetails.Email, personaldetails.Dob, personaldetails.Gender, personaldetails.Address, personaldetails.City, personaldetails.State, personaldetails.MobileNumber, personaldetails.Reference, personaldetails.ReferenceId, personaldetails.ReferenceContact, personaldetails.Photo, educationaldetails.Degree, educationaldetails.[Graduation Status], educationaldetails.College, educationaldetails.Cemail, educationaldetails.Skills, DocumentUpload.[Document], fieldselected.Field, fieldselected.Period, appstatus.Status, educationaldetails.Cref, appstatus.ConfirmCert, appstatus.ConfirmCertIssDate, appstatus.CompleteCert, appstatus.CompleteCertIssDate, hrapproved.PlantCode, hrapproved.Department, Departmentapproved.WorkArea, Departmentapproved.Trainer, appstatus.StartDate, appstatus.EndDate, appstatus.Performance, educationaldetails.Cstate, educationaldetails.Ccity FROM personaldetails INNER JOIN educationaldetails ON personaldetails.ApplicationNumber = educationaldetails.ApplicationNumber INNER JOIN DocumentUpload ON personaldetails.ApplicationNumber = DocumentUpload.ApplicationNumber INNER JOIN fieldselected ON personaldetails.ApplicationNumber = fieldselected.ApplicationNumber INNER JOIN appstatus ON personaldetails.ApplicationNumber = appstatus.ApplicationNumber INNER JOIN hrapproved ON personaldetails.ApplicationNumber = hrapproved.ApplicationNumber INNER JOIN Departmentapproved ON personaldetails.ApplicationNumber = Departmentapproved.ApplicationNumber">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
