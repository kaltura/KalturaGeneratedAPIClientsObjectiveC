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
#import "KalturaYoutubeApiDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaYouTubeApiDistributionCaptionAction
+ (int)UPDATE_ACTION
{
    return 1;
}
+ (int)SUBMIT_ACTION
{
    return 2;
}
+ (int)DELETE_ACTION
{
    return 3;
}
@end

@implementation KalturaYoutubeApiDistributionProfileOrderBy
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

@implementation KalturaYoutubeApiDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaYouTubeApiCaptionDistributionInfo
@synthesize language = _language;
@synthesize label = _label;
@synthesize filePath = _filePath;
@synthesize remoteId = _remoteId;
@synthesize action = _action;
@synthesize version = _version;
@synthesize assetId = _assetId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_action = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLabel
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRemoteId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAction
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_String;
}

- (void)setActionFromString:(NSString*)aPropVal
{
    self.action = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYouTubeApiCaptionDistributionInfo"];
    [aParams addIfDefinedKey:@"language" withString:self.language];
    [aParams addIfDefinedKey:@"label" withString:self.label];
    [aParams addIfDefinedKey:@"filePath" withString:self.filePath];
    [aParams addIfDefinedKey:@"remoteId" withString:self.remoteId];
    [aParams addIfDefinedKey:@"action" withInt:self.action];
    [aParams addIfDefinedKey:@"version" withString:self.version];
    [aParams addIfDefinedKey:@"assetId" withString:self.assetId];
}

- (void)dealloc
{
    [self->_language release];
    [self->_label release];
    [self->_filePath release];
    [self->_remoteId release];
    [self->_version release];
    [self->_assetId release];
    [super dealloc];
}

@end

@implementation KalturaYoutubeApiDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYoutubeApiDistributionProvider"];
}

@end

@implementation KalturaYoutubeApiDistributionJobProviderData
@synthesize videoAssetFilePath = _videoAssetFilePath;
@synthesize thumbAssetFilePath = _thumbAssetFilePath;
@synthesize captionsInfo = _captionsInfo;

- (KalturaFieldType)getTypeOfVideoAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThumbAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionsInfo
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfCaptionsInfo
{
    return @"KalturaYouTubeApiCaptionDistributionInfo";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYoutubeApiDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"videoAssetFilePath" withString:self.videoAssetFilePath];
    [aParams addIfDefinedKey:@"thumbAssetFilePath" withString:self.thumbAssetFilePath];
    [aParams addIfDefinedKey:@"captionsInfo" withArray:self.captionsInfo];
}

- (void)dealloc
{
    [self->_videoAssetFilePath release];
    [self->_thumbAssetFilePath release];
    [self->_captionsInfo release];
    [super dealloc];
}

@end

@implementation KalturaYoutubeApiDistributionProfile
@synthesize username = _username;
@synthesize defaultCategory = _defaultCategory;
@synthesize allowComments = _allowComments;
@synthesize allowEmbedding = _allowEmbedding;
@synthesize allowRatings = _allowRatings;
@synthesize allowResponses = _allowResponses;
@synthesize apiAuthorizeUrl = _apiAuthorizeUrl;
@synthesize googleClientId = _googleClientId;
@synthesize googleClientSecret = _googleClientSecret;
@synthesize googleTokenData = _googleTokenData;
@synthesize assumeSuccess = _assumeSuccess;
@synthesize privacyStatus = _privacyStatus;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_defaultCategory = KALTURA_UNDEF_INT;
    self->_assumeSuccess = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDefaultCategory
{
    return KFT_Int;
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

- (KalturaFieldType)getTypeOfApiAuthorizeUrl
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

- (KalturaFieldType)getTypeOfAssumeSuccess
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPrivacyStatus
{
    return KFT_String;
}

- (void)setDefaultCategoryFromString:(NSString*)aPropVal
{
    self.defaultCategory = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAssumeSuccessFromString:(NSString*)aPropVal
{
    self.assumeSuccess = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYoutubeApiDistributionProfile"];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"defaultCategory" withInt:self.defaultCategory];
    [aParams addIfDefinedKey:@"allowComments" withString:self.allowComments];
    [aParams addIfDefinedKey:@"allowEmbedding" withString:self.allowEmbedding];
    [aParams addIfDefinedKey:@"allowRatings" withString:self.allowRatings];
    [aParams addIfDefinedKey:@"allowResponses" withString:self.allowResponses];
    [aParams addIfDefinedKey:@"apiAuthorizeUrl" withString:self.apiAuthorizeUrl];
    [aParams addIfDefinedKey:@"googleClientId" withString:self.googleClientId];
    [aParams addIfDefinedKey:@"googleClientSecret" withString:self.googleClientSecret];
    [aParams addIfDefinedKey:@"googleTokenData" withString:self.googleTokenData];
    [aParams addIfDefinedKey:@"assumeSuccess" withBool:self.assumeSuccess];
    [aParams addIfDefinedKey:@"privacyStatus" withString:self.privacyStatus];
}

- (void)dealloc
{
    [self->_username release];
    [self->_allowComments release];
    [self->_allowEmbedding release];
    [self->_allowRatings release];
    [self->_allowResponses release];
    [self->_apiAuthorizeUrl release];
    [self->_googleClientId release];
    [self->_googleClientSecret release];
    [self->_googleTokenData release];
    [self->_privacyStatus release];
    [super dealloc];
}

@end

@implementation KalturaYoutubeApiDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYoutubeApiDistributionProviderBaseFilter"];
}

@end

@implementation KalturaYoutubeApiDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYoutubeApiDistributionProviderFilter"];
}

@end

@implementation KalturaYoutubeApiDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYoutubeApiDistributionProfileBaseFilter"];
}

@end

@implementation KalturaYoutubeApiDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaYoutubeApiDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
