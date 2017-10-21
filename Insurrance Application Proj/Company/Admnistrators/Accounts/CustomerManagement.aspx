<%@ Page Title="Customer Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerManagement.aspx.cs" Inherits="Insurrance_Application_Proj.Company.Admnistrators.Accounts.CustomerManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-2">
             <h2>Side Menu</h2>
           <ul class="nav">
                        
                        <li>Admnistrator Section</li>
                         
                        <li><a runat="server" href="~/Company/Admnistrators/Customers.aspx">View Customers </a></li>
                        <li><a runat="server" href="~/Company/Admnistrators/Hospital.aspx">View Hospitals </a></li>
                        <li>Accounts Section</li>
                        <li><a runat="server" href="~/Company/Admnistrators/Accounts/CustomerManagement.aspx">Manage Customers </a></li>
                        <li><a runat="server" href="~/Company/Admnistrators/Accounts/Hospital Management.aspx">Manage Hospitals </a></li>
                       
                    </ul>
            
        </div>
       <div class="col-md-10">
            <div class="form-horizontal">
        <h2>Customer Management Corner</h2>
         <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" OnActiveTabChanged="TabContainer_ActiveTabChanged" Font-Bold="False" Font-Size="Medium" AutoPostBack="True" CssClass="NewsTab">
                    <ajaxToolkit:TabPanel ID="CustomerTabPanel" runat="server" HeaderText="Register Customer" Font-Bold="False" >
                        <HeaderTemplate>
                             Customer Registration Form
                        </HeaderTemplate>                          
                        <ContentTemplate>
                             <h3>Customer Registration Form</h3
                          <asp:EntityDataSource ID="RegCustomerEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="RegCustomers"></asp:EntityDataSource>
                            <asp:DetailsView ID="RegCustomerDetailsView" runat="server" Height="96px" Width="420px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="RegCustomerEntityDataSource" DefaultMode="Insert"  GridLines="None" OnPageIndexChanging="RegCustomerDetailsView_PageIndexChanging" OnItemInserting="RegCustomerDetailsView_ItemInserting" >
                                <Fields>
             
             <asp:TemplateField HeaderText="Customer Number:" SortExpression="Id">
                 <InsertItemTemplate>
                      <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' Height="25px" Width="256px" CssClass="form-control"></asp:TextBox><asp:CustomValidator ID="IDCustomValidator" runat="server" ErrorMessage="13 characters are needed for Customer Number field" CssClass="ErrorMessage" Display="Dynamic" OnServerValidate="IDCustomValidator_ServerValidate"></asp:CustomValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Customer Number is required" ControlToValidate="IdTextBox" CssClass="ErrorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                 </InsertItemTemplate>
                 
             </asp:TemplateField>
             <asp:TemplateField HeaderText="First Name:" SortExpression="FName">
                 
                 <InsertItemTemplate>
                     <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' Height="25px" Width="256px" CssClass="form-control" OnTextChanged="SnameTextBox_TextChanged"></asp:TextBox> <asp:CustomValidator ID="FNameCustomValidator" runat="server" ErrorMessage="Only letters are allowed as First Name field" Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="FNameCustomValidator_ServerValidate" ></asp:CustomValidator>
                     <asp:RequiredFieldValidator ID="FNameRequiredFieldValidator" runat="server" ErrorMessage="First name is required." ControlToValidate="FNameTextBox" CssClass="ErrorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="FNameNumberCustomValidator" runat="server" ErrorMessage="You should not exceed 20 characters for First Name field" Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="FNameNumberCustomValidator_ServerValidate"></asp:CustomValidator>
                                 
                 </InsertItemTemplate>
                 
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Surname:" SortExpression="Sname" >
                 
                 <InsertItemTemplate>
                      <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' Height="25px" Width="256px" CssClass="form-control" OnTextChanged="SnameTextBox_TextChanged"></asp:TextBox><asp:CustomValidator ID="SnameCustomValidator" runat="server" ErrorMessage="Only letters are allowed for Surname field" Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="SnameCustomValidator_ServerValidate"></asp:CustomValidator>
                     <asp:RequiredFieldValidator ID="SnameRequiredFieldValidator" runat="server" ErrorMessage="Surname is required." ControlToValidate="SnameTextBox" CssClass="ErrorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="SnameNumberCustomValidator" runat="server" ErrorMessage="You should not exceed 20 characters for Surname field" CssClass="ErrorMessage" Display="Dynamic" OnServerValidate="SnameNumberCustomValidator_ServerValidate"></asp:CustomValidator>
                 </InsertItemTemplate>
                 
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Other Names:" SortExpression="OName">
                
                 <InsertItemTemplate>
                     <asp:TextBox ID="ONameTextBox" runat="server" Text='<%# Bind("OName") %>' Height="25px" Width="256px" CssClass="form-control" OnTextChanged="SnameTextBox_TextChanged"></asp:TextBox>
                     <asp:CustomValidator ID="ONameCustomValidator" runat="server" ErrorMessage="Only letters are allowed as Other Name field " CssClass="ErrorMessage" Display="Dynamic" OnServerValidate="ONameCustomValidator_ServerValidate"></asp:CustomValidator>
                     <asp:CustomValidator ID="ONameNumberCustomValidator" runat="server" ErrorMessage="You should not exceed 20 characters for Other Names field" Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="ONameNumberCustomValidator_ServerValidate"></asp:CustomValidator>
                 </InsertItemTemplate>
                 
             </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender:" SortExpression="Gender">
                
                <InsertItemTemplate>
                    <asp:DropDownList ID="GenderDropDownList" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date of Birth:" SortExpression="DOBDay">
                
                <InsertItemTemplate>
                    <asp:DropDownList ID="DayDropDownList2" runat="server" SelectedValue='<%# Bind("DOBDay") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="MonthDropDownList2" runat="server" SelectedValue='<%# Bind("DOBMonth") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="YearDropDownList2" runat="server" SelectedValue='<%# Bind("DOBYear") %>'>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Registration Date:" SortExpression="RegDay">
                                
                <InsertItemTemplate>
                     <asp:DropDownList ID="DayDropDownList4" runat="server" SelectedValue='<%# Bind("RegDay") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="MonthDropDownList4" runat="server" SelectedValue='<%# Bind("RegMonth") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="YearDropDownList4" runat="server" SelectedValue='<%# Bind("RegYear") %>'>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="YearCustomValidator" runat="server" ErrorMessage="Invalid Regitration Date." Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="YearCustomValidator_ServerValidate"></asp:CustomValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="District:" SortExpression="District">
                
                <InsertItemTemplate>
                    <asp:DropDownList ID="DistrictDropDownList2" runat="server" SelectedValue='<%# Bind("District") %>'>
                        <asp:ListItem>Kampala</asp:ListItem>
                        <asp:ListItem>Enetebbe</asp:ListItem>
                        <asp:ListItem>Wakiso</asp:ListItem>
                        <asp:ListItem>Mukono</asp:ListItem>
                        <asp:ListItem>Mpigi</asp:ListItem>
                        <asp:ListItem>Luwero</asp:ListItem>
                        <asp:ListItem>Masaka</asp:ListItem>
                        <asp:ListItem>Jinja</asp:ListItem>
                        <asp:ListItem>Iganga</asp:ListItem>
                        <asp:ListItem>Kamuli</asp:ListItem>
                        <asp:ListItem>Bugiri</asp:ListItem>
                        <asp:ListItem>Busia</asp:ListItem>
                        <asp:ListItem>Tororo</asp:ListItem>
                        <asp:ListItem>Mbale</asp:ListItem>
                        <asp:ListItem>Bukedia</asp:ListItem>
                        <asp:ListItem>Soroti</asp:ListItem>
                        <asp:ListItem>Kitugum</asp:ListItem>
                        <asp:ListItem>Moroto</asp:ListItem>
                        <asp:ListItem>Gulu</asp:ListItem>
                        <asp:ListItem>Lira</asp:ListItem>
                        <asp:ListItem>Mbarara</asp:ListItem>
                        <asp:ListItem>Kamwenge</asp:ListItem>
                        <asp:ListItem>Kisolo</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
               
            </asp:TemplateField>
             
             <asp:TemplateField HeaderText="Mobile No:" SortExpression="Mobile"> 
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox278" runat="server" Text='<%# Bind("Mobile") %>' Height="30px" TextMode="Number" Width="256px" CssClass="form-control" OnTextChanged="TextBox278_TextChanged"></asp:TextBox>
                    <asp:CustomValidator ID="MobileCustomValidator" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="You should not exceed 10 characters for Mobile No field" OnServerValidate="MobileCustomValidator_ServerValidate"></asp:CustomValidator>
                   
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email:" SortExpression="Email">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>' Height="25px" TextMode="Email" Width="256px" CssClass="form-control"></asp:TextBox>
                </InsertItemTemplate>
                
            </asp:TemplateField>
           
             <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-default"  />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                </InsertItemTemplate>
                
            </asp:TemplateField>
            
        </Fields>
                             </asp:DetailsView>
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" ShowMessageBox="True" ShowSummary="True" DisplayMode="BulletList" />                 
                         
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="EditRegCustomers" runat="server" HeaderText="Edit Registered Customers" TabIndex="1">
                        <HeaderTemplate>
                            Edit Registered Customers
                        </HeaderTemplate>
                        <ContentTemplate>
                            <h3>Edit Data of Registered Customers</h3>
                             <asp:EntityDataSource ID="EditRegCustomersEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="RegCustomers"></asp:EntityDataSource>
    <asp:GridView ID="EditRegCustomersGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EditRegCustomersEntityDataSource" Width="836px">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="Card No" SortExpression="Id">
               
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="FName">
                <EditItemTemplate>
                     <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' Height="25px" Width="100px" CssClass="form-control" OnTextChanged="IdTextBox_TextChanged"></asp:TextBox><asp:Label ID="FNameLabel2" runat="server" Text="" ForeColor="Red"></asp:Label>
                     <asp:RequiredFieldValidator ID="FNameRequiredFieldValidator" runat="server" ErrorMessage="First name is required." ControlToValidate="FNameTextBox" CssClass="ErrorMessage" Text="* First name is required." BackColor="White"></asp:RequiredFieldValidator>
                     <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' Height="25px" Width="100px" CssClass="form-control" OnTextChanged="IdTextBox_TextChanged"></asp:TextBox><asp:Label ID="SNameLabel2" runat="server" Text="" ForeColor="Red"></asp:Label>
                     <asp:RequiredFieldValidator ID="SnameRequiredFieldValidator" runat="server" ErrorMessage="Surname is required." ControlToValidate="SnameTextBox" CssClass="ErrorMessage" Text="* Surname is required."></asp:RequiredFieldValidator>
                    <asp:TextBox ID="ONameTextBox" runat="server" Text='<%# Bind("OName") %>' Height="25px" Width="100px" CssClass="form-control" OnTextChanged="IdTextBox_TextChanged"></asp:TextBox><asp:Label ID="ONameLabel2" runat="server" Text="" ForeColor="Red"></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("FName") %>'></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("SName") %>'></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("OName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                <EditItemTemplate>
                   <asp:DropDownList ID="GenderDropDownList" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Birth Date" SortExpression="DOBDay">
                <EditItemTemplate>
                    <asp:DropDownList ID="DayDropDownList2" runat="server" SelectedValue='<%# Bind("DOBDay") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                         <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="MonthDropDownList2" runat="server" SelectedValue='<%# Bind("DOBMonth") %>'>
                       <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="YearDropDownList2" runat="server" SelectedValue='<%# Bind("DOBYear") %>'>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DOBDay") %>'></asp:Label>/
                    
                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("DOBMonth") %>'></asp:Label>/
                    
                     <asp:Label ID="Label16" runat="server" Text='<%# Eval("DOBYear") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Registration Date" SortExpression="RegDay">
                <EditItemTemplate>
                     <asp:DropDownList ID="DayDropDownList4" runat="server" SelectedValue='<%# Bind("RegDay") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                         <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="MonthDropDownList4" runat="server" SelectedValue='<%# Bind("RegMonth") %>'>
                       <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="YearDropDownList4" runat="server" SelectedValue='<%# Bind("RegYear") %>'>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("RegDay") %>'></asp:Label>/
                    
                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("RegMonth") %>'></asp:Label>/
                    
                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("RegYear") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="District" SortExpression="District">
                <EditItemTemplate>
                    <asp:DropDownList ID="DistrictDropDownList2" runat="server" SelectedValue='<%# Bind("District") %>'>
                        <asp:ListItem>Kampala</asp:ListItem>
                        <asp:ListItem>Enetebbe</asp:ListItem>
                        <asp:ListItem>Wakiso</asp:ListItem>
                        <asp:ListItem>Mukono</asp:ListItem>
                        <asp:ListItem>Mpigi</asp:ListItem>
                        <asp:ListItem>Luwero</asp:ListItem>
                        <asp:ListItem>Masaka</asp:ListItem>
                        <asp:ListItem>Jinja</asp:ListItem>
                        <asp:ListItem>Iganga</asp:ListItem>
                        <asp:ListItem>Kamuli</asp:ListItem>
                        <asp:ListItem>Bugiri</asp:ListItem>
                        <asp:ListItem>Busia</asp:ListItem>
                        <asp:ListItem>Tororo</asp:ListItem>
                        <asp:ListItem>Mbale</asp:ListItem>
                        <asp:ListItem>Bukedia</asp:ListItem>
                        <asp:ListItem>Soroti</asp:ListItem>
                        <asp:ListItem>Kitugum</asp:ListItem>
                        <asp:ListItem>Moroto</asp:ListItem>
                        <asp:ListItem>Gulu</asp:ListItem>
                        <asp:ListItem>Lira</asp:ListItem>
                        <asp:ListItem>Mbarara</asp:ListItem>
                        <asp:ListItem>Kamwenge</asp:ListItem>
                        <asp:ListItem>Kisolo</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("District") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                <EditItemTemplate>
                     <asp:TextBox ID="TextBox278" runat="server" Text='<%# Bind("Mobile") %>' Height="30px" TextMode="Number" Width="110px" CssClass="form-control" OnTextChanged="TextBox278_TextChanged"></asp:TextBox><asp:Label ID="MobileLabel2" runat="server" Text="" ForeColor="Red"></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>' Height="25px" TextMode="Email" Width="110px" CssClass="form-control"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
        </Columns>
     </asp:GridView>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                     <ajaxToolkit:TabPanel ID="FunderTabPanel" runat="server" HeaderText="Register Funder" TabIndex="2">
                <HeaderTemplate>
                    Sponsor Registration Form
                    
                </HeaderTemplate>
                
                    <ContentTemplate>
                        <h3>Sponsor Registration Form</h3>
                     <asp:EntityDataSource ID="RegFunderEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="Funders" AutoPage="False"></asp:EntityDataSource>
                    <asp:DetailsView ID="RegFunderDetailsView" runat="server" Height="53px" Width="638px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="RegFunderEntityDataSource" DefaultMode="Insert" GridLines="None" EnableViewState="False" Visible="True">
        <Fields>
            <asp:TemplateField HeaderText="Sponsor Number:" SortExpression="Id">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' Height="25px" Width="256px" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="IdRequiredFieldValidator" runat="server" ErrorMessage="Sponsor Number Required." CssClass="ErrorMessage" Text="*" ControlToValidate="IdTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="IdCustomValidator" runat="server" ErrorMessage="13 characters are needed for Sponsor Number" CssClass="ErrorMessage" Display="Dynamic" OnServerValidate="IdCustomValidator_ServerValidate1"></asp:CustomValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sponsor Name:" SortExpression="Name">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' Height="25px" Width="256px" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Sponsor Name  is Required." CssClass="ErrorMessage" ControlToValidate="NameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="SponsorNameCustomValidator" runat="server" ErrorMessage="You should not exceeed 50 characters" Display="Dynamic" OnServerValidate="SponsorNameCustomValidator_ServerValidate" CssClass="ErrorMessage"></asp:CustomValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telephone:" SortExpression="Telephone">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' Height="25px" TextMode="Number" Width="256px" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="TelephoneRequiredFieldValidator" runat="server" ErrorMessage="Telephone of Funder Required." CssClass="ErrorMessage" ControlToValidate="TelephoneTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="TelephoneCustomValidator" runat="server" ErrorMessage="You should not exceed 10 characters for telephone field" Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="TelephoneCustomValidator_ServerValidate"></asp:CustomValidator>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location:" SortExpression="Location">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Location") %>' Height="25px" Width="256px" CssClass="form-control"></asp:TextBox>
                    <asp:CustomValidator ID="LocationCustomValidator" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="You should not exceed 20 characters for location field" OnServerValidate="FNameNumberCustomValidator_ServerValidate"></asp:CustomValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Other Details:" SortExpression="OtherDetails">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("OtherDetails") %>' Height="87px" TextMode="MultiLine" Width="387px" CssClass="form-control"></asp:TextBox>
                </InsertItemTemplate>
                
            </asp:TemplateField>
           <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-default" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                </InsertItemTemplate>
                
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="Please correct the following errors:" CssClass="ErrorMessage" ShowMessageBox="True" ShowSummary="False" />
                </ContentTemplate>
                
            </ajaxToolkit:TabPanel>
                     <ajaxToolkit:TabPanel ID="RegisterHospitalTabPanel" runat="server" TabIndex="3">
                <HeaderTemplate>
                   Insurrance Clearance Form
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:EntityDataSource ID="InsurranceTypeEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="Insurrances"></asp:EntityDataSource>
    <asp:EntityDataSource ID="InsurranceClearanceEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="ClearInsurrances"></asp:EntityDataSource>
                    <h3>Customer Insurrance Clearance Form</h3>
    <asp:DetailsView ID="InsurranceClearanceDetailsView" runat="server" Height="50px" Width="605px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="InsurranceClearanceEntityDataSource" DefaultMode="Insert" OnItemInserting="InsurranceClearanceDetailsView_ItemInserting" GridLines="None" Visible="True">
        <Fields>
            <asp:TemplateField HeaderText="Customer Number:" SortExpression="Customer">
                
                <InsertItemTemplate>
                     <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="CustomerRequiredFieldValidator" runat="server" ErrorMessage=" Customer number required." CssClass="ErrorMessage" ControlToValidate="CustomerTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Insurrance Type:" SortExpression="Insurrance">
                
                <InsertItemTemplate>
                    <asp:DropDownList ID="InsurranceTypeDropDownList" runat="server" DataSourceID="InsurranceTypeEntityDataSource" DataTextField="Name" DataValueField="Id" OnInit="InsurranceTypeDropDownList_Init"></asp:DropDownList>
                </InsertItemTemplate>
              
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Clearance Date:" SortExpression="Day">
               
                <InsertItemTemplate>
                    <asp:DropDownList ID="DayDropDownList3" runat="server" SelectedValue='<%# Bind("Day") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="MonthDropDownList3" runat="server" SelectedValue='<%# Bind("Month") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="YearDropDownList3" runat="server" SelectedValue='<%# Bind("Year") %>'>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sponsor:" SortExpression="Funder">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="FunderTextBox" runat="server" Text='<%# Bind("Funder") %>' ></asp:TextBox>
                   
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-default" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                </InsertItemTemplate>
                
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="InsurranceTypeTabPanel" runat="server" HeaderText="Insurrance Type Registration Form" TabIndex="4">
                        <HeaderTemplate>
                            Insurrance Types Form
                        </HeaderTemplate>
                        <ContentTemplate>
                            <h3>Registration Form For Insurrance Types</h3>
                           <asp:EntityDataSource ID="RegInsurranceTypeEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Insurrances"></asp:EntityDataSource>
                            <asp:DetailsView ID="RegInsurranceTypeDetailsView" runat="server" Height="50px" Width="491px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="RegInsurranceTypeEntityDataSource" DefaultMode="Insert" GridLines="None">
        <Fields>
            <asp:TemplateField HeaderText="Insurrance Type:" SortExpression="Name">
               
                <InsertItemTemplate>
                     <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ErrorMessage="Insurrance Type is required." CssClass="ErrorMessage" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' Height="25px" Width="256px" CssClass="form-control"></asp:TextBox>
                   
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Details:" SortExpression="Details">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Details") %>' Height="92px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount:" SortExpression="Amount">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' Height="30px" Width="256px" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="AmountRequiredFieldValidator" runat="server" ErrorMessage=" Enter amount paid for this type of insuurance" CssClass="ErrorMessage" ControlToValidate="AmountTextBox"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-default" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                </InsertItemTemplate>
                
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
                            <asp:ValidationSummary ID="ValidationSummary3" runat="server" CssClass="ErrorMessage" ShowMessageBox="True" HeaderText="Please correct the following errors:" ShowSummary="False" />
                  
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
       </div>
   </div>

</asp:Content>
