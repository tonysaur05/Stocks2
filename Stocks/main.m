//
//  main.m
//  Stocks
//
//  Created by Tony Lam on 5/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRPortfolio *totalPortfolio = [[BNRPortfolio alloc] init];
        
        BNRStockHolding *picachuStocks = [[BNRStockHolding alloc] init];
        [picachuStocks setNameOfCompany:@"picachuStocks"];
        [picachuStocks setPurchaseSharePrice:2.30];
        [picachuStocks setCurrentPrice:4.50];
        [picachuStocks setNumberOfShares:40];
        [totalPortfolio addStock:picachuStocks];
        
        BNRStockHolding *bulbasaurStocks = [[BNRStockHolding alloc] init];
        [bulbasaurStocks setNameOfCompany:@"bulbasaurStocks"];
        [bulbasaurStocks setPurchaseSharePrice:12.19];
        [bulbasaurStocks setCurrentPrice:10.56];
        [bulbasaurStocks setNumberOfShares:90];
        [totalPortfolio addStock:bulbasaurStocks];
        
        BNRStockHolding *squirtleStocks = [[BNRStockHolding alloc] init];
        [squirtleStocks setNameOfCompany:@"squirtleStocks"];
        [squirtleStocks setPurchaseSharePrice:45.10];
        [squirtleStocks setCurrentPrice:49.51];
        [squirtleStocks setNumberOfShares:210];
        [totalPortfolio addStock:squirtleStocks];
        
        BNRForeignStockHolding *mewtwoStocks = [[BNRForeignStockHolding alloc] init];
        [mewtwoStocks setNameOfCompany:@"mewtwoStocks"];
        [mewtwoStocks setPurchaseSharePrice:2.30];
        [mewtwoStocks setCurrentPrice:4.50];
        [mewtwoStocks setNumberOfShares:40];
        [mewtwoStocks setConversionRate:0.94];
        [totalPortfolio addStock:mewtwoStocks];
        
        
        NSMutableArray *stockArray = [[NSMutableArray alloc] init];
        [stockArray addObject:picachuStocks];
        [stockArray addObject:bulbasaurStocks];
        [stockArray addObject:squirtleStocks];
        
        for (BNRStockHolding *s in stockArray) {
            float cid = [s costInDollars];
            float vid = [s valueInDollars];
            NSString *name = [s nameOfCompany];
            NSLog(@"\n\n%@\n---------------\nCost in Dollars: %.2f\nValue in Dollars: %.2f", name, cid, vid);
        }
        for (BNRStockHolding *s in stockArray) {
            float cid = [s costInDollars];
            float vid = [s valueInDollars];
            NSString *name = [s nameOfCompany];
            NSLog(@"\n\n%@\n---------------\nCost in Dollars: %.2f\nValue in Dollars: %.2f", name, cid, vid);
        }
        NSLog(@"Total portfolio value = %.2f", [totalPortfolio totalStockValue]);
    }
    return 0;
}

