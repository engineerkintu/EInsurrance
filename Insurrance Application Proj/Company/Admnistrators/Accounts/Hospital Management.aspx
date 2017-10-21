<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hospital Management.aspx.cs" Inherits="Insurrance_Application_Proj.Company.Admnistrators.Accounts.Hospital_Management" %>

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
        <h2>Hospital Management Corner</h2>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" OnActiveTabChanged="TabContainer_ActiveTabChanged" Font-Bold="False" Font-Size="Medium" AutoPostBack="True" CssClass="NewsTab">
                    <ajaxToolkit:TabPanel ID="HospitalTabPanel" runat="server" HeaderText="Register Hospital">
                        <HeaderTemplate>
                            Hospital Registration Form
                        </HeaderTemplate>
                        <ContentTemplate>
                             <h3>Hospital Registration Form</h3>
            
                 <asp:EntityDataSource ID="RegHospitalEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="RegHospitals" EnableUpdate="True"></asp:EntityDataSource>
    <asp:DetailsView ID="RegHospitalDetailsView" runat="server" Height="396px" Width="480px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="RegHospitalEntityDataSource" DefaultMode="Insert" GridLines="None" >
        <Fields>
            <asp:TemplateField HeaderText="Hospital Number:" SortExpression="Id">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="HospitalTextBox" runat="server" Text='<%# Bind("Id") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="HospitalRequiredFieldValidator" runat="server" ErrorMessage=" Hospital Number required." CssClass="ErrorMessage" ControlToValidate="HospitalTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="IDCustomValidator" runat="server" ErrorMessage="Wrong Hospital Number. It must be 12 characters long" CssClass="ErrorMessage" Display="Dynamic" OnServerValidate="IDCustomValidator_ServerValidate"></asp:CustomValidator>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hospital Name:" SortExpression="Name">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Hospital name required." CssClass="ErrorMessage" ControlToValidate="NameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="NameCustomValidator" runat="server" ErrorMessage="Hospital Name shouldn't exceed 50 characters" Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="NameCustomValidator_ServerValidate"></asp:CustomValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Registration Date:" SortExpression="RegDay">
               
                <InsertItemTemplate>
                     <asp:DropDownList ID="DayDropDownList" runat="server" SelectedValue='<%# Bind("RegDay") %>' >
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
                    <asp:DropDownList ID="MonthDropDownList" runat="server" SelectedValue='<%# Bind("RegMonth") %>' >
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
                    <asp:DropDownList ID="YearDropDownList" runat="server" SelectedValue='<%# Bind("RegYear") %>' >
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
            <asp:TemplateField HeaderText="District:" SortExpression="District">
                
                <InsertItemTemplate>
                   <asp:DropDownList ID="DistrictDropDownList" runat="server" SelectedValue='<%# Bind("District") %>' >
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
                        <asp:ListItem>Kamwenge</asp:ListItem >
                        <asp:ListItem>Kisolo</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Account Number:" SortExpression="Account">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="AccountTextBox" runat="server" Text='<%# Bind("Account") %>' CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="AccountRequiredFieldValidator" runat="server" ErrorMessage=" Hospital Account Number is required" CssClass="ErrorMessage" ControlToValidate="AccountTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="AccountSizeCustomValidator" runat="server" ErrorMessage="Number of characters in Account Number field should be 12" Display="Dynamic" OnServerValidate="AccountSizeCustomValidator_ServerValidate" CssClass="ErrorMessage"></asp:CustomValidator>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Bank Name:" SortExpression="Bank">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="BankTextBox" runat="server" Text='<%# Bind("Bank") %>' CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="BankRequiredFieldValidator" runat="server" ErrorMessage="Bank name which the hospital uses is required." CssClass="ErrorMessage" ControlToValidate="BankTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="BankCustomValidator" runat="server" ErrorMessage="Bank Name field should not exceed 50 characters" Display="Dynamic" CssClass="ErrorMessage" OnServerValidate="BankCustomValidator_ServerValidate"></asp:CustomValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email:" SortExpression="Email">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>' CssClass="form-control" TextMode="Email"></asp:TextBox>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telephone:" SortExpression="Telephone">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Telephone") %>' CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <asp:CustomValidator ID="TelephoneCustomValidator" runat="server" Display="Dynamic" CssClass="ErrorMessage" ErrorMessage="Telephone field shouldn't exceed 10 characters" OnServerValidate="TelephoneCustomValidator_ServerValidate"></asp:CustomValidator>
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
                    <ajaxToolkit:TabPanel ID="ManageRegHospitalTabPanel" runat="server" HeaderText="Manage Registered Hospital" TabIndex="1">
                        <HeaderTemplate>
                            Manage Registered Hospital
                        </HeaderTemplate>
                        <ContentTemplate>
                             <h3>Manage Registered Hospital</h3>
             <asp:EntityDataSource ID="ManageHospitalEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="RegHospitals"></asp:EntityDataSource>
             <asp:GridView ID="ManageHospitalGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ManageHospitalEntityDataSource" Width="858px">
                 <Columns>
                     <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                     <asp:TemplateField HeaderText="Hospital ID" SortExpression="Id">
                         
                         <ItemTemplate>
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Hospital Name" SortExpression="Name">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox47" runat="server" Text='<%# Bind("Name") %>' CssClass="form-control"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label7" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Registration Date" SortExpression="RegDay">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RegDay") %>' CssClass="form-control"></asp:TextBox>
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RegMonth") %>' CssClass="form-control"></asp:TextBox>
                             <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RegYear") %>' CssClass="form-control"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegDay") %>'></asp:Label>/
                             <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("RegMonth") %>'></asp:Label>/
                             <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("RegYear") %>'></asp:Label>
                         </ItemTemplate>
                         
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="District" SortExpression="District">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("District") %>' CssClass="form-control"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label8" runat="server" Text='<%# Eval("District") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Account" SortExpression="Account">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Account") %>' CssClass="form-control"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label9" runat="server" Text='<%# Eval("Account") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Bank" SortExpression="Bank">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Bank") %>' CssClass="form-control"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label10" runat="server" Text='<%# Eval("Bank") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Email" SortExpression="Email">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Email") %>' CssClass="form-control"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label11" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Telephone" SortExpression="Telephone">
                         <EditItemTemplate>
                             <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Telephone") %>' CssClass="form-control"></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="Label12" runat="server" Text='<%# Eval("Telephone") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="PayHospitalTabPanel" runat="server" HeaderText="Hospital Payment Form" TabIndex="2">
                        <HeaderTemplate>
                            Hospital Payment Form
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:EntityDataSource ID="PayHospitalEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="PayHospitals"></asp:EntityDataSource>
   <h3>Hospital Payment Form</h3>
     <asp:DetailsView ID="PayHospitalDetailsView" runat="server" Height="50px" Width="386px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="PayHospitalEntityDataSource" DefaultMode="Insert"  GridLines="None">
        <Fields>
            <asp:TemplateField HeaderText="Hospital Number:" SortExpression="Hospital">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="HospitalTextBox" runat="server" Text='<%# Bind("Hospital") %>' Height="25px" Width="256px" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="HospitalRequiredFieldValidator" runat="server" ErrorMessage="Hospital number required" CssClass="ErrorMessage" ControlToValidate="HospitalTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount:" SortExpression="Amount">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' Height="30px" Width="256px" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="AmountRequiredFieldValidator" runat="server" ErrorMessage=" Enter the amount to be paid." CssClass="ErrorMessage" ControlToValidate="AmountTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Payment Date:" SortExpression="Day">
               
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
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-default" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField>
                
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
       </div>
   </div>
</asp:Content>
