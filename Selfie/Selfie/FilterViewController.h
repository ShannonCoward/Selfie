//
//  ViewController.h
//  TakeASelfie
//
//  Created by Shannon Armon on 6/3/15.
//  Copyright (c) 2015 Shannon Armon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterViewController : UIViewController

@property (nonatomic) UIImage * original;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIImageView *unFilteredImageView;

@end

