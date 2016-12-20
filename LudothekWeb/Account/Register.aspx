<%@ Page Title="Registrieren" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LudothekWeb.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Neues Konto erstellen</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <h5>Personalien</h5>
        <hr />
            <asp:Label runat="server" AssociatedControlID="Vorname" CssClass="col-md-2 control-label">Vorname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Vorname" CssClass="form-control" TextMode="singleline" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Vorname"
                    CssClass="text-danger" ErrorMessage="Das Vornamens-Feld ist erforderlich." />
            </div>
            <asp:Label runat="server" AssociatedControlID="Nachname" CssClass="col-md-2 control-label">Nachname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Nachname" TextMode="singleline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Nachname"
                    CssClass="text-danger" ErrorMessage="Das Nachnamensfeld ist erforderlich." />
            </div>
        </div>
        <div class="form-group">
            <h5>Addresse</h5>
        <hr />
            <asp:Label runat="server" AssociatedControlID="Strasse" CssClass="col-md-2 control-label">Strasse</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Strasse" CssClass="form-control" TextMode="singleline" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Strasse"
                    CssClass="text-danger" ErrorMessage="Das Strasse-Feld ist erforderlich." />
            </div>
            <asp:Label runat="server" AssociatedControlID="PLZ" CssClass="col-md-2 control-label">PLZ</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PLZ" TextMode="number" min="1000" max="9999" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PLZ"
                    CssClass="text-danger" ErrorMessage="Das PLZ-Feld ist erforderlich." />
            </div>
            <asp:Label runat="server" AssociatedControlID="Wohnort" CssClass="col-md-2 control-label">Wohnort</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Wohnort" TextMode="singleline" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Wohnort"
                    CssClass="text-danger" ErrorMessage="Das Wohnortsfeld ist erforderlich." />
            </div>
        </div>
        <div class="form-group">
            <h5>Login-Angaben</h5>
        <hr />
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">E-Mail</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="Das E-Mail-Feld ist erforderlich." />
            </div>
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Kennwort</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Das Kennwortfeld ist erforderlich." />
            </div>
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Kennwort bestätigen</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Das Feld zum Bestätigen des Kennworts ist erforderlich." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Das Kennwort stimmt nicht mit dem Bestätigungskennwort überein." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Registrieren" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
