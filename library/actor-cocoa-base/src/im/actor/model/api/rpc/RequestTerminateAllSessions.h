//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestTerminateAllSessions.java
//

#ifndef _APRequestTerminateAllSessions_H_
#define _APRequestTerminateAllSessions_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestTerminateAllSessions_HEADER 83

@interface APRequestTerminateAllSessions : APRequest

#pragma mark Public

- (instancetype)init;

+ (APRequestTerminateAllSessions *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestTerminateAllSessions)

J2OBJC_STATIC_FIELD_GETTER(APRequestTerminateAllSessions, HEADER, jint)

FOUNDATION_EXPORT APRequestTerminateAllSessions *APRequestTerminateAllSessions_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestTerminateAllSessions_init(APRequestTerminateAllSessions *self);

FOUNDATION_EXPORT APRequestTerminateAllSessions *new_APRequestTerminateAllSessions_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestTerminateAllSessions)

typedef APRequestTerminateAllSessions ImActorModelApiRpcRequestTerminateAllSessions;

#endif // _APRequestTerminateAllSessions_H_
