//
//  BodyView.h
//  PainMe
//
//  Created by Garrett Christopher on 6/25/12.
//  Copyright (c) 2012 ZWorkbench, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BODY_TILE_COLUMNS 8
#define BODY_TILE_ROWS 17
#define BODY_TILE_SIZE 1024

#define BODY_VIEW_WIDTH (BODY_TILE_COLUMNS*BODY_TILE_SIZE)
#define BODY_VIEW_HEIGHT (BODY_TILE_ROWS*BODY_TILE_SIZE)

@interface BodyView : UIView{

    BOOL notdrawn; 
}


-(void)renderPainForBodyPartPath:(UIBezierPath *)path;
@end
