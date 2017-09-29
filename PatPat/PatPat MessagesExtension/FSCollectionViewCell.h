//
//  FSCollectionViewCell.h
//  PatPat MessagesExtension
//
//  Created by patpat on 2017/9/28.
//  Copyright © 2017年 patpat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *productPrice;

@property (strong, nonatomic) NSDictionary *product;

+ (NSString *)reuseIdentifier;
+ (UINib *)reuseNib;
@end
