<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SensorGuncelle.aspx.cs" Inherits="BilimselOdev.SensorGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" 
    runat="server">

    <form runat="server" class="form-group">
         <div>
            <asp:TextBox ID="TxtID" runat="server"  CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtAd" runat="server" placeholder="Sensör Adını Girin.." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:TextBox ID="TxtNo" runat="server" placeholder="Sensör Numarasını Girin.." CssClass="form-control" ></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Sensör Güncelle" CssClass="btn btn-group" OnClick="Button1_Click" />
        </div>

        </form>





</asp:Content>
