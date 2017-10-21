<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TreatmentBill.aspx.cs" Inherits="Insurrance_Application_Proj.Hospital.TreatmentBill" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h2>Hospital Corner</h2>
            <ajaxToolkit:TabContainer ID="TreatmentTabContainer" runat="server" ActiveTabIndex="0" OnActiveTabChanged="TreatmentTabContainer_ActiveTabChanged" CssClass="NewsTab">
                <ajaxToolkit:TabPanel ID="TreatmentTabPanel" runat="server" HeaderText="Patient Treatment" TabIndex="0">
                    <HeaderTemplate>Patient Treatment</HeaderTemplate>
                    <ContentTemplate>
                        <div class="row">
         <div class="form-horizontal">
        <h3>Patient Treatment</h3>

       <asp:EntityDataSource ID="PatientsEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="ClearInsurrances" Include="RegCustomer, Funder1, Insurrance1" AutoGenerateWhereClause="True" Where="">
        <WhereParameters>
            <asp:ControlParameter ControlID="SearchTextBox" DefaultValue="jk8@@" Name="Customer" PropertyName="Text" Type="String" />
        </WhereParameters>
    </asp:EntityDataSource> 
     Enter patient card number:
    <asp:TextBox ID="SearchTextBox" runat="server" AutoPostBack="true" TextMode="SingleLine" Height="30" Width="200" ></asp:TextBox>
    <asp:Button ID="SearchButton" runat="server" Text="Verify" OnDataBinding="SearchButton_DataBinding" CssClass="btn btn-default" Height="30" OnClick="SearchButton_Click" />
  <br />
               <asp:DetailsView ID="PatientsDetailsView" runat="server" Height="49px" Width="409px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="PatientsEntityDataSource" >
        <Fields>
            <asp:TemplateField HeaderText="Patient name:" SortExpression="Customer">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Customer") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Customer") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("RegCustomer.FName") %>'></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RegCustomer.SName") %>'></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("RegCustomer.OName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Insurrance type:" SortExpression="Insurrance1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Insurrance") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Insurrance") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Insurrance1.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Insurrance Clearance Date:" SortExpression="Day">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Day") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Day") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Day") %>'></asp:Label>/
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Month") %>'></asp:Label>/
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sponsor:" SortExpression="Funder1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Funder") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Funder") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Funder1.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date of birth:">
                <ItemTemplate>
                    <asp:Label ID="lab" runat="server" Text='<%# Eval("RegCustomer.DOBDay") %>'></asp:Label>/
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("RegCustomer.DOBMonth") %>'></asp:Label>/
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("RegCustomer.DOBYear") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           <asp:TemplateField>
               <ItemTemplate>
                   <asp:Button ID="Button3" runat="server" Text="Enter Treatment Details" OnClick="Button3_Click" CssClass="btn btn-default" />
               </ItemTemplate>
           </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
             <br />       
    <asp:EntityDataSource ID="TreatmentEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="TreatCustomers" Include="RegCustomer"></asp:EntityDataSource>
    <asp:DetailsView ID="TreatmentDetailsView" runat="server" Height="40px" Width="582px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="TreatmentEntityDataSource" DefaultMode="Insert" GridLines="None" Visible="False" OnItemInserted="TreatmentDetailsView_ItemInserted" >
        <Fields>
            <asp:TemplateField HeaderText="Patient Card Number:" SortExpression="Customer">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' Height="30px" Width="256px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="CustomerRequiredFieldValidator" runat="server" ErrorMessage=" Patient Card Number required" CssClass="ErrorMessage" ControlToValidate="CustomerTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                   
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hospital Number:" SortExpression="Hospital">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="HospitalTextBox" runat="server" Text='<%# Bind("Hospital") %>' Height="30px" Width="256px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="HospitalRequiredFieldValidator" runat="server" ErrorMessage="RequiredFieldValidator" CssClass="ErrorMessage" ControlToValidate="HospitalTextBox" Text="Hospital Number required" Display="Dynamic"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date:" SortExpression="Day">
                
                <InsertItemTemplate>
                    
                    <asp:DropDownList ID="DayDropDownList1" runat="server" SelectedValue='<%# Bind("Day") %>'>
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
                        <asp:ListItem>311</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="MonthDropDownList1" runat="server" SelectedValue='<%# Bind("Month") %>'>
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
                    <asp:DropDownList ID="YearDropDownList1" runat="server" SelectedValue='<%# Bind("Year") %>'>
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
            <asp:TemplateField HeaderText="Treatment Cost:" SortExpression="Amount">
                
                <InsertItemTemplate>
                    <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' Height="30px" Width="256px" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="AmountRequiredFieldValidator" runat="server" ErrorMessage="RequiredFieldValidator" CssClass="ErrorMessage" ControlToValidate="AmountTextBox" Text="* Treatment Cost required" Display="Dynamic"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Treatment Details:" SortExpression="Treatment">
               
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Treatment") %>' Height="76px" TextMode="MultiLine" Width="375px"></asp:TextBox>
                </InsertItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-default" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default"  />
                </InsertItemTemplate>
               
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
             <asp:Label ID="ConfirmLabel" runat="server" Text="Data Inserted" ForeColor="#006600" Visible="False"></asp:Label>
    </div>
   </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TruckTreatmentTabpanel" runat="server" HeaderText="Truck Customer Treatment" TabIndex="1">
                    <HeaderTemplate>Customer treatment history</HeaderTemplate>
                    <ContentTemplate>
                        <div class="row">
                            <div class="form-horizontal">
                                 <h3>Patient Treatment History</h3>
                               <asp:EntityDataSource ID="TruckPatientTreatmentEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="TreatCustomers" Include="RegCustomer, RegHospital" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
        <WhereParameters>
            <asp:ControlParameter ControlID="TextBoxSearch" DefaultValue="jkrty###" Name="Customer" PropertyName="Text" Type="String" />
        </WhereParameters>
    </asp:EntityDataSource>
     Enter patient card number: 
    <asp:TextBox ID="TextBoxSearch" runat="server" AutoPostBack="true" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" Text="Search" CssClass="btn btn-default" />
    <br />
    <asp:ListView ID="PatientTreatmentListView" runat="server" DataKeyNames="Id" DataSourceID="TruckPatientTreatmentEntityDataSource" >
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF;color: #284775;">
                Patient:
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
            No data was returned. Thank you!
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
                Patient:
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
            <div style="font-family: Verdana, Arial, Helvetica, sans-serif; text-align: center; background-color: #5D7B9D; color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Customer:
                <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("Customer") %>' />
                <br />
                Hospital:
                <asp:Label ID="HospitalLabel" runat="server" Text='<%# Eval("Hospital") %>' />
                <br />
                Day:
                <asp:Label ID="DayLabel" runat="server" Text='<%# Eval("Day") %>' />
                <br />
                Month:
                <asp:Label ID="MonthLabel" runat="server" Text='<%# Eval("Month") %>' />
                <br />
                Year:
                <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                <br />
                Amount:
                <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                <br />
                Treatment:
                <asp:Label ID="TreatmentLabel" runat="server" Text='<%# Eval("Treatment") %>' />
                <br />
                RegCustomer:
                <asp:Label ID="RegCustomerLabel" runat="server" Text='<%# Eval("RegCustomer") %>' />
                <br />
                RegHospital:
                <asp:Label ID="RegHospitalLabel" runat="server" Text='<%# Eval("RegHospital") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
     </asp:ListView>
    
                            </div>
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>
