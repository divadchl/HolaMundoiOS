//
//  ViewController.m
//  Hello_Word
//
//  Created by Infraestructura on 03/09/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL tecladoArriba;
}

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self insertarUsuario:@"David" apellidos:@"Chávez López" edad:38 email:@"divadchl@gmail.com"];
    CGFloat maxY = CGRectGetMaxY(self.txf4.frame);
    CGFloat ancho = CGRectGetWidth([[UIScreen mainScreen] bounds]);
    CGSize nuevoTamanio = CGSizeMake(ancho, maxY +15.0);
    //Las siguintes líneas son equivalentes
    self.scv1.contentSize = nuevoTamanio;
    [self.scv1 setContentSize:nuevoTamanio];
}

-(BOOL) insertarUsuario:(NSString *)nombreUsuario apellidos:(NSString *)apellidos edad:(NSInteger)edad email:(NSString *)email{
    //Buscar el contexto de la base de datos
    
    //crear entity usuario
    
    //setear valores
    
    //guardar contexto
    
    //todo bie?
    
    return YES;
    
}

-(void)viewWillAppear:(BOOL)animated{
    //La vista está apunto de aparecer
    NSLog(@"La vista está apunto de aparecer");
}

-(void) viewDidAppear:(BOOL)animated{
    //La vista ya apareció
    NSLog(@"La vista ya apareció");
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tecladoAparece:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tecladoDesaparece:) name:UIKeyboardWillHideNotification object:nil];
}

-(void) tecladoAparece:(NSNotification *)laNotificacion{
    if(tecladoArriba){
        return;
    }
    [self ajustaScroll:YES conNotificacion:laNotificacion];
}

-(void) tecladoDesaparece:(NSNotification *)laNotificacion{
    [self ajustaScroll:NO conNotificacion:laNotificacion];
}

-(void)ajustaScroll:(BOOL)aumenta conNotificacion:
    (NSNotification *)laNotificacion{
    NSDictionary *info = laNotificacion.userInfo;
    NSValue *value = [info valueForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect frameDelTeclado = [value CGRectValue];
    CGSize tamanio = self.scv1.contentSize;
    if (aumenta) {
        tamanio.height += frameDelTeclado.size.height;
    }else{
        tamanio.height -= frameDelTeclado.size.height;
    }
    self.scv1.contentSize = tamanio;
    tecladoArriba = aumenta;
}

-(void)viewWillDisappear:(BOOL)animated{
    //la vista está apunto de desaparecer
}

-(void)viewDidDisappear:(BOOL)animated{
    //La vista ya desapareció
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)tapScroll:(id)sender {
    /*if([self.txf1 isFirstResponder])
        [self.txf1 resignFirstResponder];
    if([self.txf2 isFirstResponder])
        [self.txf2 resignFirstResponder];
    if([self.txf3 isFirstResponder])
        [self.txf3 resignFirstResponder];
    if([self.txf4 isFirstResponder])
        [self.txf4 resignFirstResponder];
    */
    ////Opcional
    
    for(UIView *unView in self.scv1.subviews){
        if([unView isKindOfClass:[UITextField class]]){
            if([((UITextField *)unView) isFirstResponder])
                [((UITextField *)unView) resignFirstResponder];
        }
    }
}
- (IBAction)btnTouch:(id)sender {
    
}
@end
