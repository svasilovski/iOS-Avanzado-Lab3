//
//  CeldaTableViewCell.m
//  Laboratorio3
//
//  Created by Samuel Vasilovski on 10/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "CeldaTableViewCell.h"

@interface CeldaTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *descripcionLabel;
@property (weak, nonatomic) IBOutlet UILabel *cantidadLabel;

@end

@implementation CeldaTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void)setValues:(NSString *)descripcion :(NSString *)cantidad {
    _descripcion = descripcion;
    _cantidad = cantidad;
    
    self.descripcionLabel.text = _cantidad;
    self.cantidadLabel.text = _descripcion;
}

-(void)prepareForReuse{
    [super prepareForReuse];
    self.descripcionLabel.text = @"";
    self.cantidadLabel.text = @"";
}

@end
