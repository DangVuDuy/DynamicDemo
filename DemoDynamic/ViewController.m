//
//  ViewController.m
//  DemoDynamic
//
//  Created by Duy Dang on 12/14/15.
//  Copyright © 2015 Duy Dang. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *animalpicture;
@property (weak, nonatomic) IBOutlet UIButton *buttonanimal;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@interface Cat : NSObject

@end

@implementation Cat
- (void) say {
    NSLog(@"Meo meo");
}
@end

@interface Dog : NSObject
@end

@implementation Dog
- (void) say {
    NSLog(@"Gau Gau");
}
@end

@interface Mouse : NSObject
@end

@implementation Mouse
- (void) say {
    NSLog(@"Chit Chit");
}
@end
@interface Tiger : NSObject
@end

@implementation Tiger
- (void) say {
    NSLog(@"Roam Roam");
}
@end
@implementation ViewController

- (void)viewDidLoad {
    
}
- (IBAction)CallAnimal:(id)sender {
    NSString* animal = self.textField.text;
    Class class = NSClassFromString(animal);
    if (class == [Cat class] ) {
        self.animalpicture.image = [UIImage imageNamed:@"Cat"];
    }else if (class == [Dog class]) {
        self.animalpicture.image = [UIImage imageNamed:@"Dog"];
    }else if (class == [Mouse class]) {
        self.animalpicture.image = [UIImage imageNamed:@"Mouse"];
    }else if (class == [Tiger class]) {
        self.animalpicture.image = [UIImage imageNamed:@"Tiger"];
    }else
        self.animalpicture.image = [UIImage imageNamed:@"Error"];
    
    
}


@end

