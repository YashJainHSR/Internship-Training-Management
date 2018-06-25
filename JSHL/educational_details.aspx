<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="educational_details.aspx.cs" Inherits="JSHL.WebForm3" EnableSessionState="True" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script type="text/javascript">
    function validate() {
        var Degree = document.getElementById('<%=degree.ClientID %>').value;
        var Status = document.getElementById('<%=status.ClientID %>').value;
        var CYear = document.getElementById('<%=cyear.ClientID %>').value;
        var College = document.getElementById('<%=college.ClientID %>').value;
        var CEmail = document.getElementById('<%=cemail.ClientID %>').value;
        var CState = document.getElementById('<%=cstate.ClientID %>').value;
        var CCity = document.getElementById('<%=ccity.ClientID %>').value;
        if (Degree == "") {
            alert("Please Enter Degree");
            document.getElementById('<%=degree.ClientID %>').focus();
            return false;
        }
        if (Status == "") {
            alert("Please Enter Your Graduation Status");
            document.getElementById('<%=status.ClientID %>').focus();
            return false;

        }
        if (CYear == "") {
            alert("Please Enter Year Of Graduation");
            document.getElementById('<%=cyear.ClientID %>').focus();
            return false;
        }
        var CYearPat = /^(20)\d\d$/
        var CYearArray = CYear.match(CYearPat);
        if (CYearArray == null) {
            alert("Please Enter a Valid Year");
            document.getElementById('<%=cyear.ClientID %>').focus();
            return false;
        }
        if (College == "") {
            alert("Please Enter College Name");
            document.getElementById('<%=college.ClientID %>').focus();
            return false;
        }
        
        var cemailPat = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/
        var CEmailmatchArray = CEmail.match(cemailPat);
        if (CEmailmatchArray == null) {
            alert("Please Enter a Valid Email Address");
            document.getElementById('<%=cemail.ClientID %>').focus();
            return false;
        }
        if (CState == "") {
            alert("Please Enter State");
            document.getElementById('<%=cstate.ClientID %>').focus();
            return false;
        }
        if (CCity == "") {
            alert("Please Enter City");
            document.getElementById('<%=ccity.ClientID %>').focus();
            return false;
        }



        
        }
    }

</script>

<form id="e_details" runat="server">
<br><br>
        
                        <div class="demo-card-wide mdl-card mdl-shadow--16dp" style="width:800px">
                            <div class="mdl-shadow--16dp" style="background-color:#000000">
                        <br>
                        <div class="mdl-typography--title" style="color:#ffffff">College Details</div>
                        <br>
                        </div>
                        <br>
                        
                               <table width="95%">
                                   <tr>
                                 <td width="49%"><asp:Label ID="Label1" runat="server" Text="Degree/Diploma Persuing: "></asp:Label><td>
                                 <td width="1%"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter your Degree" ControlToValidate="degree" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                                <td width="60%"><asp:TextBox ID="degree" runat="server" CssClass="mdl-textfield__input"  onFocus="this.placeholder='';" onBlur="this.placeholder='Degree/Diploma Persuing';" placeholder='Degree/Diploma Persuing'  width="300px"></asp:TextBox></td>
                                
                    </tr>
                                       </table>
                            
                             <hr/>
                        
                           
                                <table style="white-space:nowrap;"width="95%"><tr>
                                <td width="48%"><asp:Label ID="Label2" runat="server" Text="Have you graduated in the above degree: "></asp:Label><td>
                                <td width="2%"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Select Yes or No" ControlToValidate="status" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                                <td width="50%">
                                <asp:RadioButtonList ID="status" runat="server" Width="76px">
                                     <asp:ListItem class="mdl-radio__button" Value="Yes" Text="Yes">Yes</asp:ListItem>
                                     
                                     <asp:ListItem class="mdl-radio__button" Text="No" Value="No">No</asp:ListItem>
                            </asp:RadioButtonList></td>
                            </tr></table>
                            <hr>
                       
                            <table style="white-space:nowrap;"width="95%"><tr>
                                <td width="48%"><asp:Label ID="Label3" runat="server" Text="Year Of Qualifying the Degree/Diploma: "></asp:Label><td>
                                <td width="2%"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter your Year of Qualifying" ControlToValidate="cyear" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                                <td width="50%"><asp:TextBox ID="cyear" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Year of Qualifying';" placeholder='Year of Qualifying'></asp:TextBox></td>
                                </tr></table>
                             <hr>

                            <table style="white-space:nowrap;"width="95%"><tr>
                                <td width="48%"><asp:Label ID="Label16" runat="server" Text="College Reference/Registration No (If Any): "></asp:Label><td>
                                <td width="2%"></td>
                                <td width="50%"><asp:TextBox ID="cref" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='College Reference/Registration No/Roll No';" placeholder='College Reference/Registration No/Roll No'></asp:TextBox></td>
                                </tr></table>
                             <hr>

                        <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label4" runat="server" Text="College/University Name: "></asp:Label><td>
                            <td width="2%"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter your College/University Name" ControlToValidate="college" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td width="50%"><asp:TextBox ID="college" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='College/University Name';" placeholder='College/University Name'></asp:TextBox></td>
                                
                            </tr></table>
                             <hr>
                              <table style="white-space:nowrap;"width="95%"><tr>
                                  <td width="48%"><asp:Label ID="Label5" runat="server" Text="College Email: "></asp:Label><td>
                                  <td width="2%"></td>
                                  <td width="50%"><asp:TextBox ID="cemail" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='College Email';" placeholder='College Email'></asp:TextBox></td>
                                  </tr></table>
                          
                            <hr>
                             
                         <table style="white-space:nowrap;"width="95%"><tr>
                             <td width="48%"><asp:Label ID="Label6" runat="server" Text="College State: "></asp:Label><td>
                             <td width="2%"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter your College State" ControlToValidate="cstate" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td width="50%"><asp:TextBox ID="cstate" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='College State';" placeholder='College State'></asp:TextBox></td>
                             </tr></table>
                                

                             <hr>
                        <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label7" runat="server" Text="College City: "></asp:Label><td>
                                <td width="2%"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your College City" ControlToValidate="ccity" Display="Static" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td width="50%"><asp:TextBox ID="ccity" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='College City';" placeholder='College City'></asp:TextBox></td>
                             </tr></table>
                           
                             <hr>     
         
    
        
            <div class="mdl-shadow--16dp" style="background-color:#000000">
                       <br>
                        <div class="mdl-typography--title" style="color:#ffffff">Senier Secondary(XII) Education</div>
                      <br>
                        </div> 
                            <br>
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label8" runat="server" Text="Year Of Completion: "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox TextMode="Number" ID="ssyear" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Year';" placeholder='Year'></asp:TextBox></td>
                             </tr></table>

                             <hr>
                              
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label9" runat="server" Text="Board: "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox ID="ssboard" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='(XII) Board';" placeholder='(XII) Board'></asp:TextBox></td>
                             </tr></table>

                             <hr>
                             
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label10" runat="server" Text="Percentage obtained: (in case of CGPA X 9.5) "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox ID="ssperc" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Percentage obtained';" placeholder='Percentage obtained'></asp:TextBox></td>
                             </tr></table>

                             
                             <hr>
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label11" runat="server" Text="Stream: "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox ID="stream" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Stream';" placeholder='Stream'></asp:TextBox></td>
                             </tr></table>

                             <hr>
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label12" runat="server" Text="School: "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox ID="ssschool" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='School Name';" placeholder='School Name'></asp:TextBox></td>
                             </tr></table>

                             <hr>
                             
        
        <div class="mdl-shadow--16dp" style="background-color:#000000">
                   <br>
                    <div class="mdl-typography--title" style="color:#ffffff">Secondary(X) Education</div>
                  <br>
                    </div>
                    <br>
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label13" runat="server" Text="Year Of Completion: "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox TextMode="Number" ID="syear" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Year';" placeholder='Year'></asp:TextBox></td>
                             </tr></table>

                             <hr>
                              
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label14" runat="server" Text="Board: "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox ID="sboard" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='(X) Board';" placeholder='(X) Board'></asp:TextBox></td>
                             </tr></table>

                             <hr>
                             
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label15" runat="server" Text="Percentage obtained: (in case of CGPA X 9.5) "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox ID="sperc" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='Percentage obtained';" placeholder='Percentage obtained'></asp:TextBox></td>
                             </tr></table>


                             <hr>
                            <table style="white-space:nowrap;"width="95%"><tr>
                            <td width="48%"><asp:Label ID="Label17" runat="server" Text="School: "></asp:Label><td>
                                <td width="2%"></td>
                            <td width="50%"><asp:TextBox ID="sschool" runat="server" CssClass="mdl-textfield__input" onFocus="this.placeholder='';" onBlur="this.placeholder='School Name';" placeholder='School Name'></asp:TextBox></td>
                             </tr></table>
                         <hr>
                            
                   
                         <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                <asp:Button ID="Button1" runat="server" Text="Back" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick = "javascript:window.history.go(-1);return false;"></asp:Button>>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button2" runat="server" Text="Next" BorderStyle="Groove" Width="83px" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" OnClientClick="return validate();" OnClick="Button2_Click"></asp:Button>

            <br><br>
        </div>
            </div>
             

    </Form>
    </b>
</asp:Content>
    