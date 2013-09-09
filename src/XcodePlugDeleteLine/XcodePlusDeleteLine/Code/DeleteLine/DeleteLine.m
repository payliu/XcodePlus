//
// DeleteLine.h
// XcodePlus Delete Line
//
// Created by Pay Liu on 13/9/9.
// Copyright (c) 2013年 Octalord Information Inc. The MIT License.
//

#import "DeleteLine.h"

@interface DeleteLine ()

@property (nonatomic, retain) NSString *deletedText;

@end

#import <AppKit/AppKit.h>

@implementation DeleteLine

- (void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [_currentTextView release];
    [_deletedText release];
    [super dealloc];
}

+ (void) pluginDidLoad:(NSBundle *)plugin
{
    static id shared = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        shared = [[self alloc] init];
    });
}

- (id) init
{
    self = [super init];
    
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidFinishLaunching:)
                                                     name:NSApplicationDidFinishLaunchingNotification
                                                   object:nil];
        
    }
    
    return self;
}

- (void) applicationDidFinishLaunching:(NSNotification *)notification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(selectionDidChange:) name:NSTextViewDidChangeSelectionNotification object:nil];
    
    NSMenuItem *editMenuItem = [[NSApp mainMenu] itemWithTitle:@"Edit"];
    
    if (editMenuItem) {
        [[editMenuItem submenu] addItem:[NSMenuItem separatorItem]];
        
        NSMenuItem *newMenuItem = [[NSMenuItem alloc] initWithTitle:@"Delete Line" action:@selector(deleteLine:) keyEquivalent:@"d"];
        
        [newMenuItem setTarget:self];
        [newMenuItem setKeyEquivalentModifierMask:NSControlKeyMask];
        [[editMenuItem submenu] addItem:newMenuItem];
        [newMenuItem release];
    }
}

- (void) selectionDidChange:(NSNotification *)notification
{
    if ([[notification object] isKindOfClass:[NSTextView class]]) {
        
        self.currentTextView = (NSTextView *)[notification object];
        
        NSArray *selectedRanges = [self.currentTextView selectedRanges];
        
        if (selectedRanges.count == 0) {
            return;
        }
        
        NSRange selectedRange = [[selectedRanges objectAtIndex:0] rangeValue];
        
        self.selectedLineRange = [self.currentTextView.textStorage.string lineRangeForRange:selectedRange];
        
        self.deletedText = [self.currentTextView.textStorage.string substringWithRange:self.selectedLineRange];
    }
}

- (void) showMessageBox:(NSString *)text
{
    NSAlert *alert = [[[NSAlert alloc] init] autorelease];
    
    [alert setMessageText:text];
    [alert runModal];
}

- (void) deleteLine:(id)sender
{
    // [self showMessageBox:self.deletedText];
    
    if ([self.currentTextView shouldChangeTextInRange:self.selectedLineRange replacementString:@""]) {
        
        [self.currentTextView.textStorage replaceCharactersInRange:self.selectedLineRange
                                              withAttributedString:[[[NSAttributedString alloc] initWithString:@""] autorelease]];
        
        [self.currentTextView didChangeText];
    }
}

@end
