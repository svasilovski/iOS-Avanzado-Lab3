//
//  userLogin.h
//  Laboratorio3
//
//  Created by Samuel Vasilovski on 10/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface userLogin : NSUserDefaults
+(void)login:(NSString *)usuario;
+(void)deslogear;
@end

NS_ASSUME_NONNULL_END
