//
//  ViewController.m
//  VLC Example
//
//  Created by Onur Tuna on 13/09/16.
//  Copyright © 2016 onurtuna. All rights reserved.
//

#import "ViewController.h"
#import "MobileVLCKit/MobileVLCKit.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *videoView; // This videoView is the main view in the .xib file
@property VLCMediaPlayer *mediaPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _mediaPlayer = [[VLCMediaPlayer alloc] init];
    _mediaPlayer.drawable = _videoView;
    
    _mediaPlayer.media = [VLCMedia mediaWithURL:[NSURL URLWithString:@"rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov"]];
    [_mediaPlayer play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
