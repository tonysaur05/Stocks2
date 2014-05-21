//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Tony Lam on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRForeignStockHolding.h"

@implementation BNRPortfolio

-(void)setStocks:(NSArray *)s
{
    _stocks = [s mutableCopy];
}

-(NSArray *)stocks
{
    return [_stocks copy];
}

-(void)addStock:(BNRStockHolding *)s
{
    if (!_stocks) {
        _stocks = [[NSMutableArray alloc] init];
    }
    [_stocks addObject:s];
}

-(float)totalStockValue
{
    float sum = 0.0;
    for (BNRStockHolding *s in _stocks) {
        sum += [s valueInDollars];
    }
    return sum;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Owner: %@, Value: $%.2f>", self.owner, self.totalStockValue];
}

@end
