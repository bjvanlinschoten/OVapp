//
//  ViewController.m
//  OVapp
//
//  Created by Boris van Linschoten on 21-04-15.
//  Copyright (c) 2015 bjvanlinschoten. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSData *data = [[NSData alloc] initWithContentsOfFile:@"/Users/bjvanlinschoten/Downloads/Xcode/OVapp/vehiclePositions.pb"];
    
    [GtfsRealtimeOvapiRoot initialize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
