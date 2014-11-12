//
//  Fraction.h
//  chSevenOne
//
//  Created by Victor Diaz on 11/10/14.
//  Copyright (c) 2014 vicksterdiaz. All rights reserved.
//

#import <Foundation/Foundation.h>

// ---- @interface section ----
// Describes the class and its methods

@interface Fraction: NSObject

//setter and getter

@property int numerator, denominator;

-(void) print;
/*-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;*/
-(void) setTo:(int) n over:(int) d;
-(double) convertToNum;
//arithmetic operations
-(void) add: (Fraction *) f;
-(void) sub: (Fraction *) f;
-(void) mult: (Fraction *) f;
-(void) div: (Fraction *) f;

-(void) reduce;
@end
