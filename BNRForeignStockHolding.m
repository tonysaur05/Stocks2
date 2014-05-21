//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Tony Lam on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars
{
    float normalCostInDollars = [super costInDollars];
    return normalCostInDollars * [self conversionRate];
}

- (float)valueInDollars
{
    float normalValueInDollars = [super valueInDollars];
    return normalValueInDollars * [self conversionRate];
}

@end
