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
// Copyright (C) 2006-2019  Kaltura Inc.
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
#import "KalturaAttachmentClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaAttachmentAssetStatus
+ (int)ERROR
{
    return -1;
}
+ (int)QUEUED
{
    return 0;
}
+ (int)READY
{
    return 2;
}
+ (int)DELETED
{
    return 3;
}
+ (int)IMPORTING
{
    return 7;
}
+ (int)EXPORTING
{
    return 9;
}
@end

@implementation KalturaAttachmentAssetOrderBy
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

@implementation KalturaAttachmentType
+ (NSString*)TEXT
{
    return @"1";
}
+ (NSString*)MEDIA
{
    return @"2";
}
+ (NSString*)DOCUMENT
{
    return @"3";
}
+ (NSString*)JSON
{
    return @"4";
}
@end

///////////////////////// classes /////////////////////////
@interface KalturaAttachmentAsset()
@property (nonatomic,assign) int status;
@end

@implementation KalturaAttachmentAsset
@synthesize filename = _filename;
@synthesize title = _title;
@synthesize format = _format;
@synthesize status = _status;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_status = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFilename
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFormat
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAttachmentAsset"];
    [aParams addIfDefinedKey:@"filename" withString:self.filename];
    [aParams addIfDefinedKey:@"title" withString:self.title];
    [aParams addIfDefinedKey:@"format" withString:self.format];
}

- (void)dealloc
{
    [self->_filename release];
    [self->_title release];
    [self->_format release];
    [super dealloc];
}

@end

@interface KalturaAttachmentAssetListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaAttachmentAssetListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaAttachmentAsset";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAttachmentAssetListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaAttachmentServeOptions
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAttachmentServeOptions"];
}

@end

@implementation KalturaAttachmentAssetBaseFilter
@synthesize formatEqual = _formatEqual;
@synthesize formatIn = _formatIn;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize statusNotIn = _statusNotIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_statusEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFormatEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFormatIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatusIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusNotIn
{
    return KFT_String;
}

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAttachmentAssetBaseFilter"];
    [aParams addIfDefinedKey:@"formatEqual" withString:self.formatEqual];
    [aParams addIfDefinedKey:@"formatIn" withString:self.formatIn];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"statusNotIn" withString:self.statusNotIn];
}

- (void)dealloc
{
    [self->_formatEqual release];
    [self->_formatIn release];
    [self->_statusIn release];
    [self->_statusNotIn release];
    [super dealloc];
}

@end

@implementation KalturaAttachmentAssetFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAttachmentAssetFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaAttachmentAssetService
- (KalturaAttachmentAsset*)addWithEntryId:(NSString*)aEntryId withAttachmentAsset:(KalturaAttachmentAsset*)aAttachmentAsset
{
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    [self.client.params addIfDefinedKey:@"attachmentAsset" withObject:aAttachmentAsset];
    return [self.client queueObjectService:@"attachment_attachmentasset" withAction:@"add" withExpectedType:@"KalturaAttachmentAsset"];
}

- (void)deleteWithAttachmentAssetId:(NSString*)aAttachmentAssetId
{
    [self.client.params addIfDefinedKey:@"attachmentAssetId" withString:aAttachmentAssetId];
    [self.client queueVoidService:@"attachment_attachmentasset" withAction:@"delete"];
}

- (KalturaAttachmentAsset*)getWithAttachmentAssetId:(NSString*)aAttachmentAssetId
{
    [self.client.params addIfDefinedKey:@"attachmentAssetId" withString:aAttachmentAssetId];
    return [self.client queueObjectService:@"attachment_attachmentasset" withAction:@"get" withExpectedType:@"KalturaAttachmentAsset"];
}

- (KalturaRemotePathListResponse*)getRemotePathsWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    return [self.client queueObjectService:@"attachment_attachmentasset" withAction:@"getRemotePaths" withExpectedType:@"KalturaRemotePathListResponse"];
}

- (NSString*)getUrlWithId:(NSString*)aId withStorageId:(int)aStorageId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"storageId" withInt:aStorageId];
    return [self.client queueStringService:@"attachment_attachmentasset" withAction:@"getUrl"];
}

- (NSString*)getUrlWithId:(NSString*)aId
{
    return [self getUrlWithId:aId withStorageId:KALTURA_UNDEF_INT];
}

- (KalturaAttachmentAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"attachment_attachmentasset" withAction:@"list" withExpectedType:@"KalturaAttachmentAssetListResponse"];
}

- (KalturaAttachmentAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaAttachmentAssetListResponse*)list
{
    return [self listWithFilter:nil];
}

- (NSString*)serveWithAttachmentAssetId:(NSString*)aAttachmentAssetId withServeOptions:(KalturaAttachmentServeOptions*)aServeOptions
{
    [self.client.params addIfDefinedKey:@"attachmentAssetId" withString:aAttachmentAssetId];
    [self.client.params addIfDefinedKey:@"serveOptions" withObject:aServeOptions];
    return [self.client queueServeService:@"attachment_attachmentasset" withAction:@"serve"];
}

- (NSString*)serveWithAttachmentAssetId:(NSString*)aAttachmentAssetId
{
    return [self serveWithAttachmentAssetId:aAttachmentAssetId withServeOptions:nil];
}

- (KalturaAttachmentAsset*)setContentWithId:(NSString*)aId withContentResource:(KalturaContentResource*)aContentResource
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"contentResource" withObject:aContentResource];
    return [self.client queueObjectService:@"attachment_attachmentasset" withAction:@"setContent" withExpectedType:@"KalturaAttachmentAsset"];
}

- (KalturaAttachmentAsset*)updateWithId:(NSString*)aId withAttachmentAsset:(KalturaAttachmentAsset*)aAttachmentAsset
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"attachmentAsset" withObject:aAttachmentAsset];
    return [self.client queueObjectService:@"attachment_attachmentasset" withAction:@"update" withExpectedType:@"KalturaAttachmentAsset"];
}

@end

@implementation KalturaAttachmentClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaAttachmentAssetService*)attachmentAsset
{
    if (self->_attachmentAsset == nil)
    	self->_attachmentAsset = [[KalturaAttachmentAssetService alloc] initWithClient:self.client];
    return self->_attachmentAsset;
}

- (void)dealloc
{
    [self->_attachmentAsset release];
	[super dealloc];
}

@end

