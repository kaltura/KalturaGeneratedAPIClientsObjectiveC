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
#import "KalturaWebexDropFolderClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaWebexDropFolderFileOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)FILE_NAME_ASC
{
    return @"+fileName";
}
+ (NSString*)FILE_SIZE_ASC
{
    return @"+fileSize";
}
+ (NSString*)FILE_SIZE_LAST_SET_AT_ASC
{
    return @"+fileSizeLastSetAt";
}
+ (NSString*)ID_ASC
{
    return @"+id";
}
+ (NSString*)PARSED_FLAVOR_ASC
{
    return @"+parsedFlavor";
}
+ (NSString*)PARSED_SLUG_ASC
{
    return @"+parsedSlug";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)FILE_NAME_DESC
{
    return @"-fileName";
}
+ (NSString*)FILE_SIZE_DESC
{
    return @"-fileSize";
}
+ (NSString*)FILE_SIZE_LAST_SET_AT_DESC
{
    return @"-fileSizeLastSetAt";
}
+ (NSString*)ID_DESC
{
    return @"-id";
}
+ (NSString*)PARSED_FLAVOR_DESC
{
    return @"-parsedFlavor";
}
+ (NSString*)PARSED_SLUG_DESC
{
    return @"-parsedSlug";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaWebexDropFolderOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)ID_ASC
{
    return @"+id";
}
+ (NSString*)NAME_ASC
{
    return @"+name";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)ID_DESC
{
    return @"-id";
}
+ (NSString*)NAME_DESC
{
    return @"-name";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaWebexDropFolder
@synthesize webexUserId = _webexUserId;
@synthesize webexPassword = _webexPassword;
@synthesize webexSiteId = _webexSiteId;
@synthesize webexPartnerId = _webexPartnerId;
@synthesize webexServiceUrl = _webexServiceUrl;
@synthesize webexHostIdMetadataFieldName = _webexHostIdMetadataFieldName;
@synthesize deleteFromRecycleBin = _deleteFromRecycleBin;
@synthesize webexServiceType = _webexServiceType;
@synthesize webexSiteName = _webexSiteName;
@synthesize deleteFromTimestamp = _deleteFromTimestamp;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_webexSiteId = KALTURA_UNDEF_INT;
    self->_deleteFromRecycleBin = KALTURA_UNDEF_BOOL;
    self->_deleteFromTimestamp = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfWebexUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWebexPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWebexSiteId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfWebexPartnerId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWebexServiceUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWebexHostIdMetadataFieldName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeleteFromRecycleBin
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfWebexServiceType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWebexSiteName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeleteFromTimestamp
{
    return KFT_Int;
}

- (void)setWebexSiteIdFromString:(NSString*)aPropVal
{
    self.webexSiteId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDeleteFromRecycleBinFromString:(NSString*)aPropVal
{
    self.deleteFromRecycleBin = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setDeleteFromTimestampFromString:(NSString*)aPropVal
{
    self.deleteFromTimestamp = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWebexDropFolder"];
    [aParams addIfDefinedKey:@"webexUserId" withString:self.webexUserId];
    [aParams addIfDefinedKey:@"webexPassword" withString:self.webexPassword];
    [aParams addIfDefinedKey:@"webexSiteId" withInt:self.webexSiteId];
    [aParams addIfDefinedKey:@"webexPartnerId" withString:self.webexPartnerId];
    [aParams addIfDefinedKey:@"webexServiceUrl" withString:self.webexServiceUrl];
    [aParams addIfDefinedKey:@"webexHostIdMetadataFieldName" withString:self.webexHostIdMetadataFieldName];
    [aParams addIfDefinedKey:@"deleteFromRecycleBin" withBool:self.deleteFromRecycleBin];
    [aParams addIfDefinedKey:@"webexServiceType" withString:self.webexServiceType];
    [aParams addIfDefinedKey:@"webexSiteName" withString:self.webexSiteName];
    [aParams addIfDefinedKey:@"deleteFromTimestamp" withInt:self.deleteFromTimestamp];
}

- (void)dealloc
{
    [self->_webexUserId release];
    [self->_webexPassword release];
    [self->_webexPartnerId release];
    [self->_webexServiceUrl release];
    [self->_webexHostIdMetadataFieldName release];
    [self->_webexServiceType release];
    [self->_webexSiteName release];
    [super dealloc];
}

@end

@implementation KalturaWebexDropFolderFile
@synthesize recordingId = _recordingId;
@synthesize webexHostId = _webexHostId;
@synthesize description = _description;
@synthesize confId = _confId;
@synthesize contentUrl = _contentUrl;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_recordingId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfRecordingId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfWebexHostId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfConfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContentUrl
{
    return KFT_String;
}

- (void)setRecordingIdFromString:(NSString*)aPropVal
{
    self.recordingId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWebexDropFolderFile"];
    [aParams addIfDefinedKey:@"recordingId" withInt:self.recordingId];
    [aParams addIfDefinedKey:@"webexHostId" withString:self.webexHostId];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"confId" withString:self.confId];
    [aParams addIfDefinedKey:@"contentUrl" withString:self.contentUrl];
}

- (void)dealloc
{
    [self->_webexHostId release];
    [self->_description release];
    [self->_confId release];
    [self->_contentUrl release];
    [super dealloc];
}

@end

@implementation KalturaWebexDropFolderContentProcessorJobData
@synthesize description = _description;
@synthesize webexHostId = _webexHostId;

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWebexHostId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWebexDropFolderContentProcessorJobData"];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"webexHostId" withString:self.webexHostId];
}

- (void)dealloc
{
    [self->_description release];
    [self->_webexHostId release];
    [super dealloc];
}

@end

@implementation KalturaWebexDropFolderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWebexDropFolderBaseFilter"];
}

@end

@implementation KalturaWebexDropFolderFileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWebexDropFolderFileBaseFilter"];
}

@end

@implementation KalturaWebexDropFolderFileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWebexDropFolderFileFilter"];
}

@end

@implementation KalturaWebexDropFolderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaWebexDropFolderFilter"];
}

@end

///////////////////////// services /////////////////////////
