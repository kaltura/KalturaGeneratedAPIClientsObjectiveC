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
#import "KalturaConfMapsClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaConfMapsStatus
+ (int)STATUS_DISABLED
{
    return 0;
}
+ (int)STATUS_ENABLED
{
    return 1;
}
@end

///////////////////////// classes /////////////////////////
@interface KalturaConfMaps()
@property (nonatomic,assign) KALTURA_BOOL isEditable;
@property (nonatomic,assign) int lastUpdate;
@property (nonatomic,assign) int version;
@end

@implementation KalturaConfMaps
@synthesize name = _name;
@synthesize content = _content;
@synthesize isEditable = _isEditable;
@synthesize lastUpdate = _lastUpdate;
@synthesize relatedHost = _relatedHost;
@synthesize version = _version;
@synthesize sourceLocation = _sourceLocation;
@synthesize remarks = _remarks;
@synthesize status = _status;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isEditable = KALTURA_UNDEF_BOOL;
    self->_lastUpdate = KALTURA_UNDEF_INT;
    self->_version = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContent
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsEditable
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfLastUpdate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRelatedHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSourceLocation
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRemarks
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (void)setIsEditableFromString:(NSString*)aPropVal
{
    self.isEditable = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setLastUpdateFromString:(NSString*)aPropVal
{
    self.lastUpdate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setVersionFromString:(NSString*)aPropVal
{
    self.version = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaConfMaps"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"content" withString:self.content];
    [aParams addIfDefinedKey:@"relatedHost" withString:self.relatedHost];
    [aParams addIfDefinedKey:@"sourceLocation" withString:self.sourceLocation];
    [aParams addIfDefinedKey:@"remarks" withString:self.remarks];
    [aParams addIfDefinedKey:@"status" withInt:self.status];
}

- (void)dealloc
{
    [self->_name release];
    [self->_content release];
    [self->_relatedHost release];
    [self->_sourceLocation release];
    [self->_remarks release];
    [super dealloc];
}

@end

@interface KalturaConfMapsListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaConfMapsListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaConfMaps";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaConfMapsListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaConfMapsBaseFilter
@synthesize nameEqual = _nameEqual;
@synthesize relatedHostEqual = _relatedHostEqual;
@synthesize versionEqual = _versionEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_versionEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfNameEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRelatedHostEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersionEqual
{
    return KFT_Int;
}

- (void)setVersionEqualFromString:(NSString*)aPropVal
{
    self.versionEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaConfMapsBaseFilter"];
    [aParams addIfDefinedKey:@"nameEqual" withString:self.nameEqual];
    [aParams addIfDefinedKey:@"relatedHostEqual" withString:self.relatedHostEqual];
    [aParams addIfDefinedKey:@"versionEqual" withInt:self.versionEqual];
}

- (void)dealloc
{
    [self->_nameEqual release];
    [self->_relatedHostEqual release];
    [super dealloc];
}

@end

@implementation KalturaConfMapsFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaConfMapsFilter"];
}

@end

///////////////////////// services /////////////////////////
