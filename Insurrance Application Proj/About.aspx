<%@ Page Title="About the System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Insurrance_Application_Proj.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Insurance Management on the Web.</h3>
    
    <div class="row">
    <div class="col-md-3">
         <h4>Underlying technologies</h4>
    <ul>
        <li>Programing Languages
            <ul>
                <li>C#</li>
                <li>HTML5</li>
                <li>Javascript</li>
                <li>CSS</li>
            </ul>
        </li>
        <li>Server
            <ul>
                <li>IIS</li>
            </ul>
        </li>
        <li>Database
            <ul>
                <li>TSQL</li>
            </ul>
        </li>
        <li>Frameworks
            <ul>
                <li>Bootstrap</li>
                <li>Entity Framework</li>
                <li>Angular js</li>
            </ul>
        </li>
    </ul>
    </div>
        <div class="col-md-2">
        <h4>Target Audience</h4>
    <ul>
        <li>Hospitals</li>
        <li>Insurance Companies</li>
        <li>Patients</li>
        <li>Corprate Companies</li>
        <li>Families</li>
        <li>special Groups</li>
    </ul>
    </div>
    <div class="col-md-5">
         <h4>What makes the system unique!</h4>
    <ul>
        <li>Patients are able to get treatment from anywhere in the world. All that he needs is connection to internet and a hospital registered with the insurance company</li>
        <li>Doctors can access patients' medical history. As long as the patient has an insurrance policy with an insurrance company running this system</li>
        <li>The insurance company staff in total control of whatever is happening in the health insurrance department from anywhere in the world. This means one can stay working even when he traveled in a different country </li>
        <li>Companies like Pepsi, Rwenzori, Century bottling company have greatly liked the idea because the system gives them a chance to monitor their workers' health </li>
    </ul>
    </div>
    <div class="col-md-2">
        <h4>System Requirements</h4>
    <ul>
        <li>Windows server</li>
        <li>Connection to internet</li>
        <li>Desktop/ Laptop computers</li>
        <li>Trained users</li>
    </ul>
    </div>
    </div>
   
    
   
    
    
</asp:Content>
