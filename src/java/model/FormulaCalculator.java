/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author AJ
 */
public class FormulaCalculator {
    
    public double calcRectangleArea(String length,String width){
        double l = Double.parseDouble(length);
        double w = Double.parseDouble(width);
        double area = l*w;
        
        return area;
    }
    
}
