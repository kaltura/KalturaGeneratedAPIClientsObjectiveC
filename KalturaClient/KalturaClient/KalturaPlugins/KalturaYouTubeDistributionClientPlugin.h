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
// Copyright (C) 2006-2018  Kaltura Inc.
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
@interface KalturaYouTubeDistributionFeedSpecVersion : NSObject
+ (NSString*)VERSION_1;
+ (NSString*)VERSION_2;
+ (NSString*)VERSION_3;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* videoAssetFilePath;
@property (nonatomic,copy) NSString* thumbAssetFilePath;
@property (nonatomic,copy) NSString* captionAssetIds;
@property (nonatomic,copy) NSString* sftpDirectory;
@property (nonatomic,copy) NSString* sftpMetadataFilename;
@property (nonatomic,copy) NSString* currentPlaylists;
@property (nonatomic,copy) NSString* anewPlaylists;
@property (nonatomic,copy) NSString* submitXml;
@property (nonatomic,copy) NSString* updateXml;
@property (nonatomic,copy) NSString* deleteXml;
@property (nonatomic,copy) NSString* googleClientId;
@property (nonatomic,copy) NSString* googleClientSecret;
@property (nonatomic,copy) NSString* googleTokenData;
@property (nonatomic,copy) NSString* captionsCsvMap;
@property (nonatomic,copy) NSString* submitCsvMap;
@property (nonatomic,copy) NSString* updateCsvMap;
@property (nonatomic,copy) NSString* deleteVideoIds;
- (KalturaFieldType)getTypeOfVideoAssetFilePath;
- (KalturaFieldType)getTypeOfThumbAssetFilePath;
- (KalturaFieldType)getTypeOfCaptionAssetIds;
- (KalturaFieldType)getTypeOfSftpDirectory;
- (KalturaFieldType)getTypeOfSftpMetadataFilename;
- (KalturaFieldType)getTypeOfCurrentPlaylists;
- (KalturaFieldType)getTypeOfNewPlaylists;
- (KalturaFieldType)getTypeOfSubmitXml;
- (KalturaFieldType)getTypeOfUpdateXml;
- (KalturaFieldType)getTypeOfDeleteXml;
- (KalturaFieldType)getTypeOfGoogleClientId;
- (KalturaFieldType)getTypeOfGoogleClientSecret;
- (KalturaFieldType)getTypeOfGoogleTokenData;
- (KalturaFieldType)getTypeOfCaptionsCsvMap;
- (KalturaFieldType)getTypeOfSubmitCsvMap;
- (KalturaFieldType)getTypeOfUpdateCsvMap;
- (KalturaFieldType)getTypeOfDeleteVideoIds;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* feedSpecVersion;	// enum KalturaYouTubeDistributionFeedSpecVersion
@property (nonatomic,copy) NSString* username;
@property (nonatomic,copy) NSString* notificationEmail;
@property (nonatomic,copy) NSString* sftpHost;
@property (nonatomic,assign) int sftpPort;
@property (nonatomic,copy) NSString* sftpLogin;
@property (nonatomic,copy) NSString* sftpPublicKey;
@property (nonatomic,copy) NSString* sftpPrivateKey;
@property (nonatomic,copy) NSString* sftpBaseDir;
@property (nonatomic,copy) NSString* ownerName;
@property (nonatomic,copy) NSString* defaultCategory;
@property (nonatomic,copy) NSString* allowComments;
@property (nonatomic,copy) NSString* allowEmbedding;
@property (nonatomic,copy) NSString* allowRatings;
@property (nonatomic,copy) NSString* allowResponses;
@property (nonatomic,copy) NSString* commercialPolicy;
@property (nonatomic,copy) NSString* ugcPolicy;
@property (nonatomic,copy) NSString* target;
@property (nonatomic,copy) NSString* adServerPartnerId;
@property (nonatomic,assign) KALTURA_BOOL enableAdServer;
@property (nonatomic,assign) KALTURA_BOOL allowPreRollAds;
@property (nonatomic,assign) KALTURA_BOOL allowPostRollAds;
@property (nonatomic,copy) NSString* strict;
@property (nonatomic,copy) NSString* overrideManualEdits;
@property (nonatomic,copy) NSString* urgentReference;
@property (nonatomic,copy) NSString* allowSyndication;
@property (nonatomic,copy) NSString* hideViewCount;
@property (nonatomic,copy) NSString* allowAdsenseForVideo;
@property (nonatomic,copy) NSString* allowInvideo;
@property (nonatomic,assign) KALTURA_BOOL allowMidRollAds;
@property (nonatomic,copy) NSString* instreamStandard;
@property (nonatomic,copy) NSString* instreamTrueview;
@property (nonatomic,copy) NSString* claimType;
@property (nonatomic,copy) NSString* blockOutsideOwnership;
@property (nonatomic,copy) NSString* captionAutosync;
@property (nonatomic,assign) KALTURA_BOOL deleteReference;
@property (nonatomic,assign) KALTURA_BOOL releaseClaims;
@property (nonatomic,copy) NSString* apiAuthorizeUrl;
@property (nonatomic,copy) NSString* privacyStatus;
@property (nonatomic,copy) NSString* enableContentId;
@property (nonatomic,copy) NSString* thirdPartyAds;
@property (nonatomic,copy) NSString* productListingAds;
@property (nonatomic,copy) NSString* domainWhitelist;
@property (nonatomic,copy) NSString* notifySubscribers;
- (KalturaFieldType)getTypeOfFeedSpecVersion;
- (KalturaFieldType)getTypeOfUsername;
- (KalturaFieldType)getTypeOfNotificationEmail;
- (KalturaFieldType)getTypeOfSftpHost;
- (KalturaFieldType)getTypeOfSftpPort;
- (KalturaFieldType)getTypeOfSftpLogin;
- (KalturaFieldType)getTypeOfSftpPublicKey;
- (KalturaFieldType)getTypeOfSftpPrivateKey;
- (KalturaFieldType)getTypeOfSftpBaseDir;
- (KalturaFieldType)getTypeOfOwnerName;
- (KalturaFieldType)getTypeOfDefaultCategory;
- (KalturaFieldType)getTypeOfAllowComments;
- (KalturaFieldType)getTypeOfAllowEmbedding;
- (KalturaFieldType)getTypeOfAllowRatings;
- (KalturaFieldType)getTypeOfAllowResponses;
- (KalturaFieldType)getTypeOfCommercialPolicy;
- (KalturaFieldType)getTypeOfUgcPolicy;
- (KalturaFieldType)getTypeOfTarget;
- (KalturaFieldType)getTypeOfAdServerPartnerId;
- (KalturaFieldType)getTypeOfEnableAdServer;
- (KalturaFieldType)getTypeOfAllowPreRollAds;
- (KalturaFieldType)getTypeOfAllowPostRollAds;
- (KalturaFieldType)getTypeOfStrict;
- (KalturaFieldType)getTypeOfOverrideManualEdits;
- (KalturaFieldType)getTypeOfUrgentReference;
- (KalturaFieldType)getTypeOfAllowSyndication;
- (KalturaFieldType)getTypeOfHideViewCount;
- (KalturaFieldType)getTypeOfAllowAdsenseForVideo;
- (KalturaFieldType)getTypeOfAllowInvideo;
- (KalturaFieldType)getTypeOfAllowMidRollAds;
- (KalturaFieldType)getTypeOfInstreamStandard;
- (KalturaFieldType)getTypeOfInstreamTrueview;
- (KalturaFieldType)getTypeOfClaimType;
- (KalturaFieldType)getTypeOfBlockOutsideOwnership;
- (KalturaFieldType)getTypeOfCaptionAutosync;
- (KalturaFieldType)getTypeOfDeleteReference;
- (KalturaFieldType)getTypeOfReleaseClaims;
- (KalturaFieldType)getTypeOfApiAuthorizeUrl;
- (KalturaFieldType)getTypeOfPrivacyStatus;
- (KalturaFieldType)getTypeOfEnableContentId;
- (KalturaFieldType)getTypeOfThirdPartyAds;
- (KalturaFieldType)getTypeOfProductListingAds;
- (KalturaFieldType)getTypeOfDomainWhitelist;
- (KalturaFieldType)getTypeOfNotifySubscribers;
- (void)setSftpPortFromString:(NSString*)aPropVal;
- (void)setEnableAdServerFromString:(NSString*)aPropVal;
- (void)setAllowPreRollAdsFromString:(NSString*)aPropVal;
- (void)setAllowPostRollAdsFromString:(NSString*)aPropVal;
- (void)setAllowMidRollAdsFromString:(NSString*)aPropVal;
- (void)setDeleteReferenceFromString:(NSString*)aPropVal;
- (void)setReleaseClaimsFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProviderFilter : KalturaYouTubeDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaYouTubeDistributionProfileFilter : KalturaYouTubeDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
