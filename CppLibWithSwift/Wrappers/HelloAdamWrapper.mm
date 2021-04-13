//
//  HelloAdamWrapper.m
//  CppLibWithSwift
//
//  Created by Ahmed Adam on 13/04/2021.
//

#import <Foundation/Foundation.h>
#import "HelloAdamWrapper.h"
#import "HelloAdam.hpp"
@implementation HelloAdamWrapper
- (NSString *) sayHello {
    HelloAdam helloAdam;
    std::string helloAdamMessage = helloAdam.sayHello();
    return [NSString
            stringWithCString:helloAdamMessage.c_str()
            encoding:NSUTF8StringEncoding];
}
@end
