<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="MailGonderme._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 124px;
    }
    .style3
    {
        width: 124px;
        height: 21px;
    }
    .style4
    {
        height: 21px;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            GÖNDEREN :
        </td>
        <td>
            <asp:TextBox ID="txtGonderen" runat="server" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            ALICI :
        </td>
        <td class="style4">
            <asp:TextBox ID="txtAlici" runat="server" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            KONU :
        </td>
        <td>
            <asp:TextBox ID="txtKonu" runat="server" Height="20px" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            DOSYA EKİ : </td>
        <td>
            <asp:FileUpload ID="dosyaEki" runat="server" Width="219px" />
            </td>
    </tr>
    <tr>
        <td class="style2">
            MESAJ :
        </td>
        <td rowspan="3">
            <asp:TextBox ID="txtMesaj" runat="server" Width="150px" Height="58px"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
            <td>
            <asp:Button ID="btnGonder" runat="server" Text="GÖNDER" Width="68px" 
                onclick="btnGonder_Click" />
            </td>
    </tr>
</table>

</asp:Content>
