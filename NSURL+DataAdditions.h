//
//  NSURL+DataAdditions.h
//
//  Created by Ben Zotto.
//  Public domain. Knock yourself out.
//

#import <Foundation/Foundation.h>

//
// Create a URL object that embeds binary data from memory, with an optional MIME type.
// Don't use this for huge blobs; the data will be encoded as a string, so this is neither
// performant nor scalable (memory) for any nontrivial tasks. For those, use a custom
// NSURLProtocol.
//

@interface NSURL (DataAdditions)
+ (instancetype)URLWithData:(NSData *)data;
+ (instancetype)URLWithData:(NSData *)data mime:(NSString *)mime;
@end
