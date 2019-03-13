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
#import "KalturaFileSyncClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaTrackEntryEventType : NSObject
+ (int)UPLOADED_FILE;
+ (int)WEBCAM_COMPLETED;
+ (int)IMPORT_STARTED;
+ (int)ADD_ENTRY;
+ (int)UPDATE_ENTRY;
+ (int)DELETED_ENTRY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUiConfAdminOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaTrackEntry : KalturaObjectBase
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int trackEventType;	// enum KalturaTrackEntryEventType
@property (nonatomic,copy) NSString* psVersion;
@property (nonatomic,copy) NSString* context;
@property (nonatomic,assign) int partnerId;
@property (nonatomic,copy) NSString* entryId;
@property (nonatomic,copy) NSString* hostName;
@property (nonatomic,copy) NSString* userId;
@property (nonatomic,copy) NSString* changedProperties;
@property (nonatomic,copy) NSString* paramStr1;
@property (nonatomic,copy) NSString* paramStr2;
@property (nonatomic,copy) NSString* paramStr3;
@property (nonatomic,copy) NSString* ks;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,assign) int createdAt;
@property (nonatomic,assign) int updatedAt;
@property (nonatomic,copy) NSString* userIp;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfTrackEventType;
- (KalturaFieldType)getTypeOfPsVersion;
- (KalturaFieldType)getTypeOfContext;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfEntryId;
- (KalturaFieldType)getTypeOfHostName;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfChangedProperties;
- (KalturaFieldType)getTypeOfParamStr1;
- (KalturaFieldType)getTypeOfParamStr2;
- (KalturaFieldType)getTypeOfParamStr3;
- (KalturaFieldType)getTypeOfKs;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfUserIp;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setTrackEventTypeFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUiConfAdmin : KalturaUiConf
@property (nonatomic,assign) KALTURA_BOOL isPublic;
- (KalturaFieldType)getTypeOfIsPublic;
- (void)setIsPublicFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTrackEntryListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaTrackEntry elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUiConfAdminListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaUiConfAdmin elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUiConfAdminBaseFilter : KalturaUiConfFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUiConfAdminFilter : KalturaUiConfAdminBaseFilter
@end

///////////////////////// services /////////////////////////
