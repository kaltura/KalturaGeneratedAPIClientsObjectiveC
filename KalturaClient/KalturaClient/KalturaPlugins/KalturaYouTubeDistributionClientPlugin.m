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
#import "KalturaYouTubeDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaYouTubeDistributionFeedSpecVersion
+ (NSString*)VERSION_1
{
    return @"1";
}
+ (NSString*)VERSION_2
{
    return @"2";
}
+ (NSString*)VERSION_3
{
    return @"3";
}
@end

@implementation KalturaYouTubeDistributionProfileOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaYouTubeDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaYouTubeDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeDistributionProvider"];
}

@end

@implementation KalturaYouTubeDistributionJobProviderData
@synthesize videoAssetFilePath = _videoAssetFilePath;
@synthesize thumbAssetFilePath = _thumbAssetFilePath;
@synthesize thumbAssetId = _thumbAssetId;
@synthesize captionAssetIds = _captionAssetIds;
@synthesize sftpDirectory = _sftpDirectory;
@synthesize sftpMetadataFilename = _sftpMetadataFilename;
@synthesize currentPlaylists = _currentPlaylists;
@synthesize anewPlaylists = _anewPlaylists;
@synthesize submitXml = _submitXml;
@synthesize updateXml = _updateXml;
@synthesize deleteXml = _deleteXml;
@synthesize googleClientId = _googleClientId;
@synthesize googleClientSecret = _googleClientSecret;
@synthesize googleTokenData = _googleTokenData;
@synthesize captionsCsvMap = _captionsCsvMap;
@synthesize submitCsvMap = _submitCsvMap;
@synthesize updateCsvMap = _updateCsvMap;
@synthesize deleteVideoIds = _deleteVideoIds;

- (KalturaFieldType)getTypeOfVideoAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThumbAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThumbAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionAssetIds
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpDirectory
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpMetadataFilename
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCurrentPlaylists
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfNewPlaylists
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSubmitXml
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpdateXml
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeleteXml
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfGoogleClientId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfGoogleClientSecret
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfGoogleTokenData
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionsCsvMap
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSubmitCsvMap
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUpdateCsvMap
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeleteVideoIds
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"videoAssetFilePath" withString:self.videoAssetFilePath];
    [aParams addIfDefinedKey:@"thumbAssetFilePath" withString:self.thumbAssetFilePath];
    [aParams addIfDefinedKey:@"thumbAssetId" withString:self.thumbAssetId];
    [aParams addIfDefinedKey:@"captionAssetIds" withString:self.captionAssetIds];
    [aParams addIfDefinedKey:@"sftpDirectory" withString:self.sftpDirectory];
    [aParams addIfDefinedKey:@"sftpMetadataFilename" withString:self.sftpMetadataFilename];
    [aParams addIfDefinedKey:@"currentPlaylists" withString:self.currentPlaylists];
    [aParams addIfDefinedKey:@"anewPlaylists" withString:self.anewPlaylists];
    [aParams addIfDefinedKey:@"submitXml" withString:self.submitXml];
    [aParams addIfDefinedKey:@"updateXml" withString:self.updateXml];
    [aParams addIfDefinedKey:@"deleteXml" withString:self.deleteXml];
    [aParams addIfDefinedKey:@"googleClientId" withString:self.googleClientId];
    [aParams addIfDefinedKey:@"googleClientSecret" withString:self.googleClientSecret];
    [aParams addIfDefinedKey:@"googleTokenData" withString:self.googleTokenData];
    [aParams addIfDefinedKey:@"captionsCsvMap" withString:self.captionsCsvMap];
    [aParams addIfDefinedKey:@"submitCsvMap" withString:self.submitCsvMap];
    [aParams addIfDefinedKey:@"updateCsvMap" withString:self.updateCsvMap];
    [aParams addIfDefinedKey:@"deleteVideoIds" withString:self.deleteVideoIds];
}

- (void)dealloc
{
    [self->_videoAssetFilePath release];
    [self->_thumbAssetFilePath release];
    [self->_thumbAssetId release];
    [self->_captionAssetIds release];
    [self->_sftpDirectory release];
    [self->_sftpMetadataFilename release];
    [self->_currentPlaylists release];
    [self->_anewPlaylists release];
    [self->_submitXml release];
    [self->_updateXml release];
    [self->_deleteXml release];
    [self->_googleClientId release];
    [self->_googleClientSecret release];
    [self->_googleTokenData release];
    [self->_captionsCsvMap release];
    [self->_submitCsvMap release];
    [self->_updateCsvMap release];
    [self->_deleteVideoIds release];
    [super dealloc];
}

@end

@implementation KalturaYouTubeDistributionProfile
@synthesize feedSpecVersion = _feedSpecVersion;
@synthesize username = _username;
@synthesize notificationEmail = _notificationEmail;
@synthesize sftpHost = _sftpHost;
@synthesize sftpPort = _sftpPort;
@synthesize sftpLogin = _sftpLogin;
@synthesize sftpPublicKey = _sftpPublicKey;
@synthesize sftpPrivateKey = _sftpPrivateKey;
@synthesize sftpBaseDir = _sftpBaseDir;
@synthesize ownerName = _ownerName;
@synthesize defaultCategory = _defaultCategory;
@synthesize allowComments = _allowComments;
@synthesize allowEmbedding = _allowEmbedding;
@synthesize allowRatings = _allowRatings;
@synthesize allowResponses = _allowResponses;
@synthesize commercialPolicy = _commercialPolicy;
@synthesize ugcPolicy = _ugcPolicy;
@synthesize target = _target;
@synthesize adServerPartnerId = _adServerPartnerId;
@synthesize enableAdServer = _enableAdServer;
@synthesize allowPreRollAds = _allowPreRollAds;
@synthesize allowPostRollAds = _allowPostRollAds;
@synthesize strict = _strict;
@synthesize overrideManualEdits = _overrideManualEdits;
@synthesize urgentReference = _urgentReference;
@synthesize allowSyndication = _allowSyndication;
@synthesize hideViewCount = _hideViewCount;
@synthesize allowAdsenseForVideo = _allowAdsenseForVideo;
@synthesize allowInvideo = _allowInvideo;
@synthesize allowMidRollAds = _allowMidRollAds;
@synthesize instreamStandard = _instreamStandard;
@synthesize instreamTrueview = _instreamTrueview;
@synthesize claimType = _claimType;
@synthesize blockOutsideOwnership = _blockOutsideOwnership;
@synthesize captionAutosync = _captionAutosync;
@synthesize deleteReference = _deleteReference;
@synthesize releaseClaims = _releaseClaims;
@synthesize apiAuthorizeUrl = _apiAuthorizeUrl;
@synthesize privacyStatus = _privacyStatus;
@synthesize enableContentId = _enableContentId;
@synthesize thirdPartyAds = _thirdPartyAds;
@synthesize productListingAds = _productListingAds;
@synthesize domainWhitelist = _domainWhitelist;
@synthesize notifySubscribers = _notifySubscribers;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_sftpPort = KALTURA_UNDEF_INT;
    self->_enableAdServer = KALTURA_UNDEF_BOOL;
    self->_allowPreRollAds = KALTURA_UNDEF_BOOL;
    self->_allowPostRollAds = KALTURA_UNDEF_BOOL;
    self->_allowMidRollAds = KALTURA_UNDEF_BOOL;
    self->_deleteReference = KALTURA_UNDEF_BOOL;
    self->_releaseClaims = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfFeedSpecVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfNotificationEmail
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpPort
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSftpLogin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpPublicKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpPrivateKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpBaseDir
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOwnerName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDefaultCategory
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowComments
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowEmbedding
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowRatings
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowResponses
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCommercialPolicy
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUgcPolicy
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTarget
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAdServerPartnerId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEnableAdServer
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAllowPreRollAds
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAllowPostRollAds
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfStrict
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOverrideManualEdits
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUrgentReference
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowSyndication
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfHideViewCount
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowAdsenseForVideo
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowInvideo
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowMidRollAds
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfInstreamStandard
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfInstreamTrueview
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfClaimType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBlockOutsideOwnership
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionAutosync
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeleteReference
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfReleaseClaims
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfApiAuthorizeUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrivacyStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEnableContentId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThirdPartyAds
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProductListingAds
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDomainWhitelist
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfNotifySubscribers
{
    return KFT_String;
}

- (void)setSftpPortFromString:(NSString*)aPropVal
{
    self.sftpPort = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableAdServerFromString:(NSString*)aPropVal
{
    self.enableAdServer = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setAllowPreRollAdsFromString:(NSString*)aPropVal
{
    self.allowPreRollAds = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setAllowPostRollAdsFromString:(NSString*)aPropVal
{
    self.allowPostRollAds = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setAllowMidRollAdsFromString:(NSString*)aPropVal
{
    self.allowMidRollAds = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setDeleteReferenceFromString:(NSString*)aPropVal
{
    self.deleteReference = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setReleaseClaimsFromString:(NSString*)aPropVal
{
    self.releaseClaims = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeDistributionProfile"];
    [aParams addIfDefinedKey:@"feedSpecVersion" withString:self.feedSpecVersion];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"notificationEmail" withString:self.notificationEmail];
    [aParams addIfDefinedKey:@"sftpHost" withString:self.sftpHost];
    [aParams addIfDefinedKey:@"sftpPort" withInt:self.sftpPort];
    [aParams addIfDefinedKey:@"sftpLogin" withString:self.sftpLogin];
    [aParams addIfDefinedKey:@"sftpPublicKey" withString:self.sftpPublicKey];
    [aParams addIfDefinedKey:@"sftpPrivateKey" withString:self.sftpPrivateKey];
    [aParams addIfDefinedKey:@"sftpBaseDir" withString:self.sftpBaseDir];
    [aParams addIfDefinedKey:@"ownerName" withString:self.ownerName];
    [aParams addIfDefinedKey:@"defaultCategory" withString:self.defaultCategory];
    [aParams addIfDefinedKey:@"allowComments" withString:self.allowComments];
    [aParams addIfDefinedKey:@"allowEmbedding" withString:self.allowEmbedding];
    [aParams addIfDefinedKey:@"allowRatings" withString:self.allowRatings];
    [aParams addIfDefinedKey:@"allowResponses" withString:self.allowResponses];
    [aParams addIfDefinedKey:@"commercialPolicy" withString:self.commercialPolicy];
    [aParams addIfDefinedKey:@"ugcPolicy" withString:self.ugcPolicy];
    [aParams addIfDefinedKey:@"target" withString:self.target];
    [aParams addIfDefinedKey:@"adServerPartnerId" withString:self.adServerPartnerId];
    [aParams addIfDefinedKey:@"enableAdServer" withBool:self.enableAdServer];
    [aParams addIfDefinedKey:@"allowPreRollAds" withBool:self.allowPreRollAds];
    [aParams addIfDefinedKey:@"allowPostRollAds" withBool:self.allowPostRollAds];
    [aParams addIfDefinedKey:@"strict" withString:self.strict];
    [aParams addIfDefinedKey:@"overrideManualEdits" withString:self.overrideManualEdits];
    [aParams addIfDefinedKey:@"urgentReference" withString:self.urgentReference];
    [aParams addIfDefinedKey:@"allowSyndication" withString:self.allowSyndication];
    [aParams addIfDefinedKey:@"hideViewCount" withString:self.hideViewCount];
    [aParams addIfDefinedKey:@"allowAdsenseForVideo" withString:self.allowAdsenseForVideo];
    [aParams addIfDefinedKey:@"allowInvideo" withString:self.allowInvideo];
    [aParams addIfDefinedKey:@"allowMidRollAds" withBool:self.allowMidRollAds];
    [aParams addIfDefinedKey:@"instreamStandard" withString:self.instreamStandard];
    [aParams addIfDefinedKey:@"instreamTrueview" withString:self.instreamTrueview];
    [aParams addIfDefinedKey:@"claimType" withString:self.claimType];
    [aParams addIfDefinedKey:@"blockOutsideOwnership" withString:self.blockOutsideOwnership];
    [aParams addIfDefinedKey:@"captionAutosync" withString:self.captionAutosync];
    [aParams addIfDefinedKey:@"deleteReference" withBool:self.deleteReference];
    [aParams addIfDefinedKey:@"releaseClaims" withBool:self.releaseClaims];
    [aParams addIfDefinedKey:@"apiAuthorizeUrl" withString:self.apiAuthorizeUrl];
    [aParams addIfDefinedKey:@"privacyStatus" withString:self.privacyStatus];
    [aParams addIfDefinedKey:@"enableContentId" withString:self.enableContentId];
    [aParams addIfDefinedKey:@"thirdPartyAds" withString:self.thirdPartyAds];
    [aParams addIfDefinedKey:@"productListingAds" withString:self.productListingAds];
    [aParams addIfDefinedKey:@"domainWhitelist" withString:self.domainWhitelist];
    [aParams addIfDefinedKey:@"notifySubscribers" withString:self.notifySubscribers];
}

- (void)dealloc
{
    [self->_feedSpecVersion release];
    [self->_username release];
    [self->_notificationEmail release];
    [self->_sftpHost release];
    [self->_sftpLogin release];
    [self->_sftpPublicKey release];
    [self->_sftpPrivateKey release];
    [self->_sftpBaseDir release];
    [self->_ownerName release];
    [self->_defaultCategory release];
    [self->_allowComments release];
    [self->_allowEmbedding release];
    [self->_allowRatings release];
    [self->_allowResponses release];
    [self->_commercialPolicy release];
    [self->_ugcPolicy release];
    [self->_target release];
    [self->_adServerPartnerId release];
    [self->_strict release];
    [self->_overrideManualEdits release];
    [self->_urgentReference release];
    [self->_allowSyndication release];
    [self->_hideViewCount release];
    [self->_allowAdsenseForVideo release];
    [self->_allowInvideo release];
    [self->_instreamStandard release];
    [self->_instreamTrueview release];
    [self->_claimType release];
    [self->_blockOutsideOwnership release];
    [self->_captionAutosync release];
    [self->_apiAuthorizeUrl release];
    [self->_privacyStatus release];
    [self->_enableContentId release];
    [self->_thirdPartyAds release];
    [self->_productListingAds release];
    [self->_domainWhitelist release];
    [self->_notifySubscribers release];
    [super dealloc];
}

@end

@implementation KalturaYouTubeDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeDistributionProviderBaseFilter"];
}

@end

@implementation KalturaYouTubeDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeDistributionProviderFilter"];
}

@end

@implementation KalturaYouTubeDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeDistributionProfileBaseFilter"];
}

@end

@implementation KalturaYouTubeDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
