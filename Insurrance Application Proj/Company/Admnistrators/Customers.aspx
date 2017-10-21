<%@ Page Title="Customer Records" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Insurrance_Application_Proj.Company.Admnistrators.Customers" %>

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
        <h2>Customer Records</h2>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" OnActiveTabChanged="TabContainer_ActiveTabChanged" Font-Bold="False" Font-Size="Medium" AutoPostBack="True" CssClass="NewsTab">
                    <ajaxToolkit:TabPanel ID="RegCustomerTabPanel" runat="server" HeaderText="Registered Customers">
                        <HeaderTemplate>
                            Registered Customers
                        </HeaderTemplate>
                        <ContentTemplate>
                         <h3>Registered Customer List</h3>
    <asp:EntityDataSource ID="EditRegCustomersEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="RegCustomers"></asp:EntityDataSource>
    <asp:GridView ID="EditRegCustomersGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EditRegCustomersEntityDataSource" Width="836px">
        <Columns>
            <asp:TemplateField HeaderText="Name" SortExpression="FName">
                <EditItemTemplate>
                     <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' Height="25px" Width="100px" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="FNameRequiredFieldValidator" runat="server" ErrorMessage="First name is required." ControlToValidate="FNameTextBox" CssClass="ErrorMessage" Text="* First name is required." BackColor="White"></asp:RequiredFieldValidator>
                     <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' Height="25px" Width="100px" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="SnameRequiredFieldValidator" runat="server" ErrorMessage="Surname is required." ControlToValidate="SnameTextBox" CssClass="ErrorMessage" Text="* Surname is required."></asp:RequiredFieldValidator>
                    <asp:TextBox ID="ONameTextBox" runat="server" Text='<%# Bind("OName") %>' Height="25px" Width="100px" CssClass="form-control"></asp:TextBox>
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
                     <asp:TextBox ID="TextBox278" runat="server" Text='<%# Bind("Mobile") %>' Height="30px" TextMode="Number" Width="110px" CssClass="form-control"></asp:TextBox>
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
                    <ajaxToolkit:TabPanel ID="CustomerBillsTabPanel" runat="server" HeaderText="Customer Bills" TabIndex="1">
                        <HeaderTemplate>
                            Customer Bills
                        </HeaderTemplate>
                        <ContentTemplate>
                            <h3>Customer Bills</h3>
                            <asp:EntityDataSource ID="CustomerBillsEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="TreatCustomers" Include="RegCustomer, RegHospital"></asp:EntityDataSource>
    <asp:ListView ID="CustomerBillsListView" runat="server"  DataKeyNames="Id" DataSourceID="CustomerBillsEntityDataSource">
        <AlternatingItemTemplate>
           
            </li style="background-color: #FFFFFF;color: #284775;">
              
                Customer:
                <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("RegCustomer.Fname") %>' />
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegCustomer.SName") %>' />
             	<asp:Label ID="Label2" runat="server" Text='<%# Eval("RegCustomer.Oname") %>' />
                <br />
                Hospital:
                <asp:Label ID="HospitalLabel" runat="server" Text='<%# Eval("RegHospital.Name") %>' />
                <br />
                Treatment Date:
                <asp:Label ID="DayLabel" runat="server" Text='<%# Eval("Day") %>' />/
                <asp:Label ID="MonthLabel" runat="server" Text='<%# Eval("Month") %>' />/
                 <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                <br />
               <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
               <br />
               Treatment:
               <asp:Label ID="TreatmentLabel" runat="server" Text='<%# Eval("Treatment") %>' />
               <br />
              
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #999999;">Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Customer:
                <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                <br />
                Hospital:
                <asp:TextBox ID="HospitalTextBox" runat="server" Text='<%# Bind("Hospital") %>' />
                <br />
                Day:
                <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                <br />
                Month:
                <asp:TextBox ID="MonthTextBox" runat="server" Text='<%# Bind("Month") %>' />
                <br />
                Year:
                <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                <br />
                Amount:
                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                <br />
                Treatment:
                <asp:TextBox ID="TreatmentTextBox" runat="server" Text='<%# Bind("Treatment") %>' />
                <br />
                RegCustomer:
                <asp:TextBox ID="RegCustomerTextBox" runat="server" Text='<%# Bind("RegCustomer") %>' />
                <br />
                RegHospital:
                <asp:TextBox ID="RegHospitalTextBox" runat="server" Text='<%# Bind("RegHospital") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Customer:
                <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                <br />
                Hospital:
                <asp:TextBox ID="HospitalTextBox" runat="server" Text='<%# Bind("Hospital") %>' />
                <br />
                Day:
                <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                <br />
                Month:
                <asp:TextBox ID="MonthTextBox" runat="server" Text='<%# Bind("Month") %>' />
                <br />
                Year:
                <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                <br />
                Amount:
                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                <br />
                Treatment:
                <asp:TextBox ID="TreatmentTextBox" runat="server" Text='<%# Bind("Treatment") %>' />
                <br />
                RegCustomer:
                <asp:TextBox ID="RegCustomerTextBox" runat="server" Text='<%# Bind("RegCustomer") %>' />
                <br />
                RegHospital:
                <asp:TextBox ID="RegHospitalTextBox" runat="server" Text='<%# Bind("RegHospital") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
           
           
               <li style="background-color: #E0FFFF;color: #333333;">
                   Customer:
                <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("RegCustomer.Fname") %>' />
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegCustomer.SName") %>' />
             	<asp:Label ID="Label2" runat="server" Text='<%# Eval("RegCustomer.Oname") %>' />
                <br />
                Hospital:
                <asp:Label ID="HospitalLabel" runat="server" Text='<%# Eval("RegHospital.Name") %>' />
                <br />
                Treatment Date:
                <asp:Label ID="DayLabel" runat="server" Text='<%# Eval("Day") %>' />/
                <asp:Label ID="MonthLabel" runat="server" Text='<%# Eval("Month") %>' />/
                 <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                <br />
                   Amount:
                   <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                   <br />
                   Treatment:
                   <asp:Label ID="TreatmentLabel" runat="server" Text='<%# Eval("Treatment") %>' />
                   <br />
                  
               </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            
               
            </li style="background-color: #E2DED6; font-weight: bold;color: #333333;">
                Customer:
                <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("RegCustomer.Fname") %>' />
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegCustomer.SName") %>' />
             	<asp:Label ID="Label2" runat="server" Text='<%# Eval("RegCustomer.Oname") %>' />
                <br />
                Hospital:
                <asp:Label ID="HospitalLabel" runat="server" Text='<%# Eval("RegHospital.Name") %>' />
                <br />
                Treatment Date:
                <asp:Label ID="DayLabel" runat="server" Text='<%# Eval("Day") %>' />/
                <asp:Label ID="MonthLabel" runat="server" Text='<%# Eval("Month") %>' />/
                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("Year") %>' />
                <br />
            <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
            <br />
            Amount:
            <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
            <br />
            Treatment:
            <asp:Label ID="TreatmentLabel" runat="server" Text='<%# Eval("Treatment") %>' />
            <br />
           
        </SelectedItemTemplate>
                          </asp:ListView>      
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="InsurranceClearanceTabPanel" runat="server" HeaderText="Customer Insurrance Clearance" TabIndex="2">
                        <HeaderTemplate>
                            Customer Insurrance Clearance
                        </HeaderTemplate>
                        <ContentTemplate>
                            <h3>Customer Insurrance Clearance</h3>
                            <asp:EntityDataSource ID="ClearedInsurranceEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="ClearInsurrances" Include="RegCustomer, Insurrance1, Funder1"></asp:EntityDataSource>
    <asp:GridView ID="ClearedInsurranceGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ClearedInsurranceEntityDataSource">
        <Columns>
             <asp:TemplateField HeaderText="Customer Name" >
               
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegCustomer.FName") %>'></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text=" "></asp:Label>

                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("RegCustomer.Sname") %>'></asp:Label>
                     <asp:Label ID="Label8" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("RegCustomer.OName") %>'></asp:Label>

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Insurrance Type" >
               
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Insurrance1.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sponsor" >
               
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Funder1.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Clearance Date" SortExpression="Day">
                
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Day") %>'></asp:Label>/
                    <asp:Label ID="Label88" runat="server" Text=" "></asp:Label>
                      <asp:Label ID="Label9" runat="server" Text='<%# Eval("Month") %>'></asp:Label>/
                    <asp:Label ID="Label11" runat="server" Text=" "></asp:Label>
                      <asp:Label ID="Label10" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
        </div>
    </div>
</asp:Content>
