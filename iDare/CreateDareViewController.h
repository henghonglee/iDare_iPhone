//
//  CreateDareViewController.h
//  iDare
//
//  Created by Shaun Tan on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateDareViewController : UIViewController <UIImagePickerControllerDelegate,UITextFieldDelegate> {
    
    IBOutlet UITextField *dareTitleTextField;
    IBOutlet UITextField *dareDescriptionTextField;

    IBOutlet UITextField *amountTextField;
}



@end
