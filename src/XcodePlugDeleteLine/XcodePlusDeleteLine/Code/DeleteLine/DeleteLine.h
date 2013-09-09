//
// DeleteLine.h
// XcodePlus Delete Line
//
// Created by Pay Liu on 13/9/9.
// Copyright (c) 2013年 Octalord Information Inc. The MIT License.
//

@interface DeleteLine : NSObject

@property (nonatomic, assign) NSRange selectedLineRange;
@property (nonatomic, retain) NSTextView *currentTextView;

@end