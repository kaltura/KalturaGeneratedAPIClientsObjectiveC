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
#import "KalturaCuePointClientPlugin.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* videoAssetFilePath;
@property (nonatomic,copy) NSString* thumbAssetFilePath;
@property (nonatomic,retain) NSMutableArray* cuePoints;	// of KalturaCuePoint elements
@property (nonatomic,copy) NSString* fileBaseName;
@property (nonatomic,retain) NSMutableArray* captionLocalPaths;	// of KalturaString elements
- (KalturaFieldType)getTypeOfVideoAssetFilePath;
- (KalturaFieldType)getTypeOfThumbAssetFilePath;
- (KalturaFieldType)getTypeOfCuePoints;
- (NSString*)getObjectTypeOfCuePoints;
- (KalturaFieldType)getTypeOfFileBaseName;
- (KalturaFieldType)getTypeOfCaptionLocalPaths;
- (NSString*)getObjectTypeOfCaptionLocalPaths;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* sftpHost;
@property (nonatomic,copy) NSString* sftpLogin;
@property (nonatomic,copy) NSString* sftpPass;
@property (nonatomic,copy) NSString* seriesChannel;
@property (nonatomic,copy) NSString* seriesPrimaryCategory;
@property (nonatomic,retain) NSMutableArray* seriesAdditionalCategories;	// of KalturaString elements
@property (nonatomic,copy) NSString* seasonNumber;
@property (nonatomic,copy) NSString* seasonSynopsis;
@property (nonatomic,copy) NSString* seasonTuneInInformation;
@property (nonatomic,copy) NSString* videoMediaType;
@property (nonatomic,assign) KALTURA_BOOL disableEpisodeNumberCustomValidation;
@property (nonatomic,assign) int protocol;	// enum KalturaDistributionProtocol
@property (nonatomic,copy) NSString* asperaHost;
@property (nonatomic,copy) NSString* asperaLogin;
@property (nonatomic,copy) NSString* asperaPass;
@property (nonatomic,assign) int port;
@property (nonatomic,copy) NSString* passphrase;
@property (nonatomic,copy) NSString* asperaPublicKey;
@property (nonatomic,copy) NSString* asperaPrivateKey;
- (KalturaFieldType)getTypeOfSftpHost;
- (KalturaFieldType)getTypeOfSftpLogin;
- (KalturaFieldType)getTypeOfSftpPass;
- (KalturaFieldType)getTypeOfSeriesChannel;
- (KalturaFieldType)getTypeOfSeriesPrimaryCategory;
- (KalturaFieldType)getTypeOfSeriesAdditionalCategories;
- (NSString*)getObjectTypeOfSeriesAdditionalCategories;
- (KalturaFieldType)getTypeOfSeasonNumber;
- (KalturaFieldType)getTypeOfSeasonSynopsis;
- (KalturaFieldType)getTypeOfSeasonTuneInInformation;
- (KalturaFieldType)getTypeOfVideoMediaType;
- (KalturaFieldType)getTypeOfDisableEpisodeNumberCustomValidation;
- (KalturaFieldType)getTypeOfProtocol;
- (KalturaFieldType)getTypeOfAsperaHost;
- (KalturaFieldType)getTypeOfAsperaLogin;
- (KalturaFieldType)getTypeOfAsperaPass;
- (KalturaFieldType)getTypeOfPort;
- (KalturaFieldType)getTypeOfPassphrase;
- (KalturaFieldType)getTypeOfAsperaPublicKey;
- (KalturaFieldType)getTypeOfAsperaPrivateKey;
- (void)setDisableEpisodeNumberCustomValidationFromString:(NSString*)aPropVal;
- (void)setProtocolFromString:(NSString*)aPropVal;
- (void)setPortFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProviderFilter : KalturaHuluDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHuluDistributionProfileFilter : KalturaHuluDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
