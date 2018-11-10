//
//  MenuLisado.m
//  Laboratorio3
//
//  Created by Samuel Vasilovski on 10/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "MenuLisado.h"
#import "../ViewController.h"

@interface MenuLisado()
@property NSUserDefaults *defaults;
@end

@implementation MenuLisado

-(void)deslogear{
    [self.defaults setValue:@"" forKey:@"name"];
    NSString *name = [_defaults valueForKey:@"name"];
    
    if([name isEqualToString:@""]){
        NSLog(@"Usuario deslogeado");
    }
}

- (IBAction)salirTrapped:(id)sender {
    self.defaults =[NSUserDefaults standardUserDefaults];
    self.deslogear;
}

@end
