<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/YonetimTema.master" AutoEventWireup="true" CodeFile="Profil.aspx.cs" Inherits="yonetim_Profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                            
                    <div id="content" class="span10">
			<!-- content starts -->
			        <div class="span12">
                        <ul class="breadcrumb">
                            <li><a href="Profil.aspx">Profilim</a></li>
                            
                        </ul>
                    </div>
            
            <div class="row-fluid sortable ui-sortable">
				<div class="box span12">
					<%--<div class="box-header well" data-original-title="">
						<h2><i class="icon-th"></i> Grid 12</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>--%>
					<div class="box-content">
                  	<div class="row-fluid profil">
                        <div class="span2" style="padding-top:100px; padding-left:100px"><img src="img/thumb.png" style="width:200px; height:200px;max-width:200px; max-height:200px" /></div>
                        <div class="span10" style="padding-top:50px">
                              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                            <table style="width:100%; height:auto">
                               <tr>
                                 <td colspan="3" style="width:100%; text-align:center" ><asp:Label ID="Label1" runat="server" Text="Yönetici Bilgileri" Font-Bold="True" Font-Size="30px" ForeColor="Black"></asp:Label></td>   
                              </tr>

                               <tr>
                                  <td style="width:10%; text-align:center"><asp:Label ID="lblAd" runat="server" Text="Ad:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                                  <td  style="width:40%"><asp:TextBox ID="txtAd" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" Enabled="False"></asp:TextBox></td>
                                  <td style="width:5%"> <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" CssClass="icon-edit" Width="20px" Height="20px" EnableViewState="False"></asp:Button></td>
                              </tr>

                             <tr>
                       <td style="width:10%; text-align:center"><asp:Label ID="lblSoyad" runat="server" Text="Soyad:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                       <td  style="width:40%"><asp:TextBox ID="txtSoyad" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" Enabled="False"></asp:TextBox></td>
                       <td style="width:5%"> <asp:Button ID="Button2"  runat="server" OnClick="Button2_Click" CssClass="icon-edit" Width="20px" Height="20px" EnableViewState="False"></asp:Button></td>
                    </tr>

                    <tr>
                       <td style="width:10%; text-align:center"><asp:Label ID="lblKullanıcıAdı" runat="server" Text="Kullanıcı Adı:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                        <td  style="width:40%""><asp:TextBox ID="txtKullanıcıAdı" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" Enabled="False"></asp:TextBox></td>
                        <td style="width:5%"> <asp:Button ID="Button3"  runat="server" OnClick="Button3_Click" CssClass="icon-edit" Width="20px" Height="20px" EnableViewState="False"></asp:Button></td>
                    </tr>

                    <tr>
                       <td style="width:10%; text-align:center"><asp:Label ID="lblSifre" runat="server" Text="Şifre:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                        <td  style="width:40%""><asp:TextBox ID="txtSifre" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" Enabled="False"></asp:TextBox></td>
                        <td style="width:5%"> <asp:Button ID="Button4"  runat="server" OnClick="Button4_Click" CssClass="icon-edit" Width="20px" Height="20px" EnableViewState="False"></asp:Button></td>
                    </tr>

                   <tr>
                       <td style="width:10%; text-align:center"><asp:Label ID="lblEmail" runat="server" Text="E-mail:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                        <td  style="width:40%""><asp:TextBox ID="txtEmail" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" Enabled="False"></asp:TextBox></td>
                        <td style="width:5%"> <asp:Button ID="Button5"  runat="server" OnClick="Button5_Click" CssClass="icon-edit" Width="20px" Height="20px" EnableViewState="False"></asp:Button></td> 
                   </tr>

                   <tr>
                       <td style="width:10%; text-align:center"><asp:Label ID="lblTelefon" runat="server" Text="Telefon:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                        <td  style="width:40%""><asp:TextBox ID="txtTelefon" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" Enabled="False" EnableTheming="True"></asp:TextBox></td>
                        <td style="width:5%"> <asp:Button ID="Button6"  runat="server" OnClick="Button6_Click" CssClass="icon-edit" Width="20px" Height="20px" EnableViewState="False"></asp:Button></td> 
                   </tr>

                   <tr>
                       <td style="width:20%; text-align:center"></td>
                        <td  style="width:40%""><br /><asp:Button runat="server" ID="btnKaydet" CssClass="btn btn-info btn-large" Text="KAYDET" OnClick="btnKaydet_Click" Visible="False"/>    <asp:Button runat="server" ID="btnİptal" CssClass="btn btn-info btn-large" Text="İPTAL" OnClick="btnİptal_Click" Visible="False" /></td>
                    </tr>                    
                   
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                        </div>
                    </div>                   
                  </div>
				</div><!--/span-->
			</div>
    </div><!--/#content.span10-->	
    
</asp:Content>

