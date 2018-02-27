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
#import "KalturaHuluDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaHuluDistributionProfileOrderBy
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

@implementation KalturaHuluDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaHuluDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHuluDistributionProvider"];
}

@end

@implementation KalturaHuluDistributionJobProviderData
@synthesize videoAssetFilePath = _videoAssetFilePath;
@synthesize thumbAssetFilePath = _thumbAssetFilePath;
@synthesize cuePoints = _cuePoints;
@synthesize fileBaseName = _fileBaseName;
@synthesize captionLocalPaths = _captionLocalPaths;

- (KalturaFieldType)getTypeOfVideoAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThumbAssetFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCuePoints
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfCuePoints
{
    return @"KalturaCuePoint";
}

- (KalturaFieldType)getTypeOfFileBaseName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionLocalPaths
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfCaptionLocalPaths
{
    return @"KalturaString";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHuluDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"videoAssetFilePath" withString:self.videoAssetFilePath];
    [aParams addIfDefinedKey:@"thumbAssetFilePath" withString:self.thumbAssetFilePath];
    [aParams addIfDefinedKey:@"cuePoints" withArray:self.cuePoints];
    [aParams addIfDefinedKey:@"fileBaseName" withString:self.fileBaseName];
    [aParams addIfDefinedKey:@"captionLocalPaths" withArray:self.captionLocalPaths];
}

- (void)dealloc
{
    [self->_videoAssetFilePath release];
    [self->_thumbAssetFilePath release];
    [self->_cuePoints release];
    [self->_fileBaseName release];
    [self->_captionLocalPaths release];
    [super dealloc];
}

@end

@implementation KalturaHuluDistributionProfile
@synthesize sftpHost = _sftpHost;
@synthesize sftpLogin = _sftpLogin;
@synthesize sftpPass = _sftpPass;
@synthesize seriesChannel = _seriesChannel;
@synthesize seriesPrimaryCategory = _seriesPrimaryCategory;
@synthesize seriesAdditionalCategories = _seriesAdditionalCategories;
@synthesize seasonNumber = _seasonNumber;
@synthesize seasonSynopsis = _seasonSynopsis;
@synthesize seasonTuneInInformation = _seasonTuneInInformation;
@synthesize videoMediaType = _videoMediaType;
@synthesize disableEpisodeNumberCustomValidation = _disableEpisodeNumberCustomValidation;
@synthesize protocol = _protocol;
@synthesize asperaHost = _asperaHost;
@synthesize asperaLogin = _asperaLogin;
@synthesize asperaPass = _asperaPass;
@synthesize port = _port;
@synthesize passphrase = _passphrase;
@synthesize asperaPublicKey = _asperaPublicKey;
@synthesize asperaPrivateKey = _asperaPrivateKey;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_disableEpisodeNumberCustomValidation = KALTURA_UNDEF_BOOL;
    self->_protocol = KALTURA_UNDEF_INT;
    self->_port = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfSftpHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpLogin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSftpPass
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSeriesChannel
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSeriesPrimaryCategory
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSeriesAdditionalCategories
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfSeriesAdditionalCategories
{
    return @"KalturaString";
}

- (KalturaFieldType)getTypeOfSeasonNumber
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSeasonSynopsis
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSeasonTuneInInformation
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVideoMediaType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDisableEpisodeNumberCustomValidation
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfProtocol
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAsperaHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAsperaLogin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAsperaPass
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPort
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPassphrase
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAsperaPublicKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAsperaPrivateKey
{
    return KFT_String;
}

- (void)setDisableEpisodeNumberCustomValidationFromString:(NSString*)aPropVal
{
    self.disableEpisodeNumberCustomValidation = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setProtocolFromString:(NSString*)aPropVal
{
    self.protocol = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPortFromString:(NSString*)aPropVal
{
    self.port = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHuluDistributionProfile"];
    [aParams addIfDefinedKey:@"sftpHost" withString:self.sftpHost];
    [aParams addIfDefinedKey:@"sftpLogin" withString:self.sftpLogin];
    [aParams addIfDefinedKey:@"sftpPass" withString:self.sftpPass];
    [aParams addIfDefinedKey:@"seriesChannel" withString:self.seriesChannel];
    [aParams addIfDefinedKey:@"seriesPrimaryCategory" withString:self.seriesPrimaryCategory];
    [aParams addIfDefinedKey:@"seriesAdditionalCategories" withArray:self.seriesAdditionalCategories];
    [aParams addIfDefinedKey:@"seasonNumber" withString:self.seasonNumber];
    [aParams addIfDefinedKey:@"seasonSynopsis" withString:self.seasonSynopsis];
    [aParams addIfDefinedKey:@"seasonTuneInInformation" withString:self.seasonTuneInInformation];
    [aParams addIfDefinedKey:@"videoMediaType" withString:self.videoMediaType];
    [aParams addIfDefinedKey:@"disableEpisodeNumberCustomValidation" withBool:self.disableEpisodeNumberCustomValidation];
    [aParams addIfDefinedKey:@"protocol" withInt:self.protocol];
    [aParams addIfDefinedKey:@"asperaHost" withString:self.asperaHost];
    [aParams addIfDefinedKey:@"asperaLogin" withString:self.asperaLogin];
    [aParams addIfDefinedKey:@"asperaPass" withString:self.asperaPass];
    [aParams addIfDefinedKey:@"port" withInt:self.port];
    [aParams addIfDefinedKey:@"passphrase" withString:self.passphrase];
    [aParams addIfDefinedKey:@"asperaPublicKey" withString:self.asperaPublicKey];
    [aParams addIfDefinedKey:@"asperaPrivateKey" withString:self.asperaPrivateKey];
}

- (void)dealloc
{
    [self->_sftpHost release];
    [self->_sftpLogin release];
    [self->_sftpPass release];
    [self->_seriesChannel release];
    [self->_seriesPrimaryCategory release];
    [self->_seriesAdditionalCategories release];
    [self->_seasonNumber release];
    [self->_seasonSynopsis release];
    [self->_seasonTuneInInformation release];
    [self->_videoMediaType release];
    [self->_asperaHost release];
    [self->_asperaLogin release];
    [self->_asperaPass release];
    [self->_passphrase release];
    [self->_asperaPublicKey release];
    [self->_asperaPrivateKey release];
    [super dealloc];
}

@end

@implementation KalturaHuluDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHuluDistributionProviderBaseFilter"];
}

@end

@implementation KalturaHuluDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHuluDistributionProviderFilter"];
}

@end

@implementation KalturaHuluDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHuluDistributionProfileBaseFilter"];
}

@end

@implementation KalturaHuluDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHuluDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
