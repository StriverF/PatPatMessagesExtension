//
//  FSCollectionViewCell.m
//  PatPat MessagesExtension
//
//  Created by patpat on 2017/9/28.
//  Copyright © 2017年 patpat. All rights reserved.
//

#import "FSCollectionViewCell.h"

@implementation FSCollectionViewCell

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


- (void)setProduct:(NSDictionary *)product {
    _product = product;
    [self configProductCell:product];
}

- (void) configProductCell:(NSDictionary *)product {
    self.imageView.image = [UIImage imageNamed:product[@"product_image"]];
    self.productName.text = product[@"product_name"];
    self.productPrice.text = product[@"product_price"];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}



@end
