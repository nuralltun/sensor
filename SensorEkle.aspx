<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SensorEkle.aspx.cs" Inherits="BilimselOdev.SensorEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2"
    runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Sensör Adını Girin.." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Sensör Numarasını Girin.." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Sensör Ekle" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>


    </form>










</asp:Content>
