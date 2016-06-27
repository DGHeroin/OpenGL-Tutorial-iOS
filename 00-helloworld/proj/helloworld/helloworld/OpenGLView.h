//
//  OpenGLView.h
//  helloworld
//
//  Created by ade.li on 16/6/27.
//  Copyright © 2016年 ade. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES3/gl.h>

@interface OpenGLView : UIView

- (void) create;
- (void) render;

+(Class) layerClass;

@property(nonatomic, retain) EAGLContext* context;

@end