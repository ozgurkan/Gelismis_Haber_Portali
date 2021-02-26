<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/YonetimTema.master" AutoEventWireup="true" CodeFile="SosyalMedya.aspx.cs" Inherits="yonetim_Profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                            
                    <div id="content" class="span10">
			<!-- content starts -->		      
            
            <div class="row-fluid sortable ui-sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-user"></i>Sosyal Medya</h2>						
					</div>
					<div class="box-content">						
                            <table class="table table-striped table-bordered bootstrap-datatable datatable dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                <asp:Repeater ID="RpSm" runat="server" OnItemDataBound="RpSm_ItemDataBound">
                                    <ItemTemplate>
                                        <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd">
								                <td class=" sorting_1"><%#Eval("Sm_Adi")%></td>
								                <td class="center"><%#Eval("Sm_Linki")%></td>                                    								             
                                             <td class="center">                                                 
                                                 <asp:Label ID="lblDurum"  runat="server" Text='<%#Eval("Sm_Durum")%>'></asp:Label>                                                    
								                </td>
								                <td class="center">                                                 
                                                     
                                                       <a id="ac" class="btn btn-success" href="SosyalMedya.aspx?olay=ac&&Sm_İd=<%#Eval("Sm_İd")%>" onclick="">
										                <i class="icon-zoom-in icon-white"></i>  
										                Aç                                           
									                </a>
                                                   <%-- <asp:Button ID="Button2" runat="server" Text="Düzenle" class="btn btn-info" />--%>
                                                        <%--									               
                                                        <a class="btn btn-info" href="#">
										                <i class="icon-edit icon-white"></i>  
										                Düzenle                                            
									                </a>--%>
									                <a id="kapat" class="btn btn-danger" href="SosyalMedya.aspx?olay=kapat&&Sm_İd=<%#Eval("Sm_İd")%>">
										                <i class="icon-trash icon-white"></i> 
										                Kapat
									                </a>
								                </td>
							                </tr>                          
                                        </tbody>
                                    </ItemTemplate>
                                </asp:Repeater>
					  </table>
						</div>            
					
				</div><!--/span-->        		
			</div>


           <div class="row-fluid sortable ui-sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title="">
						<h2><i class="icon-user"></i>Sosyal Medya Ekle</h2>						
					</div>
                    <div class="box-content">
                        <asp:Label ID="Label1" runat="server" Text="Sosyal Medya Adı:" Font-Bold="True" Font-Size="16"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>	
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Sosyal Medya Linki:" Font-Size="16" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>	
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Ekle" Font-Size="20" Font-Bold="True" Height="50" Width="100" OnClick="Button1_Click1"/>

                    </div>			
				</div><!--/span-->        		
			</div>


    </div><!--/#content.span10-->	
    
</asp:Content>

