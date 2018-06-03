#import "AddressCard.h"

@implementation AddressCard;
@synthesize name, email;

//  setters
-(void) setName: (NSString *) theName{
if(name != theName){
    [name release];
    name = [[NSString alloc] initWithString: theName];
} 
}
-(void) setEmail: (NSString *) theEmail{
if(email != theEmail){
    [email release];
    email = [[NSString alloc] initWithString: theEmail];
}
}
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail{
    // you can use assign by '=' sign because you did (copy, nonatomic) accesor
    self.name = theName;
    self.email = theEmail;
}

//  getters
-(NSString *) name{
    return name;
}
-(NSString *) email{
    return email;
}

-(void) print{
    NSLog(@"=========================================");
    NSLog(@"|                                       |");
    NSLog(@"|    %-34s |", [name UTF8String]);
    NSLog(@"|    %-34s |", [email UTF8String]);
    NSLog(@"|                                       |");
    NSLog(@"|       O                       O       |");
    NSLog(@"=========================================");
}

// Overwritten
-(void) dealloc{
    [name release];
    [email release];
    [super dealloc];
}

@end