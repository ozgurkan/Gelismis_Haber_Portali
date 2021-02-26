<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/YonetimTema.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="yonetim_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <div id="content" class="span10">
			<!-- content starts -->
			        <div>
                        <ul class="breadcrumb">
                            <li><a href="Default.aspx">Anasayfa</a></li>
                        </ul>
        </div>
        <div class="row-fluid" style="max-height:900px; height:auto;">
            <asp:Label ID="Label1" runat="server" Text="Hoş Geldiniz Sayın Yönetici" Font-Bold="True" Font-Size="18"></asp:Label>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Sol taraftaki menülerden siteyi yönetebilirsiniz." Font-Size="16"></asp:Label>
        </div>
    </div>
    <!--/#content.span10-->	
</asp:Content>

