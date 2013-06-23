<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppQuaack._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Welkom vriend.</h1>
            </hgroup>
            <p>
                Om toegang te krijgen tot onze fantastische Quaack website moet jij even op <a href="Account/Register.aspx" title="registreren"> registreren</a> of op <a href="Account/Login.aspx" title="inloggen">inloggen</a> klikken.
            </p>
        </div>
    </section>
</asp:Content>
