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
// Copyright (C) 2006-2016  Kaltura Inc.
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
#import "KalturaFileSyncClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaFileSyncStatus
+ (int)ERROR
{
    return -1;
}
+ (int)PENDING
{
    return 1;
}
+ (int)READY
{
    return 2;
}
+ (int)DELETED
{
    return 3;
}
+ (int)PURGED
{
    return 4;
}
@end

@implementation KalturaFileSyncType
+ (int)FILE
{
    return 1;
}
+ (int)LINK
{
    return 2;
}
+ (int)URL
{
    return 3;
}
@end

@implementation KalturaFileSyncOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)FILE_SIZE_ASC
{
    return @"+fileSize";
}
+ (NSString*)READY_AT_ASC
{
    return @"+readyAt";
}
+ (NSString*)SYNC_TIME_ASC
{
    return @"+syncTime";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)VERSION_ASC
{
    return @"+version";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)FILE_SIZE_DESC
{
    return @"-fileSize";
}
+ (NSString*)READY_AT_DESC
{
    return @"-readyAt";
}
+ (NSString*)SYNC_TIME_DESC
{
    return @"-syncTime";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
+ (NSString*)VERSION_DESC
{
    return @"-version";
}
@end

///////////////////////// classes /////////////////////////
@interface KalturaFileSync()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,copy) NSString* fileObjectType;
@property (nonatomic,copy) NSString* objectId;
@property (nonatomic,copy) NSString* version;
@property (nonatomic,assign) int objectSubType;
@property (nonatomic,copy) NSString* dc;
@property (nonatomic,assign) int original;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@property (nonatomic,assign) int readyAt;
@property (nonatomic,assign) int syncTime;
@property (nonatomic,assign) int fileType;
@property (nonatomic,assign) int linkedId;
@property (nonatomic,assign) int linkCount;
@property (nonatomic,assign) double fileSize;
@property (nonatomic,copy) NSString* fileUrl;
@property (nonatomic,copy) NSString* fileContent;
@property (nonatomic,assign) double fileDiscSize;
@property (nonatomic,assign) KALTURA_BOOL isCurrentDc;
@property (nonatomic,assign) KALTURA_BOOL isDir;
@property (nonatomic,assign) int originalId;
@end

@implementation KalturaFileSync
@synthesize id = _id;
@synthesize partnerId = _partnerId;
@synthesize fileObjectType = _fileObjectType;
@synthesize objectId = _objectId;
@synthesize version = _version;
@synthesize objectSubType = _objectSubType;
@synthesize dc = _dc;
@synthesize original = _original;
@synthesize createdAt = _createdAt;
@synthesize updatedAt = _updatedAt;
@synthesize readyAt = _readyAt;
@synthesize syncTime = _syncTime;
@synthesize status = _status;
@synthesize fileType = _fileType;
@synthesize linkedId = _linkedId;
@synthesize linkCount = _linkCount;
@synthesize fileRoot = _fileRoot;
@synthesize filePath = _filePath;
@synthesize fileSize = _fileSize;
@synthesize fileUrl = _fileUrl;
@synthesize fileContent = _fileContent;
@synthesize fileDiscSize = _fileDiscSize;
@synthesize isCurrentDc = _isCurrentDc;
@synthesize isDir = _isDir;
@synthesize originalId = _originalId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_objectSubType = KALTURA_UNDEF_INT;
    self->_original = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    self->_updatedAt = KALTURA_UNDEF_INT;
    self->_readyAt = KALTURA_UNDEF_INT;
    self->_syncTime = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_fileType = KALTURA_UNDEF_INT;
    self->_linkedId = KALTURA_UNDEF_INT;
    self->_linkCount = KALTURA_UNDEF_INT;
    self->_fileSize = KALTURA_UNDEF_FLOAT;
    self->_fileDiscSize = KALTURA_UNDEF_FLOAT;
    self->_isCurrentDc = KALTURA_UNDEF_BOOL;
    self->_isDir = KALTURA_UNDEF_BOOL;
    self->_originalId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileObjectType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectSubType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDc
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOriginal
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfReadyAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSyncTime
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLinkedId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLinkCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileRoot
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFileSize
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfFileUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFileContent
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFileDiscSize
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfIsCurrentDc
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfIsDir
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfOriginalId
{
    return KFT_Int;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setObjectSubTypeFromString:(NSString*)aPropVal
{
    self.objectSubType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setOriginalFromString:(NSString*)aPropVal
{
    self.original = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtFromString:(NSString*)aPropVal
{
    self.updatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setReadyAtFromString:(NSString*)aPropVal
{
    self.readyAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSyncTimeFromString:(NSString*)aPropVal
{
    self.syncTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFileTypeFromString:(NSString*)aPropVal
{
    self.fileType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLinkedIdFromString:(NSString*)aPropVal
{
    self.linkedId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLinkCountFromString:(NSString*)aPropVal
{
    self.linkCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFileSizeFromString:(NSString*)aPropVal
{
    self.fileSize = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setFileDiscSizeFromString:(NSString*)aPropVal
{
    self.fileDiscSize = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setIsCurrentDcFromString:(NSString*)aPropVal
{
    self.isCurrentDc = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setIsDirFromString:(NSString*)aPropVal
{
    self.isDir = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setOriginalIdFromString:(NSString*)aPropVal
{
    self.originalId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFileSync"];
    [aParams addIfDefinedKey:@"status" withInt:self.status];
    [aParams addIfDefinedKey:@"fileRoot" withString:self.fileRoot];
    [aParams addIfDefinedKey:@"filePath" withString:self.filePath];
}

- (void)dealloc
{
    [self->_fileObjectType release];
    [self->_objectId release];
    [self->_version release];
    [self->_dc release];
    [self->_fileRoot release];
    [self->_filePath release];
    [self->_fileUrl release];
    [self->_fileContent release];
    [super dealloc];
}

@end

@interface KalturaFileSyncListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaFileSyncListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaFileSync";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFileSyncListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaFileSyncBaseFilter
@synthesize partnerIdEqual = _partnerIdEqual;
@synthesize fileObjectTypeEqual = _fileObjectTypeEqual;
@synthesize fileObjectTypeIn = _fileObjectTypeIn;
@synthesize objectIdEqual = _objectIdEqual;
@synthesize objectIdIn = _objectIdIn;
@synthesize versionEqual = _versionEqual;
@synthesize versionIn = _versionIn;
@synthesize objectSubTypeEqual = _objectSubTypeEqual;
@synthesize objectSubTypeIn = _objectSubTypeIn;
@synthesize dcEqual = _dcEqual;
@synthesize dcIn = _dcIn;
@synthesize originalEqual = _originalEqual;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;
@synthesize updatedAtGreaterThanOrEqual = _updatedAtGreaterThanOrEqual;
@synthesize updatedAtLessThanOrEqual = _updatedAtLessThanOrEqual;
@synthesize readyAtGreaterThanOrEqual = _readyAtGreaterThanOrEqual;
@synthesize readyAtLessThanOrEqual = _readyAtLessThanOrEqual;
@synthesize syncTimeGreaterThanOrEqual = _syncTimeGreaterThanOrEqual;
@synthesize syncTimeLessThanOrEqual = _syncTimeLessThanOrEqual;
@synthesize statusEqual = _statusEqual;
@synthesize statusIn = _statusIn;
@synthesize fileTypeEqual = _fileTypeEqual;
@synthesize fileTypeIn = _fileTypeIn;
@synthesize linkedIdEqual = _linkedIdEqual;
@synthesize linkCountGreaterThanOrEqual = _linkCountGreaterThanOrEqual;
@synthesize linkCountLessThanOrEqual = _linkCountLessThanOrEqual;
@synthesize fileSizeGreaterThanOrEqual = _fileSizeGreaterThanOrEqual;
@synthesize fileSizeLessThanOrEqual = _fileSizeLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_partnerIdEqual = KALTURA_UNDEF_INT;
    self->_objectSubTypeEqual = KALTURA_UNDEF_INT;
    self->_originalEqual = KALTURA_UNDEF_INT;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_updatedAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_readyAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_readyAtLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_syncTimeGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_syncTimeLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_statusEqual = KALTURA_UNDEF_INT;
    self->_fileTypeEqual = KALTURA_UNDEF_INT;
    self->_linkedIdEqual = KALTURA_UNDEF_INT;
    self->_linkCountGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_linkCountLessThanOrEqual = KALTURA_UNDEF_INT;
    self->_fileSizeGreaterThanOrEqual = KALTURA_UNDEF_FLOAT;
    self->_fileSizeLessThanOrEqual = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfPartnerIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileObjectTypeEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFileObjectTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersionEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersionIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfObjectSubTypeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfObjectSubTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDcEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDcIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOriginalEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfReadyAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfReadyAtLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSyncTimeGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSyncTimeLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatusIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFileTypeEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLinkedIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLinkCountGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLinkCountLessThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileSizeGreaterThanOrEqual
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfFileSizeLessThanOrEqual
{
    return KFT_Float;
}

- (void)setPartnerIdEqualFromString:(NSString*)aPropVal
{
    self.partnerIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setObjectSubTypeEqualFromString:(NSString*)aPropVal
{
    self.objectSubTypeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setOriginalEqualFromString:(NSString*)aPropVal
{
    self.originalEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.updatedAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setReadyAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.readyAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setReadyAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.readyAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSyncTimeGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.syncTimeGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSyncTimeLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.syncTimeLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusEqualFromString:(NSString*)aPropVal
{
    self.statusEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFileTypeEqualFromString:(NSString*)aPropVal
{
    self.fileTypeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLinkedIdEqualFromString:(NSString*)aPropVal
{
    self.linkedIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLinkCountGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.linkCountGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLinkCountLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.linkCountLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFileSizeGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.fileSizeGreaterThanOrEqual = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setFileSizeLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.fileSizeLessThanOrEqual = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFileSyncBaseFilter"];
    [aParams addIfDefinedKey:@"partnerIdEqual" withInt:self.partnerIdEqual];
    [aParams addIfDefinedKey:@"fileObjectTypeEqual" withString:self.fileObjectTypeEqual];
    [aParams addIfDefinedKey:@"fileObjectTypeIn" withString:self.fileObjectTypeIn];
    [aParams addIfDefinedKey:@"objectIdEqual" withString:self.objectIdEqual];
    [aParams addIfDefinedKey:@"objectIdIn" withString:self.objectIdIn];
    [aParams addIfDefinedKey:@"versionEqual" withString:self.versionEqual];
    [aParams addIfDefinedKey:@"versionIn" withString:self.versionIn];
    [aParams addIfDefinedKey:@"objectSubTypeEqual" withInt:self.objectSubTypeEqual];
    [aParams addIfDefinedKey:@"objectSubTypeIn" withString:self.objectSubTypeIn];
    [aParams addIfDefinedKey:@"dcEqual" withString:self.dcEqual];
    [aParams addIfDefinedKey:@"dcIn" withString:self.dcIn];
    [aParams addIfDefinedKey:@"originalEqual" withInt:self.originalEqual];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtGreaterThanOrEqual" withInt:self.updatedAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"updatedAtLessThanOrEqual" withInt:self.updatedAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"readyAtGreaterThanOrEqual" withInt:self.readyAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"readyAtLessThanOrEqual" withInt:self.readyAtLessThanOrEqual];
    [aParams addIfDefinedKey:@"syncTimeGreaterThanOrEqual" withInt:self.syncTimeGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"syncTimeLessThanOrEqual" withInt:self.syncTimeLessThanOrEqual];
    [aParams addIfDefinedKey:@"statusEqual" withInt:self.statusEqual];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"fileTypeEqual" withInt:self.fileTypeEqual];
    [aParams addIfDefinedKey:@"fileTypeIn" withString:self.fileTypeIn];
    [aParams addIfDefinedKey:@"linkedIdEqual" withInt:self.linkedIdEqual];
    [aParams addIfDefinedKey:@"linkCountGreaterThanOrEqual" withInt:self.linkCountGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"linkCountLessThanOrEqual" withInt:self.linkCountLessThanOrEqual];
    [aParams addIfDefinedKey:@"fileSizeGreaterThanOrEqual" withFloat:self.fileSizeGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"fileSizeLessThanOrEqual" withFloat:self.fileSizeLessThanOrEqual];
}

- (void)dealloc
{
    [self->_fileObjectTypeEqual release];
    [self->_fileObjectTypeIn release];
    [self->_objectIdEqual release];
    [self->_objectIdIn release];
    [self->_versionEqual release];
    [self->_versionIn release];
    [self->_objectSubTypeIn release];
    [self->_dcEqual release];
    [self->_dcIn release];
    [self->_statusIn release];
    [self->_fileTypeIn release];
    [super dealloc];
}

@end

@implementation KalturaFileSyncFilter
@synthesize currentDc = _currentDc;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_currentDc = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfCurrentDc
{
    return KFT_Int;
}

- (void)setCurrentDcFromString:(NSString*)aPropVal
{
    self.currentDc = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFileSyncFilter"];
    [aParams addIfDefinedKey:@"currentDc" withInt:self.currentDc];
}

@end

///////////////////////// services /////////////////////////
