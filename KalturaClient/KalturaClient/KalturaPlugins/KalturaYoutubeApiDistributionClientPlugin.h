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
#import "KalturaContentDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeApiDistributionCaptionAction : NSObject
+ (int)UPDATE_ACTION;
+ (int)SUBMIT_ACTION;
+ (int)DELETE_ACTION;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeApiCaptionDistributionInfo : KalturaObjectBase
@property (nonatomic,copy) NSString* language;
@property (nonatomic,copy) NSString* label;
@property (nonatomic,copy) NSString* filePath;
@property (nonatomic,copy) NSString* remoteId;
@property (nonatomic,assign) int action;	// enum KalturaYouTubeApiDistributionCaptionAction
@property (nonatomic,copy) NSString* version;
@property (nonatomic,copy) NSString* assetId;
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfLabel;
- (KalturaFieldType)getTypeOfFilePath;
- (KalturaFieldType)getTypeOfRemoteId;
- (KalturaFieldType)getTypeOfAction;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfAssetId;
- (void)setActionFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* videoAssetFilePath;
@property (nonatomic,copy) NSString* thumbAssetFilePath;
@property (nonatomic,retain) NSMutableArray* captionsInfo;	// of KalturaYouTubeApiCaptionDistributionInfo elements
- (KalturaFieldType)getTypeOfVideoAssetFilePath;
- (KalturaFieldType)getTypeOfThumbAssetFilePath;
- (KalturaFieldType)getTypeOfCaptionsInfo;
- (NSString*)getObjectTypeOfCaptionsInfo;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* username;
@property (nonatomic,assign) int defaultCategory;
@property (nonatomic,copy) NSString* allowComments;
@property (nonatomic,copy) NSString* allowEmbedding;
@property (nonatomic,copy) NSString* allowRatings;
@property (nonatomic,copy) NSString* allowResponses;
@property (nonatomic,copy) NSString* apiAuthorizeUrl;
@property (nonatomic,copy) NSString* googleClientId;
@property (nonatomic,copy) NSString* googleClientSecret;
@property (nonatomic,copy) NSString* googleTokenData;
@property (nonatomic,assign) KALTURA_BOOL assumeSuccess;
@property (nonatomic,copy) NSString* privacyStatus;
- (KalturaFieldType)getTypeOfUsername;
- (KalturaFieldType)getTypeOfDefaultCategory;
- (KalturaFieldType)getTypeOfAllowComments;
- (KalturaFieldType)getTypeOfAllowEmbedding;
- (KalturaFieldType)getTypeOfAllowRatings;
- (KalturaFieldType)getTypeOfAllowResponses;
- (KalturaFieldType)getTypeOfApiAuthorizeUrl;
- (KalturaFieldType)getTypeOfGoogleClientId;
- (KalturaFieldType)getTypeOfGoogleClientSecret;
- (KalturaFieldType)getTypeOfGoogleTokenData;
- (KalturaFieldType)getTypeOfAssumeSuccess;
- (KalturaFieldType)getTypeOfPrivacyStatus;
- (void)setDefaultCategoryFromString:(NSString*)aPropVal;
- (void)setAssumeSuccessFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProviderFilter : KalturaYoutubeApiDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYoutubeApiDistributionProfileFilter : KalturaYoutubeApiDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
