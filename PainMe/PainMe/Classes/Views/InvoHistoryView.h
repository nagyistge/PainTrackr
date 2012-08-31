//
//  InvoHistoryView.h
//  PainTrackr
//
//  Created by Dhaval Karwa on 8/30/12.
//  Copyright (c) 2012 InvolutionStudios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InvoHistoryView : UIView
@property (nonatomic, retain)UIImage *imgRet;

- (id)initWithFrame:(CGRect)frame locations:(NSArray *)shapesDict;

@end
