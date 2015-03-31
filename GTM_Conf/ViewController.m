//
//  ViewController.m
//  GTM_Conf
//
//  Created by Luka Cempre on 3/30/15.
//  Copyright (c) 2015 Luka Cempre. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TAGContainer.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingsText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    TAGContainer *container = appDelegate.container;
    [container refresh];

    self.greetingsText.text = [container stringForKey:(@"greetings")];

    NSString *alignment = [container stringForKey:(@"greetings-alignment")];
    if ( [alignment isEqualToString:@"left"])
        self.greetingsText.textAlignment = NSTextAlignmentLeft;
    else if([alignment isEqualToString:@"right"])
        self.greetingsText.textAlignment = NSTextAlignmentRight;
    else
        self.greetingsText.textAlignment = NSTextAlignmentCenter;


}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
