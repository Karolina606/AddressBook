#import <Foundation/Foundation.h>

@interface AddressCard: NSObject{
    NSString * name;
    NSString * email;
}

@property (copy, nonatomic) NSString * name, * email;

//  setters
-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;

//  getters
-(NSString *) name;
-(NSString *) email;

// other
-(void) print;

@end
