<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/YonetimTema.master" AutoEventWireup="true" CodeFile="haber-ekle.aspx.cs" Inherits="yonetim_haber_ekle" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                       <style>
                                .hata_mesaj {
                                color:black;
                                font-weight:bold;
                                font-size:15px;
                                }
                            </style>
                 <!-- content starts -->   
    <div id="content" class="span10">			
			        <div class="span12">
                        <ul class="breadcrumb">
                            <li><a href="haber-ekle.aspx">Haber Ekle</a></li>                            
                        </ul>
                    </div>
            
            <div class="row-fluid sortable ui-sortable">
				<div class="box span12">				
					<div class="box-content">
                  	<div class="row-fluid profil">                    
                       
                        <div class="span12" style="padding-top:50px">                           
                            <table style="width:100%; height:auto">
                               <tr>
                                 <td colspan="4" style="width:100%; text-align:center" ><asp:Label ID="Label1" runat="server" Text="Haber Ekle" Font-Bold="True" Font-Size="30px" ForeColor="Black"></asp:Label></td>   
                              </tr>

                               <tr>
                                  <td style="width:10%; text-align:center"><asp:Label ID="lblBaslik" runat="server" Text="Haberin Başlığı:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                                  <td  style="width:40%">
                                      <asp:TextBox ID="txtBaslik" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" MaxLength="50"></asp:TextBox>
                                      <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="( Haber Başlığı maksimum 50 karakter olabilir! )"></asp:Label>
                                   </td>
                                  <td style="width:20%"><asp:Label ID="lblHata1" runat="server" CssClass="hata_mesaj" Visible="false"></asp:Label></td>                                     
                                </tr>   

                                <tr>
                                    <td></td>
                                    <td colspan="3" style="width:80%">&nbsp;</td>
                                </tr>

                                 <tr>
                                  <td style="width:10%; text-align:center"><asp:Label ID="Label3" runat="server" Text="Haberin Özeti:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                                  <td  style="width:40%"><asp:TextBox ID="TextBox1" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" MaxLength="250"></asp:TextBox>
                                  <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="( Haber Özeti maksimum 250 karakter olabilir! )"></asp:Label>
                                  </td>
                                  <td style="width:20%"><asp:Label ID="Label4" runat="server" CssClass="hata_mesaj" Visible="false"></asp:Label></td>                                     
                                </tr>  
                                
                                <tr>
                                  <td style="width:10%; text-align:center"><asp:Label ID="Label6" runat="server" Text="Haberin Detayı:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                                  <td  style="width:40%"><asp:TextBox ID="TextBox2" runat="server" CssClass="span12 typeahead" Font-Bold="True" Font-Size="15" ForeColor="Black" MaxLength="50" TextMode="MultiLine" Height="300"></asp:TextBox></td>
                                  <td style="width:20%"><asp:Label ID="Label8" runat="server" CssClass="hata_mesaj" Visible="false"></asp:Label></td>                                     
                                </tr>   


                                 <tr>
                                     <td style="width:10%; text-align:center"><asp:Label ID="Label7" runat="server" Text="Haberin Türü:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
            
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                        <table style="width:100%">
                                            <tr>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Size="16" Font-Bold="True" Height="40" Width="300">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>                 
                   
                                        </table>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>          
                                    </td>
                                </tr>

                                 
                               <tr>
                                  <td style="width:10%; text-align:center"><asp:Label ID="Label9" runat="server" Text="Manşette yayınla:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>
                                  <td  style="width:50%">
                                       <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"  Font-Size="16" Font-Bold="True" Height="40" Width="300">
                                       </asp:DropDownList>                       
                                   </td>
                                  <td style="width:20%"><asp:Label ID="Label11" runat="server" CssClass="hata_mesaj" Visible="false"></asp:Label></td>                                     
                                </tr>   


                                <tr>
                                    <td style="width:10%; text-align:center"><asp:Label ID="Label10" runat="server" Text="Haber Resmi:" Font-Bold="True" Font-Size="20px" ForeColor="Black"></asp:Label></td>                                    
                                    <td><asp:FileUpload ID="fuResim" runat="server" Height="27px" Width="278px" /> </td>                                       
                                 </tr>     
                                
                                <tr>
                                    <td></td>
                                <td><asp:Button ID="Button1" runat="server" Text="Haberi Ekle" OnClick="Button1_Click" Font-Bold="True" Font-Size="20" Width="200" Height="40" /></td>
                               </tr>  
                                                  

                        </table>
                        </div>
                    </div>                   
                  </div>
				</div><!--/span-->
			</div>
    </div><!--/#content.span10-->	
</asp:Content>

