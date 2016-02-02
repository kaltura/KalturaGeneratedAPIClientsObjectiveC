// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2015  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
#import "KalturaTranscriptClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaTranscriptAssetOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)DELETED_AT_ASC
{
    return @"+deletedAt";
}
+ (NSString*)SIZE_ASC
{
    return @"+size";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)DELETED_AT_DESC
{
    return @"-deletedAt";
}
+ (NSString*)SIZE_DESC
{
    return @"-size";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaTranscriptAsset
@synthesize accuracy = _accuracy;
@synthesize humanVerified = _humanVerified;
@synthesize language = _language;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_accuracy = KALTURA_UNDEF_FLOAT;
    self->_humanVerified = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAccuracy
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfHumanVerified
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLanguage
{
    return KFT_String;
}

- (void)setAccuracyFromString:(NSString*)aPropVal
{
    self.accuracy = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setHumanVerifiedFromString:(NSString*)aPropVal
{
    self.humanVerified = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTranscriptAsset"];
    [aParams addIfDefinedKey:@"accuracy" withFloat:self.accuracy];
    [aParams addIfDefinedKey:@"humanVerified" withInt:self.humanVerified];
    [aParams addIfDefinedKey:@"language" withString:self.language];
}

- (void)dealloc
{
    [self->_language release];
    [super dealloc];
}

@end

@implementation KalturaEntryTranscriptAssetSearchItem
@synthesize contentLike = _contentLike;
@synthesize contentMultiLikeOr = _contentMultiLikeOr;
@synthesize contentMultiLikeAnd = _contentMultiLikeAnd;

- (KalturaFieldType)getTypeOfContentLike
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContentMultiLikeOr
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContentMultiLikeAnd
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntryTranscriptAssetSearchItem"];
    [aParams addIfDefinedKey:@"contentLike" withString:self.contentLike];
    [aParams addIfDefinedKey:@"contentMultiLikeOr" withString:self.contentMultiLikeOr];
    [aParams addIfDefinedKey:@"contentMultiLikeAnd" withString:self.contentMultiLikeAnd];
}

- (void)dealloc
{
    [self->_contentLike release];
    [self->_contentMultiLikeOr release];
    [self->_contentMultiLikeAnd release];
    [super dealloc];
}

@end

@interface KalturaTranscriptAssetListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaTranscriptAssetListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaTranscriptAsset";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTranscriptAssetListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaTranscriptAssetBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTranscriptAssetBaseFilter"];
}

@end

@implementation KalturaTranscriptAssetFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTranscriptAssetFilter"];
}

@end

///////////////////////// services /////////////////////////
