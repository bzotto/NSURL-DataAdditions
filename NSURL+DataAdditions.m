//
//  NSURL+DataAdditions.m
//
//  Created by Ben Zotto.
//  Public domain. Knock yourself out.
//

#import "NSURL+DataAdditions.h"

@implementation NSURL (DataAdditions)
+ (instancetype)URLWithData:(NSData *)data
{
    return [self URLWithData:data mime:nil];
}

+ (instancetype)URLWithData:(NSData *)data mime:(NSString *)mime
{
    mime = mime ?: @"application/octet-stream";
    NSString * base64 = [data base64EncodedStringWithOptions:0];
    NSString * urlString = [NSString stringWithFormat:@"data:%@;base64,%@", mime, base64];
    base64 = nil; // Force this possibly-large temp string to get deallocated.
    return [self URLWithString:urlString];
}
@end
