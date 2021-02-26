<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/YonetimTema.master" AutoEventWireup="true" CodeFile="yazı-ekle.aspx.cs" Inherits="yonetim_yazı_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                       <style>
                                .hata_mesaj {
                                color:black;
                                font-weight:bold;
                                font-size:15px;
                                }
                            </style>
                    <div id="content" class="span10">
			<!-- content starts -->
			        <div class="span12">
                        <ul class="breadcrumb">
                            <li><a href="yazı-ekle.aspx">Köşe Yazısı Ekle</a></li>                            
                        </ul>
                    </div>
            
            <div class="row-fluid sortable ui-sortable">
				<div class="box span12">				
					<div class="box-content">
                  	<div class="row-fluid profil">                    
                       
                        <div class="span12" style="padding-top:50px">
                              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                            <table style="width:100%; height:auto">
                               <tr>
                                 <td colspan="4" style="width:100%; text-align:center" ><asp:Label ID="Label1" runat="server" Text="Köşe Yazısı Ekle" Font-Bold="True" Font-Size="30px" ForeColor="Black"></asp:Label></td>   
                              </tr>

                               <tr>
                                  <td style="width:10%; text-align:center"><asp:Label ID="lblBaslik" runat="server" Text="Başlık:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                                  <td  style="width:40%">
                                      <asp:TextBox ID="txtBaslik" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" MaxLength="50"></asp:TextBox>
                                      <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="( Yazı Başlığı maksimum 50 karakter olabilir! )"></asp:Label>
                                   </td>
                                  <td style="width:20%"><asp:Label ID="lblHata1" runat="server" CssClass="hata_mesaj" Visible="false"></asp:Label></td>                                     
                                </tr>   

                                <tr>
                                    <td></td>
                                    <td colspan="3" style="width:80%">&nbsp;</td>
                                </tr>
                                
                                <tr>
                                  <td style="width:10%; text-align:center"><asp:Label ID="Label6" runat="server" Text="Detay:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                                  <td  style="width:40%"><asp:TextBox ID="TextBox2" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" MaxLength="50" TextMode="MultiLine" Height="300"></asp:TextBox></td>
                                  <td style="width:20%"><asp:Label ID="Label8" runat="server" CssClass="hata_mesaj" Visible="false"></asp:Label></td>                                     
                                </tr>                                    
                                <tr>
                                    <td></td>
                                <td><asp:Button ID="Button1" runat="server" Text="Yazıyı Ekle" OnClick="Button1_Click" Font-Bold="True" Font-Size="20" Width="200" Height="40" /></td>
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

