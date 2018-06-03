#import "AddressBook.h"

@implementation AddressBook;
-(id) initWithName: (NSString *) theName{
    self = [super init];
    
    if(self){
        bookName = [[NSString alloc] initWithString: theName];
        book = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addCard:(AddressCard *)theCard{
    [book addObject: theCard];
}

-(int) entries{
    return [book count];
}

-(void) list{
    NSLog (@"====== Contents of: %@ ======", bookName);
    
    for(AddressCard * theCard in book){
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }

    NSLog (@"===================================================");
}

//  ovverwritten 
-(id) init{
    return [self initWithName: @"NoName"];
}

-(void) dealloc{
    [bookName release];
    [book release];
    [super dealloc];
}

//  getters
-(NSString *) bookName{
    return bookName;
}
@end