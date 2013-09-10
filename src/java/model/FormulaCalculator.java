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
    public double calcCircleArea(String radius){
        double r = Double.parseDouble(radius);
        double area = (3.14159265359*3.14159265359)*r;
        
        return area;
    }
    public double calcTriangleArea(String side1,String side2){
        double s1 = Double.parseDouble(side1);
        double s2 = Double.parseDouble(side2);
        double area = Math.sqrt((s1*s1)+(s2*s2));
        
        return area;
    }
    
}
