//
//  ESTViewController.m
//  Fly Proximities
//
//  Created by Fly on 5/11/15.
//  Copyright (c) 2015 ___FlyInc___. All rights reserved.
//

#import "ESTViewController.h"
#import "ESTBeaconTableVC.h"
#import "ESTProximityDemoVC.h"


@interface ESTDemoTableViewCell : UITableViewCell

@end

@implementation ESTDemoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self)
    {
        
    }
    
    return self;
}

@end

@implementation ESTViewController

-(void) viewDidLoad{
    
    [super viewDidLoad];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    self.title = @"Fly Proximities";
    
    self.tableView.sectionHeaderHeight = 20;
    [self.tableView registerClass:[ESTDemoTableViewCell class] forCellReuseIdentifier:@"DemoCellIdentifier"];
    
    
    
    UIViewController *demoViewController = [[ESTBeaconTableVC alloc] initWithScanType:ESTScanTypeBeacon
                                                         completion:^(CLBeacon *beacon) {
                                                             
                                                             ESTProximityDemoVC *proximityDemoVC = [[ESTProximityDemoVC alloc] initWithBeacon:beacon];
                                                             [self.navigationController pushViewController:proximityDemoVC animated:YES];
                                                         }];
    
    [self.navigationController pushViewController:demoViewController animated:YES];
}

@end
