//
//  ViewController.m
//  UITextView的使用
//
//  Created by didi on 2019/12/15.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITextView *textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100) textContainer:nil];
    //设置文字
    textView.text = @"这是复制的一段文字：侠客行\
    [唐] 李白\
    赵客缦胡缨，吴钩霜雪明。银鞍照白马，飒沓如流星。\
    十步杀一人，千里不留行。事了拂衣去，深藏身与名。\
    闲过信陵饮，脱剑膝前横。将炙啖朱亥，持觞劝侯嬴。\
    三杯吐然诺，五岳倒为轻。眼花耳热后，意气素霓生。\
    救赵挥金槌，邯郸先震惊。千秋二壮士，煊赫大梁城。\
    纵死侠骨香，不惭世上英。谁能书閤下，白首太玄经。\
    https://blog.csdn.net/Void_leng";
    //设置字体大小和颜色
    textView.font = [UIFont italicSystemFontOfSize:17];
    textView.textColor = [UIColor orangeColor];
    //设置文字对齐方式
    textView.textAlignment = NSTextAlignmentLeft;
    //设置是否可以编辑
    textView.editable = NO;//(识别文本类型的时候，必须关闭可编辑，例如：识别超链接)
    //设置是否识别超链接
    textView.dataDetectorTypes = UIDataDetectorTypeAll;
    /**
     UIDataDetectorTypePhoneNumber                                        = 1 << 0, // Phone number detection
     UIDataDetectorTypeLink                                               = 1 << 1, // URL detection
     UIDataDetectorTypeAddress API_AVAILABLE(ios(4.0))                 = 1 << 2, // Street address detection
     UIDataDetectorTypeCalendarEvent API_AVAILABLE(ios(4.0))           = 1 << 3, // Event detection
     UIDataDetectorTypeShipmentTrackingNumber API_AVAILABLE(ios(10.0)) = 1 << 4, // Shipment tracking number detection
     UIDataDetectorTypeFlightNumber API_AVAILABLE(ios(10.0))           = 1 << 5, // Flight number detection
     UIDataDetectorTypeLookupSuggestion API_AVAILABLE(ios(10.0))       = 1 << 6, // Information users may want to look up

     UIDataDetectorTypeNone          = 0,               // Disable detection
     UIDataDetectorTypeAll           = NSUIntegerMax    // Enable all types, including types that may be added later
     */
    //设置边框
    textView.layer.borderWidth = 5;
    textView.layer.borderColor = [UIColor blackColor].CGColor;
    
    [self.view addSubview:textView];
    
}


@end
