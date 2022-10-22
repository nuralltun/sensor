<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Sensorler.aspx.cs" Inherits="BilimselOdev.Sensorler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2"
    runat="server">
    <table class="table table-bordered">
               <tr>
            <th>SENSÖR ID</th>
            <th>SENSÖR ADI</th>
            <th>SENSÖR NUMARASI</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("SensorID") %></td>
                    <td><%#Eval("SensorAdi") %></td>
                    <td><%#Eval("SensorNo") %></td>
                    <td><asp:HyperLink NavigateUrl='<%# "~/SensorSil.aspx?SensorID=" + Eval("SensorID") %>' 
                        ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td><asp:HyperLink NavigateUrl='<%# "~/SensorGuncelle.aspx?SensorID=" + Eval("SensorID") %>'
                        ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink></td>

                </tr>

            </ItemTemplate>
        </asp:Repeater>


    </table>
    <a href="SensorEkle.aspx" class="btn btn-info">Yeni Sensör</a>

</asp:Content>
