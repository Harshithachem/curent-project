/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java3
 */
public class NewClass {
    public void printBinaryFormat(int number){
        
        int binary[] = new int[25];
        int index = 0;
        while(number > 0){
            binary[index++] = number%2;
            number = number/2;
        }
        

for(int i = index-1;i >= 0;i--){
            System.out.print(binary[i]);
        }
    }
     
    public static void main(String a[]){
        NewClass dtb = new NewClass();
        dtb.printBinaryFormat(25);

    
}
}
