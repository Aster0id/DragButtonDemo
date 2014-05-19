//
//  UIButton+NMCategory.h
//  
//
//  Created by Aster0id on 14-5-16.
//  Copyright (c) 2014年 Self.牛萌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (NMCategory)

@property(nonatomic,assign,getter = isDragEnable)   BOOL dragEnable;
@property(nonatomic,assign,getter = isAdsorbEnable) BOOL adsorbEnable;

@end
