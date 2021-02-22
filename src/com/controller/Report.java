package com.controller;

import java.awt.Color;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Image;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import com.lowagie.text.pdf.codec.Base64.OutputStream;
import com.utils.UserStatic;

/**
 * Servlet implementation class Report
 */
public class Report extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Report() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletOutputStream out=response.getOutputStream();
        try {
            Document document = new Document();
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "inline; filename=\"response.pdf\"");
            /* Basic PDF Creation inside servlet */
            PdfWriter.getInstance(document, out);
            document.open();
            Image img = Image.getInstance("bonsai-01.png");
            img.setAlignment(Element.ALIGN_CENTER);
            img.scaleAbsolute(250f, 75f);
   
            document.add(img);
            document.add(new Paragraph("Project Name: Bonsai3"));
            document.addTitle("Payment Bonsai3");
            document.add(new Paragraph("Report Name: Payment"));
             
            PdfPTable table = new PdfPTable(5); // 3 columns.
            table.setSpacingBefore(30f);
           
            
            PdfPCell cell1 = new PdfPCell(new Paragraph("Customer ID"));
			cell1.setBorderColor(Color.WHITE);
			cell1.setBackgroundColor(Color.BLUE);
			cell1.setPaddingLeft(5);
			cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
			cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);

            
           
            PdfPCell cell2 = new PdfPCell(new Paragraph("Price"));
            cell2.setBorderColor(Color.WHITE);
            cell2.setBackgroundColor(Color.BLUE);				
			cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
			cell2.setVerticalAlignment(Element.ALIGN_MIDDLE);
			
            PdfPCell cell3 = new PdfPCell(new Paragraph("Status"));
			cell3.setBorderColor(Color.WHITE);
			cell3.setBackgroundColor(Color.BLUE);
			cell3.setPaddingLeft(5);
			cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
			cell3.setVerticalAlignment(Element.ALIGN_MIDDLE);
            
			
			PdfPCell cell4 = new PdfPCell(new Paragraph("Product Id"));
			cell4.setBorderColor(Color.WHITE);
			cell4.setBackgroundColor(Color.BLUE);
			cell4.setPaddingLeft(10);
			cell4.setHorizontalAlignment(Element.ALIGN_CENTER);
			cell4.setVerticalAlignment(Element.ALIGN_MIDDLE);
			
			
			PdfPCell cell5 = new PdfPCell(new Paragraph("Delvered Date"));
			cell5.setBorderColor(Color.WHITE);
			cell5.setBackgroundColor(Color.BLUE);
			cell5.setPaddingLeft(10);
			cell5.setHorizontalAlignment(Element.ALIGN_CENTER);
			cell5.setVerticalAlignment(Element.ALIGN_MIDDLE);
			
			
			table.addCell(cell1);
            table.addCell(cell2);
            table.addCell(cell3);
            table.addCell(cell4);
            table.addCell(cell5);
           
    		try {
    			 Class.forName("com.mysql.jdbc.Driver");
    				Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bonsai3","root","");
    	    		PreparedStatement pre;
    			pre = con.prepareStatement("select * from deliverydetails where status='Payment done' ");
    		
    			ResultSet rs= pre.executeQuery();
    			while(rs.next()){
    				PdfPCell cellName = new PdfPCell(new Paragraph(rs.getString("customer_id")));
    				table.addCell(cellName);
    				PdfPCell cellId = new PdfPCell(new Paragraph(rs.getString("Total")));
    				table.addCell(cellId);
    				PdfPCell cellEmail = new PdfPCell(new Paragraph(rs.getString("delivery_status")));
    				table.addCell(cellEmail);
    				PdfPCell cellcrt = new PdfPCell(new Paragraph(rs.getString("product_id")));
    				table.addCell(cellcrt);
    				PdfPCell cellcrt1 = new PdfPCell(new Paragraph(rs.getString("date")));
    				table.addCell(cellcrt1);
    				
    				
    				
    			}
    		} catch (Exception e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}

    		
          // Adding cells to the table       
               
            // Adding Table to document        
            document.add(table);                  
            
            document.close();
            
            
        }
                catch (DocumentException exc){
                throw new IOException(exc.getMessage());
                }
        
       
        
        finally {            
            out.close();
        }
        
        
       
        
        
}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
