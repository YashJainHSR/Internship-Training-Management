<%@ Page Language="C#" AutoEventWireup="true" EnableSessionState="True" CodeBehind="gatepass.aspx.cs" Inherits="JSHL.gatepass" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Gate Pass</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 90mm; height: 65mm;" runat="server">
            
            <asp:Table GridLines="Horizontal" Width="100%" ID="Table1" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableCell Width="33%">
                        <asp:Image ID="Image1" Width="100px" ImageAlign="Left" AlternateText="Paste a photo" Height="100px" ImageUrl="~/logo.jpg" runat="server" /><br>
                        
                    </asp:TableCell>
                    <asp:TableCell Width="34%" Font-Bold="true" VerticalAlign="Middle" HorizontalAlign="Right">Intern/Trainee<br>(Gate Pass)&nbsp&nbsp&nbsp<br><asp:PlaceHolder ID="plBarCode" runat="server"></asp:PlaceHolder></asp:TableCell>
                     <asp:TableCell  Width="33%">
                        <asp:Image ID="Image2" Width="100px" ImageAlign="Right" AlternateText="Paste a photo" Height="100px" runat="server" />
                    </asp:TableCell>
                </asp:TableHeaderRow>
               
                <asp:TableRow>
                    <asp:TableCell Width="34%" Font-Bold="true">Name:</asp:TableCell>
                    <asp:TableCell Width="66%" ColumnSpan="2" Font-Italic="true"><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="34%" Font-Bold="true">Address:</asp:TableCell>
                    
                    <asp:TableCell Width="66%" Wrap="true" ColumnSpan="2" Font-Italic="true"><asp:Label ID="Label2" runat="server" Text="Address"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="34%" Font-Bold="true">Department:</asp:TableCell>
                    <asp:TableCell Width="66%" ColumnSpan="2" ><asp:Label ID="Label3" runat="server"  Font-Italic="true" Text="Department"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="34%" Font-Bold="true">Valid Upto:</asp:TableCell>
                    <asp:TableCell Width="66%" ColumnSpan="2"><asp:Label ID="Label4" runat="server"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell Width="34%" Font-Bold="true" style="white-space:nowrap;">Mobile Number:</asp:TableCell>
                    <asp:TableCell Width="66%" ColumnSpan="2"><asp:Label ID="Label5"  Font-Italic="true" runat="server" Text="Mobile Number"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>

                    <asp:TableCell Font-Bold="true" ColumnSpan="3">
                        <br />
                        <br />
                        Signature of Intern &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Authorised Signature</asp:TableCell>
                    
                </asp:TableRow>
                
            </asp:Table>

        </div>
    </form>
</body>
</html>
