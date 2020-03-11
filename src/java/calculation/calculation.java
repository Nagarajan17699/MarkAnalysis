/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculation;

/**
 *
 * @author Nagarajan
 */

import java.text.DecimalFormat;
public  class calculation {
    
    DecimalFormat df = new DecimalFormat("#.###");
    public static float calc(int num)
    {
        float num1 =  (float) (((float)((float)num/17)) * 0.2);
        return num1;
    }
    
    public static float calcopt(int num)
    {
        float num1 =  (float) (((float)((float)num/33)) * 0.2);
        return num1;
    }
    
}
