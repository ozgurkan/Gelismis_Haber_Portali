<%@ Page Language="C#" AutoEventWireup="true" CodeFile="haber_detay.aspx.cs" Inherits="haber_detay" %>

<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="tr"> <!--<![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />

	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width" />

	<title>Haber Detay</title>
  
	<!-- Included CSS Files -->
	<link rel="stylesheet" href="stylesheets/foundation.css">
	<link rel="stylesheet" href="stylesheets/app.css">
    <link rel="stylesheet" href="stylesheets/cnc.css">

	<!--[if lt IE 9]>
		<link rel="stylesheet" href="stylesheets/ie.css">
	<![endif]-->
	
	<script src="javascripts/modernizr.foundation.js"></script>
    <!-- Included JS Files -->
	<script src="javascripts/jquery.min.js"></script>
	<script src="javascripts/foundation.js"></script>
	<script src="javascripts/app.js"></script>

	<!-- IE Fix for HTML5 Tags -->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    
    
    
    <!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="javascripts/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="javascripts/source/jquery.fancybox.js?v=2.0.6"></script>
	<link rel="stylesheet" type="text/css" href="javascripts/source/jquery.fancybox.css?v=2.0.6" media="screen" />

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="javascripts/source/helpers/jquery.fancybox-thumbs.css?v=1.0.2" />
	<script type="text/javascript" src="javascripts/source/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="javascripts/source/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- container -->
<div class="container">
	
    <div class="min-h-10"></div>
	
    <header>
        <div class="header-bg"> 
            <div class="row">
                <div class="three columns">
                    <img src="images/logo1.png" title="Logo" class="mrgn-t-5 mrgn-l-5" />
                </div>
                
                <div class="nine columns">
                    <div class="row">
                        <div class="four columns">
                            <div class="header-menu mrgn-t-5">
                                
                            </div>
                        </div>
                        <div class="four columns">
                        	<%--<div class="header-menu mrgn-t-5">
                            	<input type="text" name="search" id="search" class="top-search" onClick="if (this.value == 'HABER ARA') this.value = '';" onBlur="if(this.value=='') this.value='HABER ARA';" value="HABER ARA" />
                            </div>--%>
                        </div>
                        <div class="four columns hide-on-phones">
                            <div class="ta-right">
								<ul class="social_bookmarks mrgn-t-5 mrgn-r-5">
                                        <asp:Repeater ID="Rp_Sm" runat="server">
                                            <ItemTemplate>   
                                                <li class='<%#Eval("Sm_Adi")%>'><a href='<%#Eval("Sm_Linki")%>'><%#Eval("Sm_Adi")%></a></li>
                                            </ItemTemplate>
                                    </asp:Repeater> 
                                </ul>
                            </div>
                        </div>
                    </div>
                           <div class="row hide-on-phones" style="margin:40px 0px 0px 0px;">
                                                <div class="twelve columns" style="float:left">  <h4 style="float:left;text-align:left;color:red;margin-top:-25px"><img src="images/icon/sondakika.gif" /></h4>                                                                                                      
                       		                        <script src="javascripts/jquery.ticker.js" type="text/javascript"></script>
							                        <script src="javascripts/site.js" type="text/javascript"></script>
                                                    <ul id="js-news" class="js-hidden" >                                                        
                                                        <asp:Repeater ID="Rp_Ozetler" runat="server">
                                                            <ItemTemplate>
                                                                <li class="news-item" style="color:black;font-size:25px"><a href="haber_detay.aspx?haber_id=<%#Eval("haber_id")%>"><%#Eval("haber_baslik")%></a></li>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </ul>
                                                </div><!-- twelvw columns -->
                                            </div><!-- row hide-on-phones -->     
                </div>
            </div> <!-- /.row -->
            
            <div class="min-h-10"></div>
            
            <div class="row">
                <div class="twelve columns">
                    <div class="menu_nav theme-background hide-on-phones">
                        <ul id="menu">
                                <li>
                                <a class="active_menu" href="Default.aspx">Anasayfa</a>
                            </li>
                        


                            <asp:Repeater ID="Rp_Kategori" runat="server" OnItemDataBound="Rp_Kategori_ItemDataBound">
                                <ItemTemplate>
                                            <li>
                            	                <a href="<%#Eval("tür_link")%>"><%#Eval("tür_adi")%></a>
                            	                <ul class="theme-background">
                                	              <asp:Repeater ID="Rp_AltKategori" runat="server">
                                                     <ItemTemplate>                                          
                                                        <li><a href="#"><%#Eval("alt_tür_adi")%> &raquo;</a></li>
                                    	             </ItemTemplate>
                                                  </asp:Repeater>      
                                                  </ul>   
                                             </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul> <!-- /#menu -->
                    </div> <!-- /.menu_nav -->
                </div>
            </div>
        </div> <!-- /.header-bg -->
    </header>
    
    
    <div class="row">
        <div class="eight columns">
            
            <div class="min-h-20"></div>

            <div class="row">
                <div class="twelve columns ta-justify">
                    <h3 style="text-align:center">
                          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </h3>
                    <br />               
      
                    <div class="single-image">
                    <img src="images/slider/<% Response.Write(resim_yolu); %>" width="200" height="200" alt="image" /></div>
                    <p><asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="16"></asp:Label></p>
                    <div style="clear:both"></div>   
                </div>	
            </div>
            
            <div class="comments">
                <h1 style="text-align:center;font-size:25px">YORUMLAR</h1>
                <div class="single-comment">
                    <asp:Repeater ID="Rp_Haber_Yorumlari" runat="server">
                    <ItemTemplate>   
                    <div class="avatar" ><a href="#"><img src="images/manga1.png" /></a></div>
                    <%#DataBinder.Eval(Container.DataItem,"yorum_tarihi","{0:d}")%>  :<%#Eval("yazan_adi_soyadi")%>
                    <p style="font-size:18px"><%#Eval("yorum_detay")%></p>
                   </ItemTemplate>
             </asp:Repeater>    
                </div>     
                
                <div class="min-h-10"></div>
                
                <div class="comment-form">
                    <div class="row">
                        <div class="four columns">
                            <label for="text" style="font-size:18px;font-weight:bold">Ad-Soyad:</label>                            
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            
                            <label for="text" style="font-size:18px;font-weight:bold">Mail:</label>                            
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            
                            <label for="text" style="font-size:18px;font-weight:bold">Yorumunuz:</label>                            
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="GÖNDER" CssClass="button blue nice small" OnClick="Button1_Click" />                            
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
            
         <!-- SIDEBAR -->
			<div class="four columns hide-on-phones">		
				
                <div class="min-h-20"></div>
                
                <dl class="tabs contained">
					<dd><a href="#simpleContained1" class="active">Popüler</a></dd>
                  	<dd><a href="#simpleContained2">Köşe Yazıları</a></dd>
                  	<dd><a href="#simpleContained3">Son Yorumlar</a></dd>                  	
                </dl>
                
                <ul class="tabs-content contained theme-background">
                    <li class="active" id="simpleContained1Tab" >
                    	<ul class="sidebar-list popular">
                        	<asp:Repeater ID="Rppopuler" runat="server">
                                <ItemTemplate>         
                                     <li class="ta-justify">
                            	       <h5 style="text-align:center" class="text-shadow-black-2"><a href="haber_detay.aspx?haber_id=<%#Eval("haber_id")%>" class="link td-underline"><font><font><%#Eval("haber_baslik")%></font></font></a></h5>                          
                       			        <a href="haber_detay.aspx?haber_id=<%#Eval("haber_id")%>" class="link"><img src="images/slider/<%#Eval("manset_resmi") %>" alt="image" /></a>                                    
                                        <br />
                                         <span><%#Eval("haber_ozet")%></span>
                                         <br />
                                         <span class="icon16 date">&nbsp;</span><%#DataBinder.Eval(Container.DataItem,"yazılıs_tarihi","{0:d}")%><%--<span class="icon16 comment">&nbsp;</span>6, --%>&nbsp;&nbsp;&nbsp;<span class="icon16 folder">&nbsp;</span><%#Eval("tür_adi")%></li>
                            </ItemTemplate>
                         </asp:Repeater>
                        </ul>
                    </li> <!-- /#simpleContained1Tab -->
                    <li id="simpleContained2Tab">
                    	<ul class="sidebar-list popular">
                        	 <asp:Repeater ID="Rp_Kose_Yazıları" runat="server">
                                <ItemTemplate> 
                                    <li class="ta-justify">
                                        <span class="icon16 date">&nbsp;</span><%#DataBinder.Eval(Container.DataItem,"yazilis_tarihi","{0:d}")%><h5 class="text-shadow-black-2"><a href="Kose_Yazilari.aspx?yazi_id=<%#Eval("yazi_id")%>" class="link td-underline"><%#Eval("yazi_baslik")%></a></h5>                   			                                 
                                    </li>
                              </ItemTemplate>
                         </asp:Repeater>
                        </ul>
                    </li> <!-- /#simpleContained2Tab -->
                    <li id="simpleContained3Tab">
                		<div class="sidebar-comment ta-justify">
                            <asp:Repeater ID="Rp_Yorumlar" runat="server">
                                <ItemTemplate>                             
                        	            <h5 style="font-size:20px;font-weight:bold;text-align:center" class="text-shadow-black-2"><a href="haber_detay.aspx?haber_id=<%#Eval("haber_id")%>" class="link td-underline"><%#Eval("haber_baslik")%></a></h5>
                        	            <div class="user_avatar"><img src="images/manga1.png" width="64" alt="image" /></div>
                                        <a style="font-size:18px" class="link text-shadow-black-1 td-underline"><%#Eval("yazan_adi_soyadi")%><%--<%# string.Concat(Eval("yazan_adi"), "   ", Eval("yazan_soyadi")) %>:--%></a><br />
                                        <p style="font-size:20px"><%#Eval("yorum_detay")%>  </p>                                  
                                    <hr />    
                                </ItemTemplate>
                           </asp:Repeater>
                                 </div>                       
                    </li> <!-- /#simpleContained3Tab -->
                </ul> <!-- /.tabs-content contained theme-background -->
			</div> <!-- /.four columns hide-on-phones -->
            <!-- /SIDEBAR -->
        
            
    <div class="min-h-10"></div>
        
    <footer id="footer"> 
        
        <div class="row hide-on-phones">
        </div>
    </footer>
    
    <div class="min-h-20"></div>
        
           <div class="row footer theme-background">
            <div class="six columns">
                <div class="mrgn-l-5 mrgn-t-8">
                    © Copyright <a style="color:lightblue" href="mailto:galatasaray_ozgur_94@hotmail.com">Özgür KAN         </a><%=DateTime.Now.ToString("Y") %>

                </div>
            </div>
            <div class="six columns">
                <div class="mrgn-r-5 mrgn-t-8 ta-right">

                    <asp:Repeater ID="Rp_Footer_Kategori" runat="server">
                         <ItemTemplate>
                                    <a href="<%#Eval("tür_link")%>" class="link"><%#Eval("tür_adi")%></a> /                                      
                         </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="min-h-10"></div>
            </div>
        </div> <!-- /.row footer theme-background -->
	<div class="min-h-10"></div> 
</div> <!-- container -->
    </form>
</body>
</html>
