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
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaTag : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,copy,readonly) NSString* tag;
@property (nonatomic,copy,readonly) NSString* taggedObjectType;	// enum KalturaTaggedObjectType
@property (nonatomic,assign,readonly) int partnerId;
@property (nonatomic,assign,readonly) int instanceCount;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfTag;
- (KalturaFieldType)getTypeOfTaggedObjectType;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfInstanceCount;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setInstanceCountFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaIndexTagsByPrivacyContextJobData : KalturaJobData
@property (nonatomic,assign) int changedCategoryId;
@property (nonatomic,copy) NSString* deletedPrivacyContexts;
@property (nonatomic,copy) NSString* addedPrivacyContexts;
- (KalturaFieldType)getTypeOfChangedCategoryId;
- (KalturaFieldType)getTypeOfDeletedPrivacyContexts;
- (KalturaFieldType)getTypeOfAddedPrivacyContexts;
- (void)setChangedCategoryIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTagFilter : KalturaFilter
@property (nonatomic,copy) NSString* objectTypeEqual;	// enum KalturaTaggedObjectType
@property (nonatomic,copy) NSString* tagEqual;
@property (nonatomic,copy) NSString* tagStartsWith;
@property (nonatomic,assign) int instanceCountEqual;
@property (nonatomic,assign) int instanceCountIn;
- (KalturaFieldType)getTypeOfObjectTypeEqual;
- (KalturaFieldType)getTypeOfTagEqual;
- (KalturaFieldType)getTypeOfTagStartsWith;
- (KalturaFieldType)getTypeOfInstanceCountEqual;
- (KalturaFieldType)getTypeOfInstanceCountIn;
- (void)setInstanceCountEqualFromString:(NSString*)aPropVal;
- (void)setInstanceCountInFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTagListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaTag elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Search object tags
@interface KalturaTagService : KalturaServiceBase
// Action goes over all tags with instanceCount==0 and checks whether they need to be removed from the DB. Returns number of removed tags.
- (int)deletePending;
- (void)indexCategoryEntryTagsWithCategoryId:(int)aCategoryId withPcToDecrement:(NSString*)aPcToDecrement withPcToIncrement:(NSString*)aPcToIncrement;
- (KalturaTagListResponse*)searchWithTagFilter:(KalturaTagFilter*)aTagFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaTagListResponse*)searchWithTagFilter:(KalturaTagFilter*)aTagFilter;
@end

@interface KalturaTagSearchClientPlugin : KalturaClientPlugin
{
	KalturaTagService* _tag;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaTagService* tag;
@end

