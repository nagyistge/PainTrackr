//
//  InvoBodyPartDetails.m
//  PainTrackr
//
//  Created by Dhaval Karwa on 8/10/12.
//  Copyright (c) 2012 InvolutionStudios. All rights reserved.
//

#import "InvoBodyPartDetails.h"

@interface InvoBodyPartDetails ()

-(id)initWithShape:(UIBezierPath *)shapePts color:(UIColor *)shpColor zoomLevel:(int)level name:(NSString *)nme orientation:(int)side;
-(id)initWithShape:(UIBezierPath *)shapePts name:(NSString *)pName zoomLevel:(int)level orientation:(int)side;

@end

@implementation InvoBodyPartDetails

+(InvoBodyPartDetails *)invoBodyPartWithShape:(UIBezierPath *)shape color:(UIColor *)color zoomLevel:(int)zmLevel name:(NSString *)nme orientation:(int)side{

    return [[self alloc] initWithShape:[shape copy] color:color zoomLevel:zmLevel name:[nme copy] orientation:side];
}


+(InvoBodyPartDetails *)invoBodyPartWithShape:(UIBezierPath *)shape name:(NSString *)nme zoomLevel:(int)zmLevel orientation:(int)side{
    
    return [[self alloc] initWithShape:[shape copy] name:[nme copy] zoomLevel:zmLevel orientation:side];
}


-(id)initWithShape:(UIBezierPath *)shapePts color:(UIColor *)shpColor zoomLevel:(int)level name:(NSString *)name orientation:(int)side{

    self = [super init];
    if (self) {
    
        _partShapePoints = [shapePts copy];
        _partShapePoints.lineJoinStyle = kCGLineJoinRound;
        _shapeColor = shpColor;
        _zoomLevel = level;
        _partName = [name copy];
        _orientation = side;
    }
    return self;
}

-(id)initWithShape:(UIBezierPath *)shapePts name:(NSString *)pName zoomLevel:(int)level orientation:(int)side{

    self = [super init];
    if (self) {
        
        _partShapePoints = [shapePts copy];
        _shapeColor = nil;
        _zoomLevel = level;
        _partName = [pName copy];
        _orientation = side;
    }
    return self;
}

@end
