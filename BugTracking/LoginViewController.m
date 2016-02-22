//
//  LoginViewController.m
//  BugTracking
//
//  Created by Fancy on 16/2/19.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *usernameTf;

@property (weak, nonatomic) IBOutlet UITextField *passwordTf;
- (IBAction)login:(id)sender;

- (IBAction)register:(id)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"加载了LoginViewController视图");
   
    
    
 //自定义view
/*
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:1.0 blue:1.0 alpha:1.0];
    
    //------------------标题头-------------------
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(145, 92,100 ,21)];
    self.titleLabel.text = TITLE_TEXT;//设置标题
    self.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.titleLabel.textAlignment = NSTextAlignmentLeft;
    self.titleLabel.textColor = [UIColor blueColor];
    [self.view addSubview:self.titleLabel];//加入到视图
    
    //------------------姓名label------------------------
    self.userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,171,42,21)];
    self.userNameLabel.text = USERNAME_TEXT;
    self.userNameLabel.adjustsFontSizeToFitWidth = YES;
    self.userNameLabel.textColor = [UIColor blueColor];
    [self.view addSubview:self.userNameLabel];
    
    //-------------------密码label-------------------------
    
    self.userPwdLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,246,42,21)];
    self.userPwdLabel.text = USERPWD_TEXT;
    self.userPwdLabel.adjustsFontSizeToFitWidth = YES;
    self.userPwdLabel.textColor = [UIColor blueColor];
    [self.view addSubview:self.userPwdLabel];
    
    
    //--------------------姓名textfield-----------------------
    self.userNameTf = [[UITextField alloc] initWithFrame:CGRectMake(117, 167, 164, 30)];
    self.userNameTf.delegate = self;
    self.userNameTf.layer.cornerRadius = 2.0;
    self.userNameTf.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.userNameTf.layer.shadowOffset= CGSizeMake(0, 1);
    self.userNameTf.layer.backgroundColor = [[UIColor brownColor] CGColor];
    self.userNameTf.placeholder = USERNAME_PLACEHOLDER;
    self.userNameTf.textAlignment = NSTextAlignmentLeft;
    self.userNameTf.textColor = [UIColor blueColor];
    [self.view addSubview:self.userNameTf];
    
    //---------------------密码textfield----------------------
    
    self.userPwdTf = [[UITextField alloc] initWithFrame:CGRectMake(117, 237, 164, 30)];
    self.userPwdTf.delegate = self;
    self.userPwdTf .layer.cornerRadius = 2.0;
    self.userPwdTf .placeholder = USERPWD_PLACEHOLDER;
    self.userPwdTf.layer.backgroundColor = [[UIColor brownColor] CGColor];
    self.userPwdTf .textAlignment = NSTextAlignmentLeft;
    self.userPwdTf .textColor = [UIColor blueColor];
    [self.view addSubview:self.userPwdTf];
    
    //---------------------登陆按钮---------------------------------
    
    
    self.loginButton = [[ UIButton alloc ]initWithFrame:CGRectMake(98, 313, 46, 30)];
    [self.loginButton setImage:[ UIImage imageNamed:LOGIN_BUTTON_PICTURE_HIGHLIGT] forState:UIControlStateNormal];
    [self.loginButton setImage:[UIImage imageNamed:LOGIN_BUTTON_PICTURE] forState:UIControlStateHighlighted];
    [self.loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.loginButton];
    
    
    //-----------------------注册按钮--------------------------------
    self.registerButton = [[UIButton alloc] initWithFrame:CGRectMake(227, 313, 60, 30)];
    self.registerButton.layer.backgroundColor =[[UIColor brownColor]CGColor];
    [self.registerButton setTitle:REGISTER_WORD forState:UIControlStateNormal];
    [self.registerButton addTarget:self action:@selector(register) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.registerButton];
    
    
*/
    
    
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{

  //  [textField resignFirstResponder];

}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;

}

    // Do any additional setup after loading the view.


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

- (IBAction)login:(id)sender {
}

- (IBAction)register:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"register"];
    [self.navigationController pushViewController:viewController animated:YES];
    
}


@end
