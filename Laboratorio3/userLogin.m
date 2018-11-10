//
//  userLogin.m
//  Laboratorio3
//
//  Created by Samuel Vasilovski on 10/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "userLogin.h"

@interface userLogin()
@property NSUserDefaults *defaults;
@end

@implementation userLogin
+(void)login:(NSString *)usuario{
    [self.defaults setValue:_usuario forKey:@"name"];
}

+(void)deslogear{
    
}
@end
