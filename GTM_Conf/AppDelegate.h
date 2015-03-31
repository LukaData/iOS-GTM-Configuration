//
//  AppDelegate.h
//  GTM_Conf
//
//  Created by Luka Cempre on 3/30/15.
//  Copyright (c) 2015 Luka Cempre. All rights reserved.
//

#import <UIKit/UIKit.h>



@class TAGManager;
@class TAGContainer;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) TAGManager *tagManager;
@property (nonatomic, strong) TAGContainer *container;

@property (strong, nonatomic) UIWindow *window;


@end

