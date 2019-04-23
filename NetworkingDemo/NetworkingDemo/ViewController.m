//
//  ViewController.m
//  NetworkingDemo
//
//  Created by JETS Mobile Lab - 5 on 4/22/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)synchBtn:(UIButton *)sender;
- (IBAction)asynchBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController
{
    NSMutableString *dataRecived;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)synchBtn:(UIButton *)sender {
    NSURL *url=[NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSString *str=[[NSString alloc]initWithContentsOfURL:url usedEncoding:NSUTF8StringEncoding error:nil];
   
    [_textView setText:str];
}


- (IBAction)asynchBtn:(UIButton *)sender {
    NSURL *url= [NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSURLRequest *request= [[NSURLRequest alloc]initWithURL:url];
    NSURLConnection *connection= [[NSURLConnection alloc]initWithRequest:request delegate:self];
    [connection start];
    [_webView loadRequest:request];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceieveResponse");
     dataRecived=[NSMutableString new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    NSString *str=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding ];
    [dataRecived appendString:str];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("error!!");
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
   
}
@end
