<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="Insurrance_Application_Proj.Company.Admnistrators.Accounts.Hospital" %>

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
       <div class="col-md-9">
             <div class="form-horizontal">
        <h2>Hospital Records</h2>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" OnActiveTabChanged="TabContainer_ActiveTabChanged" Font-Bold="False" Font-Size="Medium" AutoPostBack="True" CssClass="NewsTab">
                <ajaxToolkit:TabPanel ID="RegHospitalsTabPanel" runat="server" HeaderText="Registered Hospitals">
                    <HeaderTemplate>
                        Registered Hospitals List
                    </HeaderTemplate>
                    <ContentTemplate>
                        <h3>List of Registered Hospitals</h3>
                       <asp:EntityDataSource ID="HospitalsEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="RegHospitals"></asp:EntityDataSource>
    <asp:GridView ID="HospitalsGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="HospitalsEntityDataSource" Width="706px">
        <Columns>
            
            <asp:BoundField DataField="Name" HeaderText="Hospital" SortExpression="Name" />
           
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
             <asp:TemplateField HeaderText="Registration Date" SortExpression="RegDay">
                
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegDay") %>'></asp:Label>/
                    
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("RegMonth") %>'></asp:Label>/
                    
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("RegYear") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="HospitalBillsTabPanel" runat="server" HeaderText="Hospital Customer Treatment Bills" TabIndex="1">
                    <HeaderTemplate>
                        Hospital Customer Treatment Bills
                    </HeaderTemplate>
                    <ContentTemplate>
                        <h3>Hospital Customer Treatment Bills</h3>
                         <asp:EntityDataSource ID="HospitalBillsEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="TreatCustomers" Include="RegHospital, RegCustomer"></asp:EntityDataSource>
    <asp:GridView ID="HospitalBillsGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="HospitalBillsEntityDataSource">
        <Columns>
            <asp:TemplateField HeaderText="Hospital Name" >
               
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RegHospital.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Patient Name" >
               
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RegCustomer.FName") %>'></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("RegCustomer.Sname") %>'></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("RegCustomer.OName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Treatment Date" >
                
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Day") %>'></asp:Label>/
                     
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Month") %>'></asp:Label>/
                     
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Amount" HeaderText="Treatment Charge" SortExpression="Amount" />
        </Columns>
    </asp:GridView>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="HospitalPaymentTabPanel" runat="server" HeaderText="Company Hospital Bill Clearance" TabIndex="2">
                    <HeaderTemplate>
                        Company Hospital Bill Claerance

                    </HeaderTemplate>
                    <ContentTemplate>
                        <h3>Company Hospital Bills Clearance</h3>
                        <asp:EntityDataSource ID="PaymentEntityDataSource" runat="server" ConnectionString="name=InsurranceDatabaseEntities" DefaultContainerName="InsurranceDatabaseEntities" EnableFlattening="False" EntitySetName="PayHospitals" Include="RegHospital"></asp:EntityDataSource>
    <asp:GridView ID="PaymentGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PaymentEntityDataSource">
        <Columns>
             <asp:TemplateField HeaderText="Hospital Name" >
               
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RegHospital.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:TemplateField HeaderText="Payment Date" >
                
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Day") %>'></asp:Label>/
                     
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Month") %>'></asp:Label>/
                     
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Bank" >
               
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RegHospital.Bank") %>'></asp:Label>
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
