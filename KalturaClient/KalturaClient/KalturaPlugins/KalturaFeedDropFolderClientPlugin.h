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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"
#import "KalturaDropFolderClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolderFileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)FILE_NAME_ASC;
+ (NSString*)FILE_SIZE_ASC;
+ (NSString*)FILE_SIZE_LAST_SET_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)PARSED_FLAVOR_ASC;
+ (NSString*)PARSED_SLUG_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)FILE_NAME_DESC;
+ (NSString*)FILE_SIZE_DESC;
+ (NSString*)FILE_SIZE_LAST_SET_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)PARSED_FLAVOR_DESC;
+ (NSString*)PARSED_SLUG_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolderOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)ID_ASC;
+ (NSString*)NAME_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)ID_DESC;
+ (NSString*)NAME_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFeedItemInfo : KalturaObjectBase
@property (nonatomic,copy) NSString* itemXPath;
@property (nonatomic,copy) NSString* itemPublishDateXPath;
@property (nonatomic,copy) NSString* itemUniqueIdentifierXPath;
@property (nonatomic,copy) NSString* itemContentFileSizeXPath;
@property (nonatomic,copy) NSString* itemContentUrlXPath;
@property (nonatomic,copy) NSString* itemContentBitrateXPath;
@property (nonatomic,copy) NSString* itemHashXPath;
@property (nonatomic,copy) NSString* itemContentXpath;
@property (nonatomic,copy) NSString* contentBitrateAttributeName;
- (KalturaFieldType)getTypeOfItemXPath;
- (KalturaFieldType)getTypeOfItemPublishDateXPath;
- (KalturaFieldType)getTypeOfItemUniqueIdentifierXPath;
- (KalturaFieldType)getTypeOfItemContentFileSizeXPath;
- (KalturaFieldType)getTypeOfItemContentUrlXPath;
- (KalturaFieldType)getTypeOfItemContentBitrateXPath;
- (KalturaFieldType)getTypeOfItemHashXPath;
- (KalturaFieldType)getTypeOfItemContentXpath;
- (KalturaFieldType)getTypeOfContentBitrateAttributeName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolder : KalturaDropFolder
@property (nonatomic,assign) int itemHandlingLimit;
@property (nonatomic,retain) KalturaFeedItemInfo* feedItemInfo;
- (KalturaFieldType)getTypeOfItemHandlingLimit;
- (KalturaFieldType)getTypeOfFeedItemInfo;
- (NSString*)getObjectTypeOfFeedItemInfo;
- (void)setItemHandlingLimitFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolderFile : KalturaDropFolderFile
// MD5 or Sha1 encrypted string
@property (nonatomic,copy) NSString* hash;
// Path of the original Feed content XML
@property (nonatomic,copy) NSString* feedXmlPath;
- (KalturaFieldType)getTypeOfHash;
- (KalturaFieldType)getTypeOfFeedXmlPath;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolderBaseFilter : KalturaDropFolderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolderFileBaseFilter : KalturaDropFolderFileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolderFileFilter : KalturaFeedDropFolderFileBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeedDropFolderFilter : KalturaFeedDropFolderBaseFilter
@end

///////////////////////// services /////////////////////////
