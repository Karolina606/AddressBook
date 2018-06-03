#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]){
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	NSString *aName = @"Karolina Nogacka";
	NSString *aEmail = @"kara60@op.pl";
	NSString *bName = @"Edyta Nogacka";
	NSString *bEmail = @"edyta551@op.pl";
	NSString *cName = @"Kinga Nogacka";
	NSString *cEmail = @"kinga70@op.pl";
	NSString *dName = @"Marek Nogacki";
	NSString *dEmail = @"marek111@op.pl";

	AddressCard *card1 = [[AddressCard alloc] init];
	AddressCard *card2 = [[AddressCard alloc] init];
	AddressCard *card3 = [[AddressCard alloc] init];
	AddressCard *card4 = [[AddressCard alloc] init];

	//	Set up address book
	AddressBook * myBook = [[AddressBook alloc] initWithName: @"Karolina's Address Book"];
	NSLog(@"Entries in %@ after creation: %i", [myBook bookName], [myBook entries]);

	//	Set up address cards
	[card1 setName: aName andEmail: aEmail];
	[card2 setName: bName andEmail: bEmail];
	[card3 setName: cName andEmail: cEmail];
	[card4 setName: dName andEmail: dEmail];
	
	// 	Add address cards to the address book
	[myBook addCard: card1];
	[myBook addCard: card2];
	[myBook addCard: card3];
	[myBook addCard: card4];

	//	Book
	NSLog(@"Entries in %@ after adding 4 cards: %i\n\n", [myBook bookName], [myBook entries]);

	//	List all the entries int he book after adding 4 cards
	[myBook list];

	[card1 release];
	[card2 release];
	[pool drain];
	return 0;
}
