

#import "NavBarCategory.h"

@implementation UINavigationBar (CustomBackground)

- (void)drawRect:(CGRect)rect {
    UIImage *image = [UIImage imageNamed: @"nav.png"];
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}

@end