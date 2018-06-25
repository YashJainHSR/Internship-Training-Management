<%@ Page Title="" Language="C#" EnableSessionState="True" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="JSHL.verify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="verify" runat="server">
        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:800px">
            <div class="mdl-shadow--16dp" style="background-color:#000000">
                <br>
                 <div class="mdl-typography--title" style="color:#ffffff">Please Verify the Details</div>
                 <br>
            </div>
            <br/>
            <table width="95%" style="padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>
                <tr>
                    <td style=" vertical-align:bottom; width:50%;padding:15px; border: 1px solid black;border-collapse: collapse;" colspan="2"> <b>Name: </b><asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label>&nbsp<asp:Label ID="Label2" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label>
                        <asp:Image ID="Image1" ImageAlign="Right"  Height="100" Width="80" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>Email Address: </b><asp:Label ID="Label3" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                <tr>
                    <td  style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>DOB: </b><asp:Label ID="Label4" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                    <td style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>Gender: </b><asp:Label ID="Label5" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                
                <tr>
                    <td colspan="2" style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>Address: </b><asp:Label ID="Label7" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="width:50%; padding: 15px;border: 1px solid black;border-collapse: collapse;"> <b>Mobile Number: </b><asp:Label ID="Label8" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>JSHL Reference: </b><asp:Label ID="Label6" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                    <td style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>College Reference: </b><asp:Label ID="Label16" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width:50%; padding: 15px;border: 1px solid black;border-collapse: collapse;"> <b>Degree: </b><asp:Label ID="Label9" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                    <td style="width:50%; padding: 15px;border: 1px solid black;border-collapse: collapse;"> <b>College Name: </b><asp:Label ID="Label10" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>Graduation Status: </b><asp:Label ID="Label11" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                    <td style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>Year of Graduation: </b><asp:Label ID="Label12" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="width:50%; padding: 15px; border: 1px solid black;border-collapse: collapse;"> <b>College Email Address: </b><asp:Label ID="Label13" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width:50%; padding: 15px;border: 1px solid black;border-collapse: collapse;"> <b>Skills: </b><asp:Label ID="Label14" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                    <td style="width:50%; padding: 15px;border: 1px solid black;border-collapse: collapse;"> <b>Document Submitted: </b><asp:Label ID="Label15" runat="server" Font-Italic="True" ForeColor="#333333"></asp:Label></td>
                </tr>
            </table>
            <br>
            <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="Button1" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button2" runat="server" Text="Submit" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="Button2_Click"></asp:Button>

            <br><br>
        </div>
        </div>
    </form>



</b>



</asp:Content>
