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
// Copyright (C) 2006-2017  Kaltura Inc.
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
#import "KalturaContentDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionCaptionAction : NSObject
+ (int)UPDATE_ACTION;
+ (int)SUBMIT_ACTION;
+ (int)DELETE_ACTION;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionCaptionFormat : NSObject
+ (int)SRT;
+ (int)STL;
+ (int)TT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionGeoBlockingMapping : NSObject
+ (int)DISABLED;
+ (int)ACCESS_CONTROL;
+ (int)METADATA;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionCaptionInfo : KalturaObjectBase
@property (nonatomic,copy) NSString* language;
@property (nonatomic,copy) NSString* filePath;
@property (nonatomic,copy) NSString* remoteId;
@property (nonatomic,assign) int action;	// enum KalturaDailymotionDistributionCaptionAction
@property (nonatomic,copy) NSString* version;
@property (nonatomic,copy) NSString* assetId;
@property (nonatomic,assign) int format;	// enum KalturaDailymotionDistributionCaptionFormat
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfFilePath;
- (KalturaFieldType)getTypeOfRemoteId;
- (KalturaFieldType)getTypeOfAction;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfFormat;
- (void)setActionFromString:(NSString*)aPropVal;
- (void)setFormatFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* videoAssetFilePath;
@property (nonatomic,copy) NSString* accessControlGeoBlockingOperation;
@property (nonatomic,copy) NSString* accessControlGeoBlockingCountryList;
@property (nonatomic,retain) NSMutableArray* captionsInfo;	// of KalturaDailymotionDistributionCaptionInfo elements
- (KalturaFieldType)getTypeOfVideoAssetFilePath;
- (KalturaFieldType)getTypeOfAccessControlGeoBlockingOperation;
- (KalturaFieldType)getTypeOfAccessControlGeoBlockingCountryList;
- (KalturaFieldType)getTypeOfCaptionsInfo;
- (NSString*)getObjectTypeOfCaptionsInfo;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* user;
@property (nonatomic,copy) NSString* password;
@property (nonatomic,assign) int geoBlockingMapping;	// enum KalturaDailymotionGeoBlockingMapping
- (KalturaFieldType)getTypeOfUser;
- (KalturaFieldType)getTypeOfPassword;
- (KalturaFieldType)getTypeOfGeoBlockingMapping;
- (void)setGeoBlockingMappingFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProviderFilter : KalturaDailymotionDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDailymotionDistributionProfileFilter : KalturaDailymotionDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
