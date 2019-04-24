#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()
@property int num1;
@property int num2;
@property int result;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _calculator=[Calculator new];
    _formatter = [NSNumberFormatter new];
    _formatter.numberStyle=NSNumberFormatterDecimalStyle;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addBtn:(UIButton *)sender {
    _num1=[[_numOneTF text] integerValue];
    _num2=[[_numTwoTF text] integerValue];
    _result=[_calculator add:_num1 :_num2];
    
    [_resultLabel setText:[NSString stringWithFormat:@"%d",_result] ];
    
}

- (IBAction)subBtn:(UIButton *)sender {
    _num1=[[_numOneTF text] integerValue];
    _num2=[[_numTwoTF text] integerValue];
    _result=[_calculator sub:_num1 :_num2];
    
    [_resultLabel setText:[NSString stringWithFormat:@"%d",_result] ];
}

- (IBAction)mulBtn:(UIButton *)sender {
    _num1=[[_numOneTF text] integerValue];
    _num2=[[_numTwoTF text] integerValue];
    _result=[_calculator mul:_num1 :_num2];
    
    [_resultLabel setText:[NSString stringWithFormat:@"%d",_result] ];
}

- (IBAction)divBtn:(UIButton *)sender {
    @try{
        _num1=[[_numOneTF text] integerValue];
        _num2=[[_numTwoTF text] integerValue];
        _result=[_calculator div:_num1 :_num2];
        
        [_resultLabel setText:[NSString stringWithFormat:@"%d",_result] ];
        
    }
    @catch(NSException *ex){
        [_resultLabel setText:@"error"];
        
    }
}
@end
