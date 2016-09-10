//
//  ViewController.h
//  Hello_Word
//
//  Created by Infraestructura on 03/09/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
/*
-(BOOL)insertarUsuario:(NSString *)nombreUsuario
             apellidos:(NSString *)apellidos
                  edad:(NSInteger)edad
                 email:(NSString *)email;
*/

@property (weak, nonatomic) IBOutlet UITextField *txf1;
@property (weak, nonatomic) IBOutlet UITextField *txf2;
@property (weak, nonatomic) IBOutlet UITextField *txf3;
@property (weak, nonatomic) IBOutlet UITextField *txf4;
@property (weak, nonatomic) IBOutlet UIScrollView *scv1;

- (IBAction)tapScroll:(id)sender;

@end

