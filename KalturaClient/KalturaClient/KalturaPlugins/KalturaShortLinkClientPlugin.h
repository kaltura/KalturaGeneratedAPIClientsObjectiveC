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
@interface KalturaShortLinkStatus : NSObject
+ (int)DISABLED;
+ (int)ENABLED;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaShortLinkOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)EXPIRES_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)EXPIRES_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaShortLink : KalturaObjectBase
@property (nonatomic,copy,readonly) NSString* id;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,assign) int expiresAt;
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,copy) NSString* userId;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,copy) NSString* fullUrl;
@property (nonatomic,assign) int status;	// enum KalturaShortLinkStatus
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfExpiresAt;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfFullUrl;
- (KalturaFieldType)getTypeOfStatus;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
- (void)setExpiresAtFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaShortLinkBaseFilter : KalturaFilter
@property (nonatomic,copy) NSString* idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
@property (nonatomic,assign) int createdAtLessThanOrEqual;
@property (nonatomic,assign) int updatedAtGreaterThanOrEqual;
@property (nonatomic,assign) int updatedAtLessThanOrEqual;
@property (nonatomic,assign) int expiresAtGreaterThanOrEqual;
@property (nonatomic,assign) int expiresAtLessThanOrEqual;
@property (nonatomic,assign) int partnerIdEqual;
@property (nonatomic,copy) NSString* partnerIdIn;
@property (nonatomic,copy) NSString* userIdEqual;
@property (nonatomic,copy) NSString* userIdIn;
@property (nonatomic,copy) NSString* systemNameEqual;
@property (nonatomic,copy) NSString* systemNameIn;
@property (nonatomic,assign) int statusEqual;	// enum KalturaShortLinkStatus
@property (nonatomic,copy) NSString* statusIn;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfUpdatedAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfExpiresAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfExpiresAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (KalturaFieldType)getTypeOfPartnerIdIn;
- (KalturaFieldType)getTypeOfUserIdEqual;
- (KalturaFieldType)getTypeOfUserIdIn;
- (KalturaFieldType)getTypeOfSystemNameEqual;
- (KalturaFieldType)getTypeOfSystemNameIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setUpdatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setExpiresAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setExpiresAtLessThanOrEqualFromString:(NSString*)aPropVal;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaShortLinkListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaShortLink elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaShortLinkFilter : KalturaShortLinkBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Short link service
@interface KalturaShortLinkService : KalturaServiceBase
// Allows you to add a short link object
- (KalturaShortLink*)addWithShortLink:(KalturaShortLink*)aShortLink;
// Mark the short link as deleted
- (KalturaShortLink*)deleteWithId:(NSString*)aId;
// Retrieve an short link object by id
- (KalturaShortLink*)getWithId:(NSString*)aId;
// Serves short link
- (NSString*)gotoWithId:(NSString*)aId withProxy:(KALTURA_BOOL)aProxy;
- (NSString*)gotoWithId:(NSString*)aId;
// List short link objects by filter and pager
- (KalturaShortLinkListResponse*)listWithFilter:(KalturaShortLinkFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaShortLinkListResponse*)listWithFilter:(KalturaShortLinkFilter*)aFilter;
- (KalturaShortLinkListResponse*)list;
// Update existing short link
- (KalturaShortLink*)updateWithId:(NSString*)aId withShortLink:(KalturaShortLink*)aShortLink;
@end

@interface KalturaShortLinkClientPlugin : KalturaClientPlugin
{
	KalturaShortLinkService* _shortLink;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaShortLinkService* shortLink;
@end

