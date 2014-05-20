package com.servlets;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.imageio.ImageIO;

//import com.utils.DbUtil;;

public class RunUtils {
	
	
	//private static  Connection conn; 

	 
	 public RunUtils() {
		 
	 }
	 public static Connection getConnection(){
		 Connection conn = null;
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 String url="jdbc:mysql://localhost:3306/shopping";
			 String username="root";
			 String password="lazkopat61";
			
			 conn=DriverManager.getConnection(url,username,password);
		 }
			 catch (SQLException ex) {  
		            //message = "ERROR: " + ex.getMessage();  
		            ex.printStackTrace();  
				} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 return conn;
}
		 
	 
	 
	 public static ProductBean randomProduct(int limit) {
		 ArrayList<String> path1 = new ArrayList<String>();
		 ArrayList<Float> price1 = new ArrayList<Float>();
		 ArrayList<String> name1 = new ArrayList<String>();
		 ArrayList<String> description1 = new ArrayList<String>();
		
		 
		 
		
		 try{
			
			 Connection conn = getConnection();
			 String sql = "select productPicture,productPrice,productName,productDescription from product order by rand() limit " + limit;
			 PreparedStatement statement = conn.prepareStatement(sql);
			 
			 ResultSet rs = statement.executeQuery(sql);
			 
			 while(rs.next()) {
				 path1.add(rs.getString("productPicture"));
				 price1.add(rs.getFloat("productPrice"));
				 name1.add(rs.getString("productName"));
				 description1.add(rs.getString("productDescription"));
			 }
		
		
		 }
		 catch (SQLException ex) {  
	            //message = "ERROR: " + ex.getMessage();  
	            ex.printStackTrace();  
			}
		 return(new ProductBean(path1,price1,name1,description1));
	 }
	 
	 
	 
	 public static ProductBean selectCategory(String category){
		 ArrayList<String> path1 = new ArrayList<String>();
		 ArrayList<Float> price1 = new ArrayList<Float>();
		 ArrayList<String> name1 = new ArrayList<String>();
		 ArrayList<String> description1 = new ArrayList<String>();
		 String categoryName = category;
		 
		 try{
			 Connection conn = getConnection();
			 String sql = "select productPicture,productPrice,productName,productDescription from product,category where product.categoryID=category.categoryID and category.categoryName='" + categoryName + "'";     
			 PreparedStatement statement = conn.prepareStatement(sql);
			 
			 ResultSet rs = statement.executeQuery(sql);
			 
			 while(rs.next()) {
				 path1.add(rs.getString("productPicture"));
				 price1.add(rs.getFloat("productPrice"));
				 name1.add(rs.getString("productName"));
				 description1.add(rs.getString("productDescription"));
				 
			 }
		 }
		 catch (SQLException ex) {  
	            //message = "ERROR: " + ex.getMessage();  
	            ex.printStackTrace();  
			}
		 return(new ProductBean(path1,price1,name1,description1));
		 
		 
	 }
	 public static ProductNameBean showProduct(String path, String price){
		 String name = null ;
		 String description = null ;
		 float price1 = Float.parseFloat(price);
		 
		 try{
			 Connection conn = getConnection();
			 String sql = "select productName,productDescription from product  where product.productPicture='"+path+"'";     
			 
			 PreparedStatement statement = conn.prepareStatement(sql);
			 
			 ResultSet rs = statement.executeQuery(sql);
			 while(rs.next()) {
				 name = (rs.getString("productName"));
				 description = (rs.getString("productDescription"));
				 
			 }

			 
		 }
		 catch (SQLException ex) {  
	            //message = "ERROR: " + ex.getMessage();  
	            ex.printStackTrace();  
			}
		 return(new ProductNameBean(name,description));
	 }
	 
	 
	 public static ProductBean selectDetailsProduct(String category, String cost1, String cost2,String searchword){
		 float cost3 = Float.parseFloat(cost1);
		 float cost4  = Float.parseFloat(cost2);
		 ArrayList<String> path1 = new ArrayList<String>();
		 ArrayList<Float> price1 = new ArrayList<Float>();
		 ArrayList<String> name1 = new ArrayList<String>();
		 ArrayList<String> description1 = new ArrayList<String>();
		
		 
		 if (category.equals("hepsi")){
			 try{
				 Connection conn = getConnection();
				 String sql = "select productPicture,productPrice,productName,productDescription from product where product.productPrice between'"+cost3+"'and '"+cost4+"' and product.productName like '%" + searchword + "%'";     
				 PreparedStatement statement = conn.prepareStatement(sql);
				 
				 ResultSet rs = statement.executeQuery(sql);
				 
				 while(rs.next()) {
					 path1.add(rs.getString("productPicture"));
					 price1.add(rs.getFloat("productPrice"));
					 name1.add(rs.getString("productName"));
					 description1.add(rs.getString("productDescription"));
					 
				 }
			 }
			 catch (SQLException ex) {  
		            //message = "ERROR: " + ex.getMessage();  
		            ex.printStackTrace();  
				}
			 
		 }
		 else{
			 try{
				 Connection conn = getConnection();
				 String sql = "select productPicture,productPrice,productName,productDescription from product,category where product.categoryID=category.categoryID and category.categoryName='" + category + "' and product.productPrice between'"+cost1+"'and '"+cost2+"' and product.productName like '%" + searchword + "%'" ;     
				 PreparedStatement statement = conn.prepareStatement(sql);
				 
				 ResultSet rs = statement.executeQuery(sql);
				 
				 while(rs.next()) {
					 path1.add(rs.getString("productPicture"));
					 price1.add(rs.getFloat("productPrice"));
					 name1.add(rs.getString("productName"));
					 description1.add(rs.getString("productDescription"));
					 
				 }
			 }
			 catch (SQLException ex) {  
		            //message = "ERROR: " + ex.getMessage();  
		            ex.printStackTrace();  
				}
		 }
		 
		 
		 return(new ProductBean(path1,price1,name1,description1));
		 
	 }
	 public static BufferedImage readImage(String path) throws IOException{
		 String yol = "C:\\Users\\OZTURK\\git\\shopping\\ShoppingSite\\WebContent\\";
		 File f = new File(yol+path);
		 BufferedImage bimg = ImageIO.read(f);
		 BufferedImage bi = resize(bimg,94,94);
		 return bi;
	 }
	 
	 public static BufferedImage resize(BufferedImage img, int newW, int newH){
		 int w = img.getWidth();
		 int h = img.getHeight();
		 BufferedImage dimg = new BufferedImage(newW, newH, img.getType());
		 Graphics2D g = dimg.createGraphics();
		 g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
		 g.drawImage(img, 0, 0, newW, newH, 0, 0, w, h, null);
		 g.dispose();
		 return dimg;
		 
	 }
	 
	
	 
}
