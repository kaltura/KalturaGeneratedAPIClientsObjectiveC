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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaConfMapsStatus : NSObject
+ (int)STATUS_DISABLED;
+ (int)STATUS_ENABLED;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaConfMaps : KalturaObjectBase
// Name of the map
@property (nonatomic,copy) NSString* name;	// insertonly
// Ini file content
@property (nonatomic,copy) NSString* content;
// IsEditable - true / false
@property (nonatomic,assign,readonly) KALTURA_BOOL isEditable;
// Time of the last update
@property (nonatomic,assign,readonly) int lastUpdate;
// Regex that represent the host/s that this map affect
@property (nonatomic,copy) NSString* relatedHost;
@property (nonatomic,assign,readonly) int version;
@property (nonatomic,copy) NSString* sourceLocation;	// enum KalturaConfMapsSourceLocation, insertonly
@property (nonatomic,copy) NSString* remarks;	// insertonly
// map status
@property (nonatomic,assign) int status;	// enum KalturaConfMapsStatus
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfContent;
- (KalturaFieldType)getTypeOfIsEditable;
- (KalturaFieldType)getTypeOfLastUpdate;
- (KalturaFieldType)getTypeOfRelatedHost;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfSourceLocation;
- (KalturaFieldType)getTypeOfRemarks;
- (KalturaFieldType)getTypeOfStatus;
- (void)setIsEditableFromString:(NSString*)aPropVal;
- (void)setLastUpdateFromString:(NSString*)aPropVal;
- (void)setVersionFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaConfMapsListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaConfMaps elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaConfMapsBaseFilter : KalturaRelatedFilter
@property (nonatomic,copy) NSString* nameEqual;
@property (nonatomic,copy) NSString* relatedHostEqual;
@property (nonatomic,assign) int versionEqual;
- (KalturaFieldType)getTypeOfNameEqual;
- (KalturaFieldType)getTypeOfRelatedHostEqual;
- (KalturaFieldType)getTypeOfVersionEqual;
- (void)setVersionEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaConfMapsFilter : KalturaConfMapsBaseFilter
@end

///////////////////////// services /////////////////////////
