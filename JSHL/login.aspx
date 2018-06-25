<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="JSHL.login" EnableSessionState="True" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<script type="text/javascript">
    function validate() {
        var Login = document.getElementById('<%=loginid.ClientID %>').value;
        var Password = document.getElementById('<%=password.ClientID %>').value;

        if (Login == "") 
{
    alert("Please Enter Your Login ID");
    document.getElementById('<%=loginid.ClientID %>').focus();
    return false;
        }
if (Password == "") 
{
    alert("Please Enter Your Password");
     document.getElementById('<%=password.ClientID %>').focus();
    return false;
        }




    }
    </script>


                
    <div class="container">
                    <div class="header">
                        

                        <br>
                        <div class="mdl-typography--display-1">Jindal Stainless (Hisar) LTD</div>
                        <div class="mdl-typography--title">Industrial Training</div><br><br>
                    </div>
                    <form id="form1" runat="server">
                    <div class="demo-card-wide mdl-card mdl-shadow--16dp">
                    <div class="login">
                    <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff"><center>Log In</center></div>
                        <br>
                        </div><br><br>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <asp:TextBox ID="loginid" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Login Id/Email ID';" placeholder='Login Id/Email ID'></asp:TextBox>
                            
                        </div>

                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Password';" placeholder='Password'></asp:TextBox>

                        </div><br><br>
                        
                        <asp:Label ID="Label1" ForeColor="Red" runat="server" Text="Incorrect Credentials! Try Again."></asp:Label>

                    </div>
                        <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="Button1" runat="server" Text="Login" BorderStyle="Groove" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "return validate();" OnClick="Button1_Click"></asp:Button>>
                    <br><br>
                        </div>

                    </div>
                        </form>
                </div>
        </asp:Content>

