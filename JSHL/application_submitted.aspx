<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="application_submitted.aspx.cs" Inherits="JSHL.applicationsubmitted" EnableSessionState="True" MasterPageFile="~/Site.Master" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br>
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:500px">
                            <b> <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Your Application is Submitted</div>
                        <br>
                        </div>
                        <br><br>
                                
                                Your Application Number is: <asp:Label ID="Label1" runat="server"></asp:Label>
                            
                            <br>       
                 <br>
                </b>
                <hr>
                
            <div class="mdl-typography--subtitle" style="color:black;font-weight:bolder">(Kindly Note Down Your Application Number)</div>
            
            <br>
        
            </div>

    </asp:Content>