//
//  MessagesViewController.m
//  PatPat MessagesExtension
//
//  Created by patpat on 2017/9/28.
//  Copyright © 2017年 patpat. All rights reserved.
//

#import "MessagesViewController.h"
#import "FSCollectionViewCell.h"

@interface MessagesViewController ()
@property (nonatomic, strong)NSArray *dataSource;
@end

@implementation MessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = @[
                        @{@"product_name": @"Stand Collar Long-sleeve Pink Dress for Little Girls",
                          @"product_image": @"1500983035",
                          @"product_price": @"$14.99",
                          @"product_url": @"https://www.patpat.com/product/Stand-Collar-Long-sleeve-Pink-Dress-for-Little-Girls.html"
                          },
                        @{@"product_name": @"'LITTLE ANGLE' Polka Dotted Mesh Skirted Jumpsuit for Baby and Newborn",
                          @"product_image": @"1501321961",
                          @"product_price": @"$16.99",
                          @"product_url": @"https://www.patpat.com/product/LITTLE-ANGLE-Polka-Dotted-Mesh-Skirted-Jumpsuit-for-Baby-and-Newborn.html"
                          },
                        @{@"product_name": @"Lovely Strap Antiskid Shoes for Baby and Toddler",
                          @"product_image": @"1502943851",
                          @"product_price": @"$18.99",
                          @"product_url": @"https://www.patpat.com/product/Lovely-Strap-Antiskid-Shoes-for-Baby-and-Toddler.html"
                          },
                        @{@"product_name": @"Comfy Deer Fleece-lined Coat for Baby",
                          @"product_image": @"1504337412",
                          @"product_price": @"$28.99",
                          @"product_url": @"https://www.patpat.com/product/Comfy-Deer-Fleece-lined-Coat-for-Baby.html"
                          },
                        @{@"product_name": @"Adorable Polka Dots Mesh-layered Long-sleeve Dress and Flower Bag for Girls",
                          @"product_image": @"1504860704",
                          @"product_price": @"$12.99",
                          @"product_url": @"https://www.patpat.com/product/Adorable-Polka-Dots-Mesh-layered-Long-sleeve-Dress-and-Flower-Bag-for-Girls.html"
                          },
                        @{@"product_name": @"Stylish Colorful Stripes Jacket for Baby Boys",
                          @"product_image": @"1505643396",
                          @"product_price": @"$11.88",
                          @"product_url": @"https://www.patpat.com/product/Stylish-Colorful-Stripes-Jacket-for-Baby-Boys.html"
                          },
                        @{@"product_name": @"Stand Collar Long-sleeve Pink Dress for Little Girls",
                          @"product_image": @"1500983035",
                          @"product_price": @"$14.99",
                          @"product_url": @"https://www.patpat.com/product/Stand-Collar-Long-sleeve-Pink-Dress-for-Little-Girls.html"
                          },
                        @{@"product_name": @"'LITTLE ANGLE' Polka Dotted Mesh Skirted Jumpsuit for Baby and Newborn",
                          @"product_image": @"1501321961",
                          @"product_price": @"$16.99",
                          @"product_url": @"https://www.patpat.com/product/LITTLE-ANGLE-Polka-Dotted-Mesh-Skirted-Jumpsuit-for-Baby-and-Newborn.html"
                          },
                        @{@"product_name": @"Lovely Strap Antiskid Shoes for Baby and Toddler",
                          @"product_image": @"1502943851",
                          @"product_price": @"$18.99",
                          @"product_url": @"https://www.patpat.com/product/Lovely-Strap-Antiskid-Shoes-for-Baby-and-Toddler.html"
                          },
                        @{@"product_name": @"Comfy Deer Fleece-lined Coat for Baby",
                          @"product_image": @"1504337412",
                          @"product_price": @"$28.99",
                          @"product_url": @"https://www.patpat.com/product/Comfy-Deer-Fleece-lined-Coat-for-Baby.html"
                          },
                        @{@"product_name": @"Adorable Polka Dots Mesh-layered Long-sleeve Dress and Flower Bag for Girls",
                          @"product_image": @"1504860704",
                          @"product_price": @"$12.99",
                          @"product_url": @"https://www.patpat.com/product/Adorable-Polka-Dots-Mesh-layered-Long-sleeve-Dress-and-Flower-Bag-for-Girls.html"
                          },
                        @{@"product_name": @"Stylish Colorful Stripes Jacket for Baby Boys",
                          @"product_image": @"1505643396",
                          @"product_price": @"$11.88",
                          @"product_url": @"https://www.patpat.com/product/Stylish-Colorful-Stripes-Jacket-for-Baby-Boys.html"
                          }
                        ];
    
    [self.collectionView registerNib:[FSCollectionViewCell reuseNib] forCellWithReuseIdentifier:[FSCollectionViewCell reuseIdentifier]];
    NSLog(@"无语");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Conversation Handling

-(void)didBecomeActiveWithConversation:(MSConversation *)conversation {
    // Called when the extension is about to move from the inactive to active state.
    // This will happen when the extension is about to present UI.
    
    // Use this method to configure the extension and restore previously stored state.
}

-(void)willResignActiveWithConversation:(MSConversation *)conversation {
    // Called when the extension is about to move from the active to inactive state.
    // This will happen when the user dissmises the extension, changes to a different
    // conversation or quits Messages.
    
    // Use this method to release shared resources, save user data, invalidate timers,
    // and store enough state information to restore your extension to its current state
    // in case it is terminated later.
}

-(void)didReceiveMessage:(MSMessage *)message conversation:(MSConversation *)conversation {
    // Called when a message arrives that was generated by another instance of this
    // extension on a remote device.
    
    // Use this method to trigger UI updates in response to the message.
}

-(void)didStartSendingMessage:(MSMessage *)message conversation:(MSConversation *)conversation {
    // Called when the user taps the send button.
}

-(void)didCancelSendingMessage:(MSMessage *)message conversation:(MSConversation *)conversation {
    // Called when the user deletes the message without sending it.
    
    // Use this to clean up state related to the deleted message.
}


-(void)willTransitionToPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle {
    // Called before the extension transitions to a new presentation style.
    
    // Use this method to prepare for the change in presentation style.
}

-(void)didTransitionToPresentationStyle:(MSMessagesAppPresentationStyle)presentationStyle {
    // Called after the extension transitions to a new presentation style.
    
    // Use this method to finalize any behaviors associated with the change in presentation style.
}


#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    FSCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[FSCollectionViewCell reuseIdentifier] forIndexPath:indexPath];
    cell.product = self.dataSource[indexPath.row];
    return cell;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *product = self.dataSource[indexPath.row];
    MSMessage *message = [[MSMessage alloc] initWithSession:[[MSSession alloc] init]];
    message.URL = [NSURL URLWithString:product[@"product_url"]];
    message.accessibilityLabel = @"patpat message";
    message.summaryText = @"message";
    MSMessageTemplateLayout * layout = [[MSMessageTemplateLayout alloc]init];
    layout.caption = product[@"product_name"];
    layout.subcaption = @"The goods your friend bought";
//    layout.trailingCaption = @"trailing";
//    layout.trailingSubcaption =@"subtrailing";
    UIImage *image = [UIImage imageNamed:product[@"product_image"]];
    layout.image = image;
    layout.imageTitle = product[@"product_price"];
    layout.imageSubtitle = @"Discount 80%";
    message.layout = layout;
    [self.activeConversation insertMessage:message completionHandler:^(NSError * _Nullable error) {
        
    }];
    [self requestPresentationStyle:MSMessagesAppPresentationStyleCompact];
}

@end
