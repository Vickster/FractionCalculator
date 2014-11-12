//
//  main.m
//  Fraction Calculator
//
//  Created by Victor Diaz on 11/10/14.
//  Copyright (c) 2014 vicksterdiaz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction *myFraction =[[Fraction alloc]init];
        Fraction *myFractionT =[[Fraction alloc]init];
        int n = 0;
        int d = 0;
        int cond = 0;
        int nT = 0;
        int dT = 0;
        int op;
        
        //set the fraction to 1/3
        
        /*myFraction.numerator = 1;
        myFraction.denominator = 3;*/
        
        //display the fraction
        
        printf("Fraction Calculator\n");
        printf("type 3 to exit, or any number to continue \n");
        scanf("%i", &cond);
        
        while (cond!=3) {
        
            printf("fraction one numerator: ");
            scanf("%i", &n);
            printf("fraction one denominator: ");
            scanf("%i", &d);
            
            printf("fraction two numerator: ");
            scanf("%i",&nT);
            printf("fraction two denominator: ");
            scanf("%i",&dT);
        
            [myFraction setTo:n over:d];
            [myFractionT setTo:nT over:dT];
        
            /*printf("The fraction is: ");
        
            printf("%d/%d\n",myFraction.numerator,myFraction.denominator);
    
            printf("Your fraction converted to decimal: %.2g\n\n", [myFraction convertToNum]);
            
            printf("type any number to start or 3 to exit the program: \n");
            scanf("%i", &cond);
            
            printf("The fraction is: ");
            
            printf("%d/%d\n",myFractionT.numerator,myFractionT.denominator);
            
            printf("Your fraction converted to decimal: %.2g\n\n", [myFractionT convertToNum]);
            
            printf("type any number to start or 3 to exit the program: \n");
            scanf("%i", &cond);*/
            
            printf("Select operation to perform((1)+,(2)-,(3)/,(4)*): ");
            scanf("%i",&op);
            
            switch (op) {
                case 1:
                    
                    [myFraction print];
                    printf("+\n");
                    [myFractionT print];
                    printf("----\n");
            
                    [myFraction add: myFractionT];
                    //[myFraction reduce];
                    [myFraction print];
                    printf("Your fraction converted to decimal: %.2g\n\n", [myFraction convertToNum]);
                    break;
                case 2:
                    [myFraction print];
                    printf("-\n");
                    [myFractionT print];
                    printf("----\n");
                    
                    [myFraction sub: myFractionT];
                    //[myFraction reduce];
                    [myFraction print];
                    printf("Your fraction converted to decimal: %.2g\n\n", [myFraction convertToNum]);
                    break;
                case 3:
                    [myFraction print];
                    printf("/\n");
                    [myFractionT print];
                    printf("----\n");
                    
                    [myFraction div: myFractionT];
                    //[myFraction reduce];
                    [myFraction print];
                    printf("Your fraction converted to decimal: %.2g\n\n", [myFraction convertToNum]);
                    break;
                case 4:
                    [myFraction print];
                    printf("*\n");
                    [myFractionT print];
                    printf("----\n");
                    
                    [myFraction mult: myFractionT];
                    //[myFraction reduce]; this line has been removed cuz I included self reduce in the implementation 
                    [myFraction print];
                    printf("Your fraction converted to decimal: %.2g\n\n", [myFraction convertToNum]);
                    break;
                default:
                    printf("no operation");
                    break;
                    
            }
            
            
            printf("type 3 to exit, or any number to continue \n");
            scanf("%i", &cond);
            
        }
        
        printf("ㅋㅋㅋㅋ 좋은 하루 보내세요! \n");
    }
    return 0;
}
