//
//  FRHomeCollectionViewCell.m
//  Compass
//
//  Created by 尹锋 on 16/1/28.
//  Copyright © 2016年 heyuan110.com. All rights reserved.
//

#import "FRHomeCollectionViewCell.h"


@implementation FRHomeCollectionViewCell

+ (NSString *)reuseIdentifier {
    static NSString* s_reuseIdentifier = nil;
    if (!s_reuseIdentifier) {
        s_reuseIdentifier = NSStringFromClass([self class]);
    }
    return s_reuseIdentifier;
}

+ (UINib *)reuseNib {
    UINib* nib = [UINib nibWithNibName:[self reuseIdentifier] bundle:[NSBundle mainBundle]];
    return nib;
}

- (void)setHomeMarker:(NSDictionary *)homeMarker {
    _homeMarker = homeMarker;
    [self configHomeCollectionViewCell:homeMarker];
}

- (void) configHomeCollectionViewCell:(NSDictionary *)marker {
//    [self.markImageView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@%@", serverHost, marker.imageUrl]]];
    self.titleLabel.text = @"";
}

@end
