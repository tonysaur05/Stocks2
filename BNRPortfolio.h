//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Tony Lam on 5/21/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject
{
    NSMutableArray *_stocks;
}

@property (nonatomic, copy) NSString *owner;
@property (nonatomic, copy) NSArray *stocks;
@property (nonatomic) float totalStockValue;

-(void)addStock:(BNRStockHolding *)s;
-(float)totalStockValue;

@end
