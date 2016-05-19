
package com.controller;

import java.io.*;
import org.apache.poi.ss.usermodel.Row;
import java.sql.*;
import java.util.*;
import java.util.regex.*;
import com.entity.Attendance;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class ExcelRead {
    
    
    public static Vector read(String fileName){
      Vector cellVectorHolder = new Vector();
        System.out.println("In Excel read is : " + fileName);
      try{
    	     FileInputStream myInput = new FileInputStream(fileName);
   	     POIFSFileSystem myFileSystem = new POIFSFileSystem(myInput);
             HSSFWorkbook myWorkBook = new HSSFWorkbook(myFileSystem);
             HSSFSheet mySheet = myWorkBook.getSheetAt(0);
             Iterator rowIter = mySheet.rowIterator(); 
           
             while(rowIter.hasNext()){
        	  HSSFRow myRow = (HSSFRow) rowIter.next();
        	  Iterator cellIter = myRow.cellIterator();
        	  Vector cellStoreVector=new Vector();
        	      while(cellIter.hasNext()){
        		  HSSFCell myCell = (HSSFCell) cellIter.next();
        		  cellStoreVector.addElement(myCell);
        	      }
        	  cellVectorHolder.addElement(cellStoreVector);
             }
            /* Row row;
             
             for(int i=1;i<mySheet.getLastRowNum();i++){
                 Vector cellStoreVector=new Vector();
                row = mySheet.getRow(i);
                 System.out.println("Row is : "+row);
                 System.out.println("row at 0 is ; " +row.getCell(0));
                int emp_id = (int) row.getCell(0).getNumericCellValue();
                
                 cellStoreVector.add(emp_id);
                 System.out.println("row at 1 is ; " +row.getCell(1));
                String emp_name= row.getCell(1).getStringCellValue();
                cellStoreVector.add(emp_name);
                System.out.println("row at 0 is ; " +row.getCell(2));
                String in_time = row.getCell(2).getStringCellValue();
                cellStoreVector.add(in_time);
                System.out.println("row at 0 is ; " +row.getCell(3));
                String out_time = row.getCell(3).getStringCellValue();
                cellStoreVector.add(out_time);
                String p_date= row.getCell(4).getStringCellValue();
                cellStoreVector.add(p_date);
                System.out.println("row at 0 is ; " +row.getCell(4));
                
                 System.out.println("cell " +cellStoreVector);
             cellVectorHolder.add(cellStoreVector);
             } */
    	}catch (Exception e){e.printStackTrace(); }
        System.out.println("Cell vecor in excel read is : " + cellVectorHolder);
    	return cellVectorHolder;
  }

   
}
