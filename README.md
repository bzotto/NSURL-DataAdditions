NSURL+DataAdditions
===================

Tiny helper category to create NSURLs from in-memory NSData objects (with optional MIME type).

Don't use this for huge blobs; the data will be encoded as a string, so this is neither performant nor scalable (memory) for any nontrivial tasks. (For those, use a custom NSURLProtocol.)

