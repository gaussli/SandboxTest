//
//  MainViewController.m
//  SandboxTest
//
//  Created by lijinhai on 12/2/14.
//  Copyright (c) 2014 gaussli. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 获得应用的Document文件夹位置路径
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSLog(@"documentPath:%@", [documentPaths objectAtIndex:0]);
    // 获得应用的Library文件夹位置路径
    NSArray *libraryPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSLog(@"libraryPath:%@", [libraryPaths objectAtIndex:0]);
    // 获得应用的Library/Caches文件夹位置路径
    NSArray *cachesPaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSLog(@"cachePath:%@", [cachesPaths objectAtIndex:0]);
    // 获得应用的Tmp文件夹位置路径
    NSString *tmpPath = NSTemporaryDirectory();
    NSLog(@"tmpPath:%@", tmpPath);
    
//    // 把数据写入文件
//    NSString *documentPath = [documentPaths objectAtIndex:0];
//    // 需要写入的数据（数组）
//    NSArray *dataArray = @[@"hello", @"world", @"你好"];
//    // 写入文件路径
//    NSString *document = [documentPath stringByAppendingPathComponent:@"data.txt"];
//    // 写入
//    [dataArray writeToFile:document atomically:YES];
//    NSString *document1 = [documentPath stringByAppendingPathComponent:@"data1.txt"];
//    // 写入（字符串）
//    [@"helloworld" writeToFile:document1 atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    // 从文件读取数据
    NSString *documentPath = [documentPaths objectAtIndex:0];
    // 文件路径
    NSString *document = [documentPath stringByAppendingPathComponent:@"data.txt"];
    // 文件路径1
    NSString *document1 = [documentPath stringByAppendingPathComponent:@"data1.txt"];
    // 读取
    NSArray *dataFromFile = [[NSArray alloc] initWithContentsOfFile:document];
    NSString *dataFromFile1 = [[NSString alloc] initWithContentsOfFile:document1 encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"数组数据：%@", dataFromFile);
    NSLog(@"字符串数据：%@", dataFromFile1);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
