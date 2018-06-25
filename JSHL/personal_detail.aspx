<%@ Page Language="C#" EnableSessionState="True" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="personal_detail.aspx.cs" Inherits="JSHL.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
    function validate() 
    {
        var Firstname = document.getElementById('<%=fname.ClientID %>').value;
        var LastName = document.getElementById('<%=lname.ClientID %>').value;
        var Email = document.getElementById('<%=email.ClientID %>').value;
        var DOB = document.getElementById('<%=dob.ClientID %>').value;
        var EmpName = document.getElementById('<%=ename.ClientID %>').value;
        var EmpId = document.getElementById('<%=eid.ClientID %>').value;
        var EmpMob = document.getElementById('<%=emob.ClientID %>').value;
        var Address = document.getElementById('<%=address.ClientID %>').value;
        var City = document.getElementById('<%=city.ClientID %>').value;
        var State = document.getElementById('<%=state.ClientID %>').value;
        var Mobile = document.getElementById('<%=mobile.ClientID %>').value;
if (Firstname == "") 
{
    alert("Please Enter Your First Name");
    document.getElementById('<%=fname.ClientID %>').focus();
    return false;
        }
if (LastName == "") 
{
    alert("Please Enter Your Last Name");
     document.getElementById('<%=lname.ClientID %>').focus();
    return false;
        }
if (Email == "") 
{
    alert("Please Enter Your Email Address");
     document.getElementById('<%=email.ClientID %>').focus();
    return false;
}
var emailPat = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/
var EmailmatchArray = Email.match(emailPat);
if (EmailmatchArray == null)
{
    alert("Please Enter a Valid Email Address");
     document.getElementById('<%=email.ClientID %>').focus();
        return false;
        }
if (DOB == "") 
{
    alert("Please Enter Your Date of Birth");
     document.getElementById('<%=dob.ClientID %>').focus();
    return false;
        }
        

        if (Address == "") 
{
            alert("Please Enter Your Address");
             document.getElementById('<%=address.ClientID %>').focus();
    return false;
        }
        if (City == "") 
{
            alert("Please Enter Your City");
             document.getElementById('<%=city.ClientID %>').focus();
    return false;
        }
        if (State == "") 
{
            alert("Please Enter Your State");
             document.getElementById('<%=state.ClientID %>').focus();
    return false;
        }
        if (Mobile == "") 
{
            alert("Please Enter Your Mobile Number");
             document.getElementById('<%=mobile.ClientID %>').focus();
    return false;
        }
var mobPat = /^[789][0-9]{9}$/
    var mobmatchArray = Mobile.match(mobPat);
        if (mobmatchArray == null)
        {
        alert("Please Enter a Valid Mobile Number");
        return false;
        }
if (EmpName == "") 
    {
    alert("Please Enter Reference Details");
     document.getElementById('<%=ename.ClientID %>').focus();
    return false;
        }
        if (EmpId == "") 
    {
    alert("Please Enter Reference Details");
     document.getElementById('<%=eid.ClientID %>').focus();
    return false;
        }
        if (EmpMob == "") 
    {
    alert("Please Enter Reference Details");
     document.getElementById('<%=emob.ClientID %>').focus();
    return false;
    }
}
</script>

                    <form id="p_details" runat="server">
<br><br>
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp"style="width:700px">
          <center>                  <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff"><b>Name</b></div>
                        <br><br>
                        </div>
                           
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <asp:TextBox ID="fname" runat="server" CssClass="mdl-textfield__input" placeholder="First Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your First Name" ControlToValidate="fname" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <asp:TextBox ID="lname" runat="server" placeholder="Last Name" CssClass="mdl-textfield__input"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your Last Name" ControlToValidate="lname" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </div>    
                                <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Email Id</div>
                        <br>
                        </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <asp:TextBox ID="email" runat="server" placeholder="Email" CssClass="mdl-textfield__input" Width="299px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your Email Address" ControlToValidate="email" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="Pinfo" ErrorMessage="Enter a Valid Email Address" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            
                                <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Date Of Birth</div>
                                    
                        <br>
                        </div><br>
                        <div class="mdl-textfield mdl-js-textfield">
                            <asp:TextBox ID="dob" runat="server" TextMode="Date" placeholder="Date of Birth" CssClass="mdl-textfield__input"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your Date of Birth" ForeColor="Red" ControlToValidate="dob">*</asp:RequiredFieldValidator>
                            </div>

                        <br><div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Gender</div>
                        <br>
                        </div>
                        <br>
                        <div>
                            <asp:RadioButtonList ID="gender" runat="server" Width="104px">
                                <asp:ListItem class="mdl-radio__button" Value="Male" Text="Male">Male</asp:ListItem>
                                <asp:ListItem class="mdl-radio__button" Text="Female" Value="Female">Female</asp:ListItem>
                            </asp:RadioButtonList>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Select a Gender" ControlToValidate="gender" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>

                            <br>
                        </div>
            <br>
         
    <center>
        
            
                <b> <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Address</div>
                        <br>
                        </div></b><br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="address" runat="server" placeholder="Address" CssClass="mdl-textfield__input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your Address" ControlToValidate="address" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>

                </div>
               
                <br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="city" runat="server" placeholder="City" CssClass="mdl-textfield__input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your City" ControlToValidate="city" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>

                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="state" placeholder="State" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your State" ControlToValidate="state" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>

                </div>
            <br>

                <b> <br><div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Mobile No</div>
                        <br>
                        </div></b><br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="mobile" placeholder="Mobile Number" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your Mobile Number" ControlToValidate="mobile" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationGroup="Pinfo" ErrorMessage="Enter a Valid Mobile Number" ControlToValidate="mobile" ForeColor="Red" ValidationExpression="^[789][0-9]{9}$"></asp:RegularExpressionValidator>
                </div>
                <b> <br>
                    <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Photo Upload</div>
                        <br>
                        </div></b><br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:FileUpload  ID="photo"  class="mdl-textfield__input" runat="server" /><br>
                                <asp:Label ID="err" runat="server"></asp:Label>
                    
                </div>
                    <br>
                    <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">JSHL Reference Details</div>
                        <br>
                        </div><br>
        
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="ename" placeholder="Employee Name" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter Reference Details" ControlToValidate="ename" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
        
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="eid" placeholder="Employee ID" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter Reference Details" ControlToValidate="eid" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
        
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <asp:TextBox ID="emob" placeholder="Employee Mobile Number" runat="server" CssClass="mdl-textfield__input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="Pinfo" ErrorMessage="Please Enter your Reference Details" ControlToValidate="emob" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
                <b> <br>
                <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="Button1" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button2" runat="server" Text="Next" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick="return validate();" OnClick="Button2_Click"  ValidationGroup="Pinfo"></asp:Button>
            <br><br>
        </div>
                        </div>
    </form>
    
    </asp:Content>