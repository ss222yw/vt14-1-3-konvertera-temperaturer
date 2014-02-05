<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KonverteraTemperaturer.Default"  ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Konvertera temperaturer</title>
 
    <link href="~/Content/site.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <h1>Konvertera temperaturer</h1>
    <form id="form1" runat="server" defaultbutton="Button">
         <asp:ValidationSummary ID="ValidationSummary" runat="server"  HeaderText="Fel inträffade. Åtgärda felen och försök igen."/>
        <div id="content">
         <asp:Label ID="convert" runat="server"  Visible="false">
         <asp:Table ID="tabel" runat="server">
         
         <asp:TableHeaderRow>
         <asp:TableHeaderCell ID="left" runat="server">&degC</asp:TableHeaderCell>
         <asp:TableHeaderCell ID="right" runat="server">&degF</asp:TableHeaderCell>
         </asp:TableHeaderRow>
         </asp:Table>
         </asp:Label>
            </div>

         <span id="Start">Starttemperatur :</span>
    <div>
    <asp:TextBox ID="StartingTemperature" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator" Text="*" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="Fyll i en starttemperatur" ControlToValidate="StartingTemperature" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3"  Text="*"  CssClass="CompareValidator3" runat="server" ErrorMessage="Input måste vara av typen int" ControlToValidate="StartingTemperature" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator>
        
    </div>
        <span id="End">Sluttemperatur :</span>
        <div>
            <asp:TextBox ID="EndTemperature" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" CssClass="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i sluttemperatur" ControlToValidate="EndTemperature" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" Text="*" CssClass="CompareValidator1" runat="server" ErrorMessage="Input måste vara av typen int" ControlToValidate="EndTemperature" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator4" Text="*" CssClass="CompareValidator4" runat="server" ControlToValidate="EndTemperature" ControlToCompare="StartingTemperature" Operator="GreaterThanEqual" Type="Integer"  ErrorMessage="Maxtemperaturen måste vara högre än mintemperaturen." Display="Dynamic"></asp:CompareValidator>
        </div>

        <span id="Temp">Temperatursteg :</span>
        <div>
            <asp:TextBox ID="TemperatureStep" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="*" CssClass="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i ett temperatursteg" ControlToValidate="TemperatureStep" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" Text="*" CssClass="CompareValidator2" runat="server" ErrorMessage="Input måste vara av typen int" ControlToValidate="TemperatureStep" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator>
            <asp:RangeValidator ID="RangeValidator1" Text="*" CssClass="RangeValidator1" runat="server" ErrorMessage="Temperatursteget måste ligga mellan 1 och 100" MaximumValue="100" MinimumValue="1" Display="Dynamic" ControlToValidate="TemperatureStep" Type="Integer"></asp:RangeValidator>
        </div>

        <span id="Type">Typ av konvertering</span>
 
        <div>
            <asp:RadioButton ID="FahrenheitToCelsius" runat="server" Text="Fahrenheit Till Celsius" GroupName="Convert" Checked="true"/>

        </div>

        <div>
            <asp:RadioButton ID="CelsiusToFahrenheit" runat="server" Text="Celsius Till Fahrenheit" GroupName="Convert" />

        </div>

        <div>
            <asp:Button ID="Button" runat="server" Text="Konvertera" OnClick="Button_Click" />
        </div>
        
    </form>
    <script type="text/javascript">
        var textBox = document.getElementById("StartingTemperature");
        StartingTemperature.focus();
        StartingTemperature.select();
    </script>
</body>
</html>
