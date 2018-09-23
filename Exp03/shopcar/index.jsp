<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.valueBean.GoodsSingle" %>
<%!
	static ArrayList goodsList=new ArrayList();
	static{	
		String[] name={"Bvlgari宝格丽 大吉岭茶","百瑞德 无人区玫瑰","波多斯 阿萨姆红茶","Penhaligon's Juniper Sling 琴酒"};
		String[] product={"30ml 清爽简单的气味 非常适合日常使用的中性香气","Byredo rose of on man's land 百瑞德 无人区玫瑰 100ml 15年Byredo的新作品，灵感来自于战争中白衣天使们无私的同情之心","Berdoues波多斯 阿萨姆红茶/西西里柠檬/巴西雨林 100ml ","Penhaligon's Juniper Sling 琴酒 100ml正装 "};
		                                      
		float[] price={225.3f,116f,650f,820.55f};
		
		for(int i=0;i<4;i++){
						
			GoodsSingle single=new GoodsSingle();
			single.setName(name[i]); 
			single.setProduct(product[i]); 
			single.setPrice(price[i]); 
			single.setNum(1); 
			goodsList.add(i,single); 
		}	
	}
%>
<%
	session.setAttribute("goodsList",goodsList);
	response.sendRedirect("show.jsp");
%>
