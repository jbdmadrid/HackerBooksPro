//
//  UIViewController+Navigation.m
//  Everpobre
//
//  Created by Juan Barba Díaz on 19/1/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

#import "UIViewController+Navigation.h"

@implementation UIViewController (Navigation)

-(UINavigationController *) wrappedInNavigation{
    //creamos el NavigationController
    
    UINavigationController *nav = [UINavigationController new];
    
    //lo encasquetamos
    [nav pushViewController:self
                   animated:NO];
    
    //lo devolvemos
    return nav;
}

@end
