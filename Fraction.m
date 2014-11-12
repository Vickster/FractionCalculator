//
//  Fraction.m
//  chSevenOne
//
//  Created by Victor Diaz on 11/10/14.
//  Copyright (c) 2014 vicksterdiaz. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
//Describes the data
{
    int numerator;
    int denominator;
}

-(void) print{
    
    printf("%i/%i\n", numerator, denominator);
}

@synthesize numerator, denominator;

/*
-(void) setNumerator: (int) n{
    numerator = n;
}
-(void) setDenominator: (int) d{
    denominator = d;
}
//getters
-(int) numerator{
    return numerator;
}
-(int) denominator{
    return denominator;
}*/

-(void) setTo:(int) n over:(int) d{
    if (n<=0) {
    }
    numerator = n;
    denominator = d;
}

-(double) convertToNum{
    if (denominator != 0){
        return (double) numerator/denominator;
    }
    else{
        return NAN;
    }
}

-(void) add: (Fraction *) f{

    //to add two fractions
    // a/b + c/d = (a*d + c*b)/(b*c)
    
    numerator = (numerator* f.denominator)+(denominator*f.numerator);
    denominator = denominator* f.denominator;
    
    [self reduce];
    
}

-(void) sub: (Fraction *) f{
    
    numerator = (numerator* f.denominator)+(denominator*f.numerator);
    denominator = denominator* f.denominator;
    
    [self reduce];
    
}
-(void) mult: (Fraction *) f{
    
    numerator = (numerator * f.numerator);
    denominator = denominator* f.denominator;
    
    [self reduce];

}
-(void) div: (Fraction *) f{
    
    numerator = numerator * f.denominator;
    denominator = denominator * f.numerator;
    
    [self reduce];
}
-(void) reduce{

    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v!=0) {
        temp = u%v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
    
}

@end
