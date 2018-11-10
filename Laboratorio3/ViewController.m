//
//  ViewController.m
//  Laboratorio3
//
//  Created by Samuel Vasilovski on 10/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"
#import "Listado/ListadoTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userLabel;
@property (weak, nonatomic) IBOutlet UITextField *passwdLabel;

@property NSUserDefaults *defaults;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.defaults =[NSUserDefaults standardUserDefaults];
    self.userLoggin;
}

- (IBAction)ingresarTapped:(id)sender {
    if([self.userLabel.text isEqual:@"user"]){
        if([self.passwdLabel.text isEqual:@"Passwd"]){
            [self.defaults setValue:self.userLabel.text forKey:@"name"];
            self.userLoggin;
        }
        else{
            NSLog(@"Password incorrecta.");
        }
    }else{
        NSLog(@"Usuario incorrecto.");
    }
    self.userLabel.text=@"";
    self.passwdLabel.text=@"";
}

-(void)userLoggin{
    NSString *name = [_defaults valueForKey:@"name"];
    if(![name isEqualToString:@""]){
        [self performSegueWithIdentifier:@"goToList" sender:self];
    }else{
        self.userLabel.text=@"";
        self.passwdLabel.text=@"";
    }
}

@end
