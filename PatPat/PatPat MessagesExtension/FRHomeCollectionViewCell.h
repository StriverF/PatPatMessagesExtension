//
//  FRHomeCollectionViewCell.h
//  Compass
//
//  Created by 尹锋 on 16/1/28.
//  Copyright © 2016年 heyuan110.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FRHomeCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *markImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) NSDictionary *homeMarker;

+ (NSString *)reuseIdentifier;
+ (UINib *)reuseNib;

@end
