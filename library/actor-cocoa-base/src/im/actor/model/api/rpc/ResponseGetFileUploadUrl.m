//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetFileUploadUrl.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseGetFileUploadUrl.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"

@interface APResponseGetFileUploadUrl () {
 @public
  NSString *url_;
  IOSByteArray *uploadKey_;
}

@end

J2OBJC_FIELD_SETTER(APResponseGetFileUploadUrl, url_, NSString *)
J2OBJC_FIELD_SETTER(APResponseGetFileUploadUrl, uploadKey_, IOSByteArray *)

@implementation APResponseGetFileUploadUrl

+ (APResponseGetFileUploadUrl *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseGetFileUploadUrl_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)url
                   withByteArray:(IOSByteArray *)uploadKey {
  APResponseGetFileUploadUrl_initWithNSString_withByteArray_(self, url, uploadKey);
  return self;
}

- (instancetype)init {
  APResponseGetFileUploadUrl_init(self);
  return self;
}

- (NSString *)getUrl {
  return self->url_;
}

- (IOSByteArray *)getUploadKey {
  return self->uploadKey_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->url_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->uploadKey_ = [values getBytesWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->url_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->url_];
  if (self->uploadKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->uploadKey_];
}

- (NSString *)description {
  NSString *res = @"tuple GetFileUploadUrl{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseGetFileUploadUrl_HEADER;
}

@end

APResponseGetFileUploadUrl *APResponseGetFileUploadUrl_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseGetFileUploadUrl_initialize();
  return ((APResponseGetFileUploadUrl *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseGetFileUploadUrl_init(), data));
}

void APResponseGetFileUploadUrl_initWithNSString_withByteArray_(APResponseGetFileUploadUrl *self, NSString *url, IOSByteArray *uploadKey) {
  (void) APResponse_init(self);
  self->url_ = url;
  self->uploadKey_ = uploadKey;
}

APResponseGetFileUploadUrl *new_APResponseGetFileUploadUrl_initWithNSString_withByteArray_(NSString *url, IOSByteArray *uploadKey) {
  APResponseGetFileUploadUrl *self = [APResponseGetFileUploadUrl alloc];
  APResponseGetFileUploadUrl_initWithNSString_withByteArray_(self, url, uploadKey);
  return self;
}

void APResponseGetFileUploadUrl_init(APResponseGetFileUploadUrl *self) {
  (void) APResponse_init(self);
}

APResponseGetFileUploadUrl *new_APResponseGetFileUploadUrl_init() {
  APResponseGetFileUploadUrl *self = [APResponseGetFileUploadUrl alloc];
  APResponseGetFileUploadUrl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseGetFileUploadUrl)
