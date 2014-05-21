//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Tony Lam on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    // BNRStockHolding has two instance variables
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice: (float)p;
- (float)currentSharePrice;
- (void)setCurrentPrice: (float)c;
- (int)numberOfShares;
- (void)setNumberOfShares: (int)n;

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares

@property (copy) NSString *nameOfCompany;

@end
