//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Tony Lam on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentPrice:(float)c
{
    _currentSharePrice = c;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)n
{
    _numberOfShares = n;
}

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}
@end
