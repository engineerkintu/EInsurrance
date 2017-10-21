<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sponsors.aspx.cs" Inherits="Insurrance_Application_Proj.Sponsors.Sponsors" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="form-horizontal">
        <h2>Sponsor Corner</h2>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" TabIndex="0" OnActiveTabChanged="TabContainer1_ActiveTabChanged" AutoPostBack="true" CssClass="NewsTab">
                <ajaxToolkit:TabPanel ID="BeneficieriesTabPanel" runat="server" HeaderText="List of Beneficieries">
                    <HeaderTemplate>Beneficieries List</HeaderTemplate>
                    <ContentTemplate>
                        <h3>List of Beneficiaries</h3>
                         <asp:EntityDataSource ID="VeiwCustomersEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="ClearInsurrances" AutoGenerateWhereClause="True" Where="" Include="RegCustomer, Insurrance1" EntityTypeFilter="" Select="">
        <WhereParameters>
            <asp:ControlParameter ControlID="SearchMyTextBox" DefaultValue="kl9#" Name="Funder" PropertyName="Text" Type="String" />
        </WhereParameters>
    </asp:EntityDataSource>
    Enter your secret number:
   
    <asp:TextBox ID="SearchMyTextBox" runat="server" AutoPostBack="True" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="Enter" CssClass="btn btn-default" />
    <asp:GridView ID="CustomerGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="VeiwCustomersEntityDataSource" Width="634px">
        <Columns>
            <asp:TemplateField HeaderText="Beneficiery Name" SortExpression="Customer">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Customer") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegCustomer.FName") %>'></asp:Label> 
                    <asp:Label ID="Label10" runat="server" Text=" "></asp:Label> 
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RegCustomer.Sname") %>'></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text=" "></asp:Label> 
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("RegCustomer.OName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Insurrance Type" SortExpression="Insurrance1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Insurrance") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Insurrance1.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Clearance Date" SortExpression="Day">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Day") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Day") %>'></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Month") %>'></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                 <ajaxToolkit:TabPanel ID="TruckTreatmentTabPanel" runat="server" HeaderText="Truck Your Treatment" TabIndex="1">
                        <HeaderTemplate>
                            Truck Beneficiery Treatment
                        </HeaderTemplate>
                        <ContentTemplate>
                          <h3>Truck Beneficiery Treatment in Different Hospitals </h3>
                            <asp:EntityDataSource ID="TruckTreatmentEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="TreatCustomers" Include="RegHospital" Where="" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="">
        <WhereParameters>
            <asp:ControlParameter ControlID="TextBox4" Name="Customer" PropertyName="Text" Type="String" DefaultValue="j0*" />
        </WhereParameters>
    </asp:EntityDataSource>
    
    Enter beneficiery card number:
    <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="true" TextMode="Password"></asp:TextBox>
    <asp:Button ID="SearchButton" runat="server" Text="Search" CssClass="btn btn-default" />
    <asp:ListView ID="TruckTreatmentListView" runat="server" DataKeyNames="Id" DataSourceID="TruckTreatmentEntityDataSource">
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF;color: #284775;">
                 Beneficiery:
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
                <br />Customer:
                <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                <br />Hospital:
                <asp:TextBox ID="HospitalTextBox" runat="server" Text='<%# Bind("Hospital") %>' />
                <br />Day:
                <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                <br />Month:
                <asp:TextBox ID="MonthTextBox" runat="server" Text='<%# Bind("Month") %>' />
                <br />Year:
                <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                <br />Amount:
                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                <br />Treatment:
                <asp:TextBox ID="TreatmentTextBox" runat="server" Text='<%# Bind("Treatment") %>' />
                <br />RegCustomer:
                <asp:TextBox ID="RegCustomerTextBox" runat="server" Text='<%# Bind("RegCustomer") %>' />
                <br />RegHospital:
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
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
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
    
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                 <ajaxToolkit:TabPanel ID="RegHospitalsGridView" runat="server" HeaderText="Registered Hopsitals List" TabIndex="2">
                        <HeaderTemplate>
                            Registered Hospitals List
                        </HeaderTemplate>
                        <ContentTemplate>
                            <h3>List of Hospital Registered with HK Insurrance Co Ltd</h3>
                             <asp:EntityDataSource ID="RegHospitalEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="RegHospitals"></asp:EntityDataSource>
    <asp:ListView ID="RegHospitalListView" runat="server" DataKeyNames="Id" DataSourceID="RegHospitalEntityDataSource">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
               
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                
                <td>
                    <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>' />
                </td>
               
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Eval("Telephone") %>' />
                </td>
                
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </td>
               
                <td>
                    <asp:TextBox ID="DistrictTextBox" runat="server" Text='<%# Bind("District") %>' />
                </td>
               
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' />
                </td>
              
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="Button1" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Name") %>' />
                </td>
               
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("District") %>' />
                </td>
                
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Telephone") %>' />
                </td>
               
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                
                <td>
                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("Name") %>' />
                </td>
               
                <td>
                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("District") %>' />
                </td>
                <td>
               
                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("Telephone") %>' />
                </td>
               
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                               
                                <th runat="server">Hospital Name</th>
                                
                                <th runat="server">Location District</th>
                                
                                <th runat="server">Contact Email</th>
                                <th runat="server">Contact Telephone</th>
                                
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                
                <td>
                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                
                <td>
                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("District") %>' />
                </td>
               
                <td>
                    <asp:Label ID="BankLabel" runat="server" Text='<%# Eval("Bank") %>' />
                </td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Text='<%# Eval("Telephone") %>' />
                </td>
                
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>
