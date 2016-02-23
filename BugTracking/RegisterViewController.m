//
//  RegisterViewController.m
//  BugTracking
//
//  Created by Fancy on 16/2/20.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "RegisterViewController.h"
#import "userDao.h"
#import "User.h"

@interface RegisterViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *usernameTf;                           //姓名栏
@property (weak, nonatomic) IBOutlet UITextField *passwordTf;                           //密码栏
@property (weak, nonatomic) IBOutlet UITextField *nicknameTf;                           //昵称栏
@property (weak, nonatomic) IBOutlet UITextField *mobilephoneTf;                        //手机栏
- (IBAction)uploadUserData:(id)sender;
- (IBAction)backToLoginView:(id)sender;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.usernameTf.delegate = self ;
    self.passwordTf.delegate = self ;
    self.nicknameTf.delegate = self ;
    self.mobilephoneTf.delegate = self;
    NSLog(@"加载了RegisterViewController视图");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma 上传用户注册数据
- (IBAction)uploadUserData:(id)sender {
    
    userDao *userdao =[[userDao alloc] init];
    User    *user    = [[User alloc]initWithName:self.usernameTf.text Password:self.passwordTf.text NickName:self.nicknameTf.text Mobile:self.mobilephoneTf.text];
    if ([self.usernameTf.text isEqualToString:@""] ==YES) {
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"警告" message:@"姓名栏为空，请输入" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [view show];
    }
    else if ([self.passwordTf.text isEqualToString:@""] ==YES)
    {
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"警告" message:@"密码栏为空，请输入" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [view show];
    
    }
    else if([self.nicknameTf.text isEqualToString:@""] ==YES)
    {
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"警告" message:@"昵称栏为空，请输入" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [view show];

    
    
    }
    else if([self.mobilephoneTf.text isEqualToString:@""] ==YES)
    {
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"警告" message:@"手机栏为空，请输入" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [view show];
        
    }
    else{
   BOOL result = [userdao insertUser:user];
    if (result ==YES) {
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"成功提示" message:@"用户注册成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [view show];
        [self.navigationController popViewControllerAnimated:YES];
        
    }
    
    else
    {
        UIAlertView *view = [[UIAlertView alloc]initWithTitle:@"错误提示" message:@"用户注册失败" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [view show];
    
    }
    
  
    }
    
}

- (bool)textFieldShouldReturn:(UITextField *)textField
{

    [textField resignFirstResponder];
    return YES;

}

- (IBAction)backToLoginView:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
}
@end
