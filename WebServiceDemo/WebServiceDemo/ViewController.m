//
//  ViewController.m
//  WebServiceDemo
//
//  Created by JETS Mobile Lab - 5 on 4/22/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableData *dataRecived;
    NSString *name;
    NSString *phone;
    NSString *webServiceString;
}
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
- (IBAction)regBtn:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    webServiceString=@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=yourName&phone=yourPhone";
}


- (IBAction)regBtn:(UIButton *)sender {
    name= [_nameTF text];
    phone= [_phoneTF text];
    [webServiceString stringByReplacingOccurrencesOfString:@"yourPhone" withString:phone];
    [webServiceString stringByReplacingOccurrencesOfString:@"yourName" withString:phone];
    
    NSURL *url=[[NSURL alloc]initWithString:webServiceString];
    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc]initWithRequest:request delegate:self];
    [connection start];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceieveResponse\n");
    dataRecived=[NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    NSString *str=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding ];
    [dataRecived appendData:data];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("error!!");
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{

    NSDictionary *dec=[NSJSONSerialization JSONObjectWithData:dataRecived options:NSJSONReadingAllowFragments error:nil];
    NSLog(@"%@",[dec objectForKey:@"status"]);
    if([[dec objectForKey:@"status"]isEqualToString:@"FAILING"]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"" delegate:self cancelButtonTitle:@"Try Again" otherButtonTitles:@"ok", nil];
        
        [alert show];
        
    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==1){
        
    }else if(buttonIndex==0){
        [_nameTF setText:@""];
        [_phoneTF setText:@""];
    }
}
@end
