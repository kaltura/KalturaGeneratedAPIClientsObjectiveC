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
@interface KalturaMsnDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
@property (nonatomic,copy) NSString* xml;
- (KalturaFieldType)getTypeOfXml;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* username;
@property (nonatomic,copy) NSString* password;
@property (nonatomic,copy) NSString* domain;
@property (nonatomic,copy) NSString* csId;
@property (nonatomic,copy) NSString* source;
@property (nonatomic,copy) NSString* sourceFriendlyName;
@property (nonatomic,copy) NSString* pageGroup;
@property (nonatomic,assign) int sourceFlavorParamsId;
@property (nonatomic,assign) int wmvFlavorParamsId;
@property (nonatomic,assign) int flvFlavorParamsId;
@property (nonatomic,assign) int slFlavorParamsId;
@property (nonatomic,assign) int slHdFlavorParamsId;
@property (nonatomic,copy) NSString* msnvideoCat;
@property (nonatomic,copy) NSString* msnvideoTop;
@property (nonatomic,copy) NSString* msnvideoTopCat;
- (KalturaFieldType)getTypeOfUsername;
- (KalturaFieldType)getTypeOfPassword;
- (KalturaFieldType)getTypeOfDomain;
- (KalturaFieldType)getTypeOfCsId;
- (KalturaFieldType)getTypeOfSource;
- (KalturaFieldType)getTypeOfSourceFriendlyName;
- (KalturaFieldType)getTypeOfPageGroup;
- (KalturaFieldType)getTypeOfSourceFlavorParamsId;
- (KalturaFieldType)getTypeOfWmvFlavorParamsId;
- (KalturaFieldType)getTypeOfFlvFlavorParamsId;
- (KalturaFieldType)getTypeOfSlFlavorParamsId;
- (KalturaFieldType)getTypeOfSlHdFlavorParamsId;
- (KalturaFieldType)getTypeOfMsnvideoCat;
- (KalturaFieldType)getTypeOfMsnvideoTop;
- (KalturaFieldType)getTypeOfMsnvideoTopCat;
- (void)setSourceFlavorParamsIdFromString:(NSString*)aPropVal;
- (void)setWmvFlavorParamsIdFromString:(NSString*)aPropVal;
- (void)setFlvFlavorParamsIdFromString:(NSString*)aPropVal;
- (void)setSlFlavorParamsIdFromString:(NSString*)aPropVal;
- (void)setSlHdFlavorParamsIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionProviderFilter : KalturaMsnDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMsnDistributionProfileFilter : KalturaMsnDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
