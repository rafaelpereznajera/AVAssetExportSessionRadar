//
//  ViewController.m
//  AVAssetExportSessionRadar
//
//  Created by rafa perez on 23/09/2016.
//  Copyright © 2016 rafa perez. All rights reserved.
//

#import "ViewController.h"
@import AVFoundation;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSURL *inputURL = [[NSBundle mainBundle] URLForResource: @"example" withExtension:@"m4a"];
    AVURLAsset *assetAV = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    AVAssetExportSession *exportSession = [[AVAssetExportSession alloc] initWithAsset:assetAV presetName:AVAssetExportPresetAppleM4A];
    NSAssert(exportSession != nil, @"AVAssetExportSession must not be nil");
    
}

@end
