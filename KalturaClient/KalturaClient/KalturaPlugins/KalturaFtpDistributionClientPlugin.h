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
@interface KalturaFtpDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionProviderOrderBy : NSObject
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpScheduledDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionFile : KalturaObjectBase
@property (nonatomic,copy) NSString* assetId;
@property (nonatomic,copy) NSString* filename;
@property (nonatomic,copy) NSString* contents;
@property (nonatomic,copy) NSString* localFilePath;
@property (nonatomic,copy) NSString* version;
@property (nonatomic,copy) NSString* hash;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfFilename;
- (KalturaFieldType)getTypeOfContents;
- (KalturaFieldType)getTypeOfLocalFilePath;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfHash;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,retain) NSMutableArray* filesForDistribution;	// of KalturaFtpDistributionFile elements
- (KalturaFieldType)getTypeOfFilesForDistribution;
- (NSString*)getObjectTypeOfFilesForDistribution;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,assign) int protocol;	// enum KalturaDistributionProtocol, insertonly
@property (nonatomic,copy) NSString* host;
@property (nonatomic,assign) int port;
@property (nonatomic,copy) NSString* basePath;
@property (nonatomic,copy) NSString* username;
@property (nonatomic,copy) NSString* password;
@property (nonatomic,copy) NSString* passphrase;
@property (nonatomic,copy) NSString* sftpPublicKey;
@property (nonatomic,copy) NSString* sftpPrivateKey;
@property (nonatomic,assign) KALTURA_BOOL disableMetadata;
@property (nonatomic,copy) NSString* metadataXslt;
@property (nonatomic,copy) NSString* metadataFilenameXslt;
@property (nonatomic,copy) NSString* flavorAssetFilenameXslt;
@property (nonatomic,copy) NSString* thumbnailAssetFilenameXslt;
@property (nonatomic,copy) NSString* assetFilenameXslt;
@property (nonatomic,copy) NSString* asperaPublicKey;
@property (nonatomic,copy) NSString* asperaPrivateKey;
@property (nonatomic,assign) KALTURA_BOOL sendMetadataAfterAssets;
- (KalturaFieldType)getTypeOfProtocol;
- (KalturaFieldType)getTypeOfHost;
- (KalturaFieldType)getTypeOfPort;
- (KalturaFieldType)getTypeOfBasePath;
- (KalturaFieldType)getTypeOfUsername;
- (KalturaFieldType)getTypeOfPassword;
- (KalturaFieldType)getTypeOfPassphrase;
- (KalturaFieldType)getTypeOfSftpPublicKey;
- (KalturaFieldType)getTypeOfSftpPrivateKey;
- (KalturaFieldType)getTypeOfDisableMetadata;
- (KalturaFieldType)getTypeOfMetadataXslt;
- (KalturaFieldType)getTypeOfMetadataFilenameXslt;
- (KalturaFieldType)getTypeOfFlavorAssetFilenameXslt;
- (KalturaFieldType)getTypeOfThumbnailAssetFilenameXslt;
- (KalturaFieldType)getTypeOfAssetFilenameXslt;
- (KalturaFieldType)getTypeOfAsperaPublicKey;
- (KalturaFieldType)getTypeOfAsperaPrivateKey;
- (KalturaFieldType)getTypeOfSendMetadataAfterAssets;
- (void)setProtocolFromString:(NSString*)aPropVal;
- (void)setPortFromString:(NSString*)aPropVal;
- (void)setDisableMetadataFromString:(NSString*)aPropVal;
- (void)setSendMetadataAfterAssetsFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpScheduledDistributionProvider : KalturaFtpDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionProviderFilter : KalturaFtpDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpScheduledDistributionProviderBaseFilter : KalturaFtpDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpDistributionProfileFilter : KalturaFtpDistributionProfileBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFtpScheduledDistributionProviderFilter : KalturaFtpScheduledDistributionProviderBaseFilter
@end

///////////////////////// services /////////////////////////
