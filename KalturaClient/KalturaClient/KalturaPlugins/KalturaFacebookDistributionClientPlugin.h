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
#import "KalturaContentDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFacebookCaptionDistributionInfo : KalturaObjectBase
@property (nonatomic,copy) NSString* language;
@property (nonatomic,copy) NSString* label;
@property (nonatomic,copy) NSString* filePath;
@property (nonatomic,copy) NSString* remoteId;
@property (nonatomic,copy) NSString* version;
@property (nonatomic,copy) NSString* assetId;
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfLabel;
- (KalturaFieldType)getTypeOfFilePath;
- (KalturaFieldType)getTypeOfRemoteId;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfAssetId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* videoAssetFilePath;
@property (nonatomic,copy) NSString* thumbAssetId;
@property (nonatomic,retain) NSMutableArray* captionsInfo;	// of KalturaFacebookCaptionDistributionInfo elements
- (KalturaFieldType)getTypeOfVideoAssetFilePath;
- (KalturaFieldType)getTypeOfThumbAssetId;
- (KalturaFieldType)getTypeOfCaptionsInfo;
- (NSString*)getObjectTypeOfCaptionsInfo;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* apiAuthorizeUrl;
@property (nonatomic,copy) NSString* pageId;
@property (nonatomic,copy) NSString* pageAccessToken;
@property (nonatomic,copy) NSString* userAccessToken;
@property (nonatomic,copy) NSString* state;
@property (nonatomic,copy) NSString* permissions;
@property (nonatomic,assign) int reRequestPermissions;
- (KalturaFieldType)getTypeOfApiAuthorizeUrl;
- (KalturaFieldType)getTypeOfPageId;
- (KalturaFieldType)getTypeOfPageAccessToken;
- (KalturaFieldType)getTypeOfUserAccessToken;
- (KalturaFieldType)getTypeOfState;
- (KalturaFieldType)getTypeOfPermissions;
- (KalturaFieldType)getTypeOfReRequestPermissions;
- (void)setReRequestPermissionsFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProviderFilter : KalturaFacebookDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookDistributionProfileFilter : KalturaFacebookDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
