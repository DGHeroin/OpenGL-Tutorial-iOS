//
//  OpenGLView.m
//  helloworld
//
//  Created by ade.li on 16/6/27.
//  Copyright © 2016年 ade. All rights reserved.
//

#import "OpenGLView.h"

@implementation OpenGLView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(Class) layerClass{
    return CAEAGLLayer.class;
}

-(void) create{
    // 1. 创建OpenGL EAGLContext
    self.context = [[EAGLContext alloc ] initWithAPI:kEAGLRenderingAPIOpenGLES3];
    if (self.context == nil){
        NSLog(@"OpenGLView Create Failed.");
        return ;
    }
    [EAGLContext setCurrentContext:self.context];
    
    // 2. 输出OpenGL信息
    NSLog(@"\n"
          "Vendor:%s\n"
          "Renderer:%s\n"
          "ES Version:%s\n"
          "Extention:%s\n"
          ,glGetString(GL_VENDOR)
          ,glGetString(GL_RENDERER)
          ,glGetString(GL_VERSION)
          ,glGetString(GL_EXTENSIONS)
          );
    
    // 创建 render buffer
    GLuint renderbuffer;
    glGenRenderbuffers(1, &renderbuffer);
    glBindRenderbuffer(GL_RENDERBUFFER, renderbuffer);
    [self.context renderbufferStorage:GL_RENDERBUFFER fromDrawable:(CAEAGLLayer*) self.layer];
    
    // 创建 frame buffer
    GLuint framebuffer;
    glGenFramebuffers(1, &framebuffer);
    glBindFramebuffer(GL_FRAMEBUFFER, framebuffer);
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_RENDERBUFFER, renderbuffer);
}

- (void) render{
    glClearColor( 0.5f, 0.5f, 0.5f, 1.0f );
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    
    [self.context presentRenderbuffer:GL_RENDERBUFFER];
}

@end
