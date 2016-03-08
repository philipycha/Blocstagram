//
//  BlocstagramTests.m
//  BlocstagramTests
//
//  Created by Philip Ha on 2016-02-21.
//  Copyright (c) 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Media.h"

@interface BlocstagramTests : XCTestCase

@end

@implementation BlocstagramTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void) testMediaInit {
    NSDictionary *testDictionary = @{
                                                          @"id": @"123456",
                                                          @"user": @{@"name":@"Steve"},
                                                          };
    Media *item = [[Media alloc] initWithDictionary:testDictionary];
    [item.idNumber isEqualToString:@"123456"];
    XCTAssertEqualObjects(@"123456",item.idNumber,@"Nope");
}

@end
