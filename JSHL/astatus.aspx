<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="astatus.aspx.cs" EnableSessionState="True" MasterPageFile="~/Site.Master" Inherits="JSHL.astatus" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">


<style>
    
.container {
      width: 600px;
      margin: auto auto; 
  }
  .progressbar {
      counter-reset: step;
  }
  .progressbar li {
      list-style-type: none;
      width: 25%;
      float: left;
      font-size: 12px;
      position: relative;
      text-align: center;
      text-transform: uppercase;
      color: #7d7d7d;
  }
  .progressbar li:before {
      width: 30px;
      height: 30px;
      content: counter(step);
      counter-increment: step;
      line-height: 30px;
      border: 2px solid #7d7d7d;
      display: block;
      text-align: center;
      margin: 0 auto 10px auto;
      border-radius: 50%;
      background-color: white;
  }
  .progressbar li:after {
      width: 100%;
      height: 2px;
      content: '';
      position: absolute;
      background-color: #7d7d7d;
      top: 15px;
      left: -50%;
      z-index: -1;
  }
  .progressbar li:first-child:after {
      content: none;
  }
  .progressbar li.active {
      color: green;
  }
  .progressbar li.active:before {
      border-color: #55b776;
  }
  .progressbar li.active + li:after {
      background-color: #55b776;
  }

</style>

<br>
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:600px;">
                            <br>
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                            <br>
                            <div class="container">
      <ul class="progressbar">
          <li id="Submitted" runat="server">Submitted</li>
          <li id="ApprovedByHR" runat="server">Approved By HR</li>
          <li id="ApprovedByDept" runat="server">Approved By Department Head</li>
          <li id="Completed" runat="server">Completed</li>
  </ul>
                       </div>
                            <hr>
                            <table width="85%">
                            <tr><td><asp:Label ID="Label1" runat="server"></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label2" runat="server"></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label3" runat="server"></asp:Label></td></tr>
                            <tr><td><asp:Label ID="Label4" runat="server"></asp:Label></td></tr>
                                </table>
                            <br>
                            <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="another" runat="server" Text="Check Another Application" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClick="another_Click"></asp:Button>>
              <br><br>
            </div>
                            </div>
        </form>
    </asp:Content>