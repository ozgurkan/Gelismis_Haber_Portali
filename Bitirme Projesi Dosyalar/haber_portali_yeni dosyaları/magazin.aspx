<%@ Page Language="C#" AutoEventWireup="true" CodeFile="magazin.aspx.cs" Inherits="spor" %>

<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><html class="no-js" lang="tr"> <!--<![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
            <link href="stylesheets/slider.css" rel="stylesheet" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script src="javascripts/slider.js"></script>
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />

    <meta http-equiv="refresh" content="300"> 
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width" />

	<title>Haber 46</title>
  <link rel="shortcut icon" href="images/sekme.ico">
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
                                        <a href="Default.aspx">
                                            <img src="images/logo1.png" title="Logo" class="mrgn-t-5 mrgn-l-5" />

                                        </a>
                                     </div><!-- three columns -->
                
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
                                                               </div><!-- row -->
                                         
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
                                        </div><!-- nine columns -->
                             </div> <!-- /.row -->
            
            <div class="min-h-10"></div>
            
                              <div class="row">
                                                <div class="twelve columns" style="z-index:999"> 
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
                                                </div><!-- twelve columns-->
                                            </div><!-- row -->
        </div> <!-- /.header-bg -->       
    </header>
    
    
<div class="row">
	        <div class="eight columns">
			
            <div class="min-h-20 hide-on-phones"></div>
            
			<div class="row hide-on-phones">
				<div class="twelve columns">                   	
                            <div id="slider">
                                <ul class="slider">
                                         <asp:Repeater ID="rphaber" runat="server">
                                            <ItemTemplate>                        
            	                                    <li><a href="haber_detay.aspx?haber_id=<%#Eval("haber_id")%>"><img src="images/slider/<%#Eval("manset_resmi") %>" /><h3 class="mansetTitle"><%#Eval("haber_baslik")%></h3></a> </li>                            
                                           </ItemTemplate>
                                           </asp:Repeater>
                                   </ul>
                                    <div class="sayfa">
             	                            <a href="#">1</a>
                                            <a href="#">2</a>
                                            <a href="#">3</a>
                                            <a href="#">4</a>
                                            <a href="#">5</a>
                                            <a href="#">6</a>
                                            <a href="#">7</a>
                                            <a href="#">8</a>
                                            <a href="#">9</a>
                                            <a href="#">10</a>             
                                      </div>
                                          <div class="sayfa_buton">
                                          <a href="#" id="onceki"><</a>
                                          <a href="#" id="sonraki">></a>              
                                          </div>            
                         </div> <!-- slider -->                        	
                   </div> <!-- /.twelve columns -->
            </div> <!-- /.row -->

            <div class="clearfix"></div>
                
			<div class="row">                
				<div class="four columns ta-justify" style="width:800px">
                     <asp:Repeater ID="Rpt_alt_haber" runat="server">
                            <ItemTemplate>                        
            	    <div style="float:left;width:190px;height:319px;margin:10px;">                           
                	<div class="bottom_overlay">
                    	<a href="haber_detay.aspx?haber_id=<%#Eval("haber_id")%>"><img src="images/slider/<%#Eval("manset_resmi") %>" /></a>
                        <div class="description_black">
                        	<p><%#Eval("haber_baslik")%></p>
                        </div>
                    </div>
                        
<%--                    <ul class="image_bookmarks news-1">
                        <li class='picture'><a class="fancybox" href="images/image1.jpg" title="Lorem ipsum dolor sit amet">Picture</a></li>
                        <li class='video'><a class="fancybox-media" href="http://www.youtube.com/watch?v=GgR6dyzkKHI">Video</a></li>
                        <li class="text color4">FINANCE</li>
                    </ul>--%>
                    <h5><a href="haber_detay.aspx?haber_id=<%#Eval("haber_id")%>" class="link"><%#Eval("haber_baslik")%></a></h5>
                       <p> <%#Eval("haber_ozet")%> </p>

            	    </div>   
				        </ItemTemplate>
                     </asp:Repeater>
                 </div>
				
               
            </div> <!-- /.row -->
  </div> <!-- eight columns -->
			
            
            
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
                                         <span class="icon16 date">&nbsp;</span><%#DataBinder.Eval(Container.DataItem,"yazılıs_tarihi","{0:d}")%><%--<span class="icon16 comment">&nbsp;</span>6, --%>&nbsp;&nbsp;&nbsp;<span class="icon16 folder">&nbsp;</span><%#Eval("tür_adi")%>
                                    </li>
                            </ItemTemplate>
                         </asp:Repeater>
                        </ul>
                    </li> <!-- /#simpleContained1Tab -->
                    <li id="simpleContained2Tab">
                    	<ul class="sidebar-list popular">
                        	 <asp:Repeater ID="Rp_Kose_Yazıları" runat="server">
                                <ItemTemplate> 
                                    <li class="ta-justify">
                                        <span class="icon16 date">&nbsp;</span><%#DataBinder.Eval(Container.DataItem,"yazilis_tarihi","{0:d}")%>                   
                            	        <h5 class="text-shadow-black-2"><a href="Kose_Yazilari.aspx?yazi_id=<%#Eval("yazi_id")%>" class="link td-underline"><%#Eval("yazi_baslik")%></a></h5>                   			                                 
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
</div><!--row -->
            
           
        <div class="min-h-10"></div>
        
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