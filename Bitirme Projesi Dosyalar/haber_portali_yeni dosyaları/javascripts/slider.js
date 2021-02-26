
// JavaScript Document
$(function(){
		 $(".sayfa a:first").addClass("aktif");
		 //$(".slider li").hide();
		 //$(".slider li:fist").show();
		 //$("ul.slider li:not(:first)").hide();
		 var toplamLi = $(".slider li").length;
		 var toplamGenislik=toplamLi*650;
		 $("ul.slider").css("width",toplamGenislik+"px");
		 var deger=0;

		 
		 $(".sayfa a").click(function(){
									  var indis=$(this).index();
									 yeniDeger=indis*650;				
										   $("ul.slider").animate({marginLeft:"-" + yeniDeger + "px"},250);
									  $(".sayfa a").removeClass("aktif");
									  $(this).addClass("aktif");
									  deger=indis;
									  return false
									  });
		 
		 $("a#sonraki").click(function(){
									   $(".sayfa a").removeClass("aktif");
									   
									   if(deger < toplamLi-1){
										   deger++;									   
									 	   yeniDeger=deger*650;				
										   $("ul.slider").animate({marginLeft:"-" + yeniDeger + "px"},250);
									       $(".sayfa a:eq("+deger+")").addClass("aktif");
										   }
										   else{
											   deger=0;
											   $("ul.slider").animate({marginLeft:0 + "px"},250);
											   $(".sayfa a:eq("+deger+")").addClass("aktif");
											   }
									   return false								   
									});
		 
		 $("a#onceki").click(function(){
									   $(".sayfa a").removeClass("aktif");
									   
									   if(deger > 0){
										   deger--;									   
									 	   yeniDeger=deger*650;				
										   $("ul.slider").animate({marginLeft:"-" + yeniDeger + "px"},250);							       
									       $(".sayfa a:eq("+deger+")").addClass("aktif");
										   }
										   else{
											   deger=toplamLi-1;
											   yeniDeger=deger*650;				
										   $("ul.slider").animate({marginLeft:"-" + yeniDeger + "px"},250);
											   $(".sayfa a:eq("+deger+")").addClass("aktif");
											   }
									   return false								   
									});
		 
		 $.dondur=function(){
			 							 $(".sayfa a").removeClass("aktif");
									   
									   if(deger < toplamLi-1){
										   deger++;									   
									 	  	yeniDeger=deger*650;				
										   $("ul.slider").animate({marginLeft:"-" + yeniDeger + "px"},250);						       
									       $(".sayfa a:eq("+deger+")").addClass("aktif");
										   }
										   else{
											   deger=0;
											   $("ul.slider").animate({marginLeft:0 + "px"},250);
											   $(".sayfa a:eq("+deger+")").addClass("aktif");
											   }
									   return false					
			 }
			 var sliderDondur=setInterval('$.dondur()',5000);
			 $("#slider").hover(function(){
			clearInterval(sliderDondur);
			},function(){
			sliderDondur=setInterval("$.dondur()",5000);
			});
			 
			 
			 

  
  
  
  
//  /*Alt Slider*/
//  var sure=10000;//slider dönme süresi

//var toplamLi = $(".alt_slider ul li").length;
//var liWidth=170;
//var toplamWidth = liWidth*toplamLi;
//var liDeger=0;
//$(".alt_slider ul").css("width",toplamWidth + "px");

//$("#ileri").click(function(){
//if(liDeger<toplamLi-5){
//liDeger++;
//yeniWidth=liWidth*liDeger;

//$(".alt_slider ul ").animate({marginLeft:"-"+yeniWidth+"px"},500);
//}else{
//liDeger=0;
//$(".alt_slider ul ").animate({marginLeft:"0"},500);
//}
//return false;
//})



//$("#geri").click(function(){
//if(liDeger>0){
//liDeger--;
//yeniWidth=liWidth*liDeger;
//$(".alt_slider ul").animate({marginLeft:"-"+yeniWidth+"px"},500);
//}else{
//liDeger=toplamLi-4;
//$(".alt_slider ul").animate({marginLeft:"toplamWidth"},500);
//}
//return false;
//})

///*Otomatik Dönme*/
//$.alt_slider=function(){
//if(liDeger<toplamLi-5){
//liDeger++;
//yeniWidth=liWidth*liDeger;
//$(".alt_slider ul").animate({marginLeft:"-"+yeniWidth+"px"},500);
//  }else{
//liDeger=0;
//$(".alt_slider ul").animate({marginLeft:"0"},500);
//   }
//}

//var don=setInterval("$.alt_slider()",sure);

//$("#alt_slider").hover(function(){
//clearInterval(don);
//},function(){
//don=setInterval("$.alt_slider()",sure);
//})
  
});
