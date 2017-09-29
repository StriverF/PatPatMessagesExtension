//
//  MessagesViewController.h
//  PatPat MessagesExtension
//
//  Created by patpat on 2017/9/28.
//  Copyright © 2017年 patpat. All rights reserved.
//

#import <Messages/Messages.h>

@interface MessagesViewController : MSMessagesAppViewController
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
