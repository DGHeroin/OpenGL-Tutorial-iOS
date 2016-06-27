# OpenGL教程iOS

#说明
这系列是iOS OpenGL ES3的简单教程。
本文内容思路借鉴于Apple的\<OpenGL ES Programming Guide for iOS\>

本文不会讲述太多远古时代OpenGL API，我们应尽量使用现代的GLSL。

# 介绍
OpenGL ES全程是OpenGL for Embedded Systems.

OpenGL ES的架构如下，CPU端负责数据的控制，通过OpenGL ES framework和GPU进行沟通。Client提交数据给Server, 图形硬件再负责把数据绘制出来。

![](md/cpu_gpu_2x.png)