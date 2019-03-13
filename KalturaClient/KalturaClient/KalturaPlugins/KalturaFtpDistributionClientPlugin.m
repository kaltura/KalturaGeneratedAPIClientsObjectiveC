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
#import "KalturaFtpDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaFtpDistributionProfileOrderBy
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

@implementation KalturaFtpDistributionProviderOrderBy
@end

@implementation KalturaFtpScheduledDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaFtpDistributionFile
@synthesize assetId = _assetId;
@synthesize filename = _filename;
@synthesize contents = _contents;
@synthesize localFilePath = _localFilePath;
@synthesize version = _version;
@synthesize hash = _hash;

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilename
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfContents
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLocalFilePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfHash
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionFile"];
    [aParams addIfDefinedKey:@"assetId" withString:self.assetId];
    [aParams addIfDefinedKey:@"filename" withString:self.filename];
    [aParams addIfDefinedKey:@"contents" withString:self.contents];
    [aParams addIfDefinedKey:@"localFilePath" withString:self.localFilePath];
    [aParams addIfDefinedKey:@"version" withString:self.version];
    [aParams addIfDefinedKey:@"hash" withString:self.hash];
}

- (void)dealloc
{
    [self->_assetId release];
    [self->_filename release];
    [self->_contents release];
    [self->_localFilePath release];
    [self->_version release];
    [self->_hash release];
    [super dealloc];
}

@end

@implementation KalturaFtpDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionProvider"];
}

@end

@implementation KalturaFtpDistributionJobProviderData
@synthesize filesForDistribution = _filesForDistribution;

- (KalturaFieldType)getTypeOfFilesForDistribution
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfFilesForDistribution
{
    return @"KalturaFtpDistributionFile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"filesForDistribution" withArray:self.filesForDistribution];
}

- (void)dealloc
{
    [self->_filesForDistribution release];
    [super dealloc];
}

@end

@implementation KalturaFtpDistributionProfile
@synthesize protocol = _protocol;
@synthesize host = _host;
@synthesize port = _port;
@synthesize basePath = _basePath;
@synthesize username = _username;
@synthesize password = _password;
@synthesize passphrase = _passphrase;
@synthesize sftpPublicKey = _sftpPublicKey;
@synthesize sftpPrivateKey = _sftpPrivateKey;
@synthesize disableMetadata = _disableMetadata;
@synthesize metadataXslt = _metadataXslt;
@synthesize metadataFilenameXslt = _metadataFilenameXslt;
@synthesize flavorAssetFilenameXslt = _flavorAssetFilenameXslt;
@synthesize thumbnailAssetFilenameXslt = _thumbnailAssetFilenameXslt;
@synthesize assetFilenameXslt = _assetFilenameXslt;
@synthesize asperaPublicKey = _asperaPublicKey;
@synthesize asperaPrivateKey = _asperaPrivateKey;
@synthesize sendMetadataAfterAssets = _sendMetadataAfterAssets;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_protocol = KALTURA_UNDEF_INT;
    self->_port = KALTURA_UNDEF_INT;
    self->_disableMetadata = KALTURA_UNDEF_BOOL;
    self->_sendMetadataAfterAssets = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfProtocol
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfHost
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPort
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfBasePath
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassphrase
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

- (KalturaFieldType)getTypeOfDisableMetadata
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfMetadataXslt
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataFilenameXslt
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFlavorAssetFilenameXslt
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfThumbnailAssetFilenameXslt
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetFilenameXslt
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

- (KalturaFieldType)getTypeOfSendMetadataAfterAssets
{
    return KFT_Bool;
}

- (void)setProtocolFromString:(NSString*)aPropVal
{
    self.protocol = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPortFromString:(NSString*)aPropVal
{
    self.port = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDisableMetadataFromString:(NSString*)aPropVal
{
    self.disableMetadata = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setSendMetadataAfterAssetsFromString:(NSString*)aPropVal
{
    self.sendMetadataAfterAssets = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionProfile"];
    [aParams addIfDefinedKey:@"protocol" withInt:self.protocol];
    [aParams addIfDefinedKey:@"host" withString:self.host];
    [aParams addIfDefinedKey:@"port" withInt:self.port];
    [aParams addIfDefinedKey:@"basePath" withString:self.basePath];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"password" withString:self.password];
    [aParams addIfDefinedKey:@"passphrase" withString:self.passphrase];
    [aParams addIfDefinedKey:@"sftpPublicKey" withString:self.sftpPublicKey];
    [aParams addIfDefinedKey:@"sftpPrivateKey" withString:self.sftpPrivateKey];
    [aParams addIfDefinedKey:@"disableMetadata" withBool:self.disableMetadata];
    [aParams addIfDefinedKey:@"metadataXslt" withString:self.metadataXslt];
    [aParams addIfDefinedKey:@"metadataFilenameXslt" withString:self.metadataFilenameXslt];
    [aParams addIfDefinedKey:@"flavorAssetFilenameXslt" withString:self.flavorAssetFilenameXslt];
    [aParams addIfDefinedKey:@"thumbnailAssetFilenameXslt" withString:self.thumbnailAssetFilenameXslt];
    [aParams addIfDefinedKey:@"assetFilenameXslt" withString:self.assetFilenameXslt];
    [aParams addIfDefinedKey:@"asperaPublicKey" withString:self.asperaPublicKey];
    [aParams addIfDefinedKey:@"asperaPrivateKey" withString:self.asperaPrivateKey];
    [aParams addIfDefinedKey:@"sendMetadataAfterAssets" withBool:self.sendMetadataAfterAssets];
}

- (void)dealloc
{
    [self->_host release];
    [self->_basePath release];
    [self->_username release];
    [self->_password release];
    [self->_passphrase release];
    [self->_sftpPublicKey release];
    [self->_sftpPrivateKey release];
    [self->_metadataXslt release];
    [self->_metadataFilenameXslt release];
    [self->_flavorAssetFilenameXslt release];
    [self->_thumbnailAssetFilenameXslt release];
    [self->_assetFilenameXslt release];
    [self->_asperaPublicKey release];
    [self->_asperaPrivateKey release];
    [super dealloc];
}

@end

@implementation KalturaFtpScheduledDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpScheduledDistributionProvider"];
}

@end

@implementation KalturaFtpDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionProviderBaseFilter"];
}

@end

@implementation KalturaFtpDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionProviderFilter"];
}

@end

@implementation KalturaFtpDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionProfileBaseFilter"];
}

@end

@implementation KalturaFtpScheduledDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpScheduledDistributionProviderBaseFilter"];
}

@end

@implementation KalturaFtpDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpDistributionProfileFilter"];
}

@end

@implementation KalturaFtpScheduledDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFtpScheduledDistributionProviderFilter"];
}

@end

///////////////////////// services /////////////////////////
