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
@interface KalturaCrossKalturaDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
// Key-value array where the keys are IDs of distributed flavor assets in the source account and the values are the matching IDs in the target account
@property (nonatomic,copy) NSString* distributedFlavorAssets;
// Key-value array where the keys are IDs of distributed thumb assets in the source account and the values are the matching IDs in the target account
@property (nonatomic,copy) NSString* distributedThumbAssets;
// Key-value array where the keys are IDs of distributed metadata objects in the source account and the values are the matching IDs in the target account
@property (nonatomic,copy) NSString* distributedMetadata;
// Key-value array where the keys are IDs of distributed caption assets in the source account and the values are the matching IDs in the target account
@property (nonatomic,copy) NSString* distributedCaptionAssets;
// Key-value array where the keys are IDs of distributed cue points in the source account and the values are the matching IDs in the target account
@property (nonatomic,copy) NSString* distributedCuePoints;
// Key-value array where the keys are IDs of distributed thumb cue points in the source account and the values are the matching IDs in the target account
@property (nonatomic,copy) NSString* distributedThumbCuePoints;
// Key-value array where the keys are IDs of distributed timed thumb assets in the source account and the values are the matching IDs in the target account
@property (nonatomic,copy) NSString* distributedTimedThumbAssets;
- (KalturaFieldType)getTypeOfDistributedFlavorAssets;
- (KalturaFieldType)getTypeOfDistributedThumbAssets;
- (KalturaFieldType)getTypeOfDistributedMetadata;
- (KalturaFieldType)getTypeOfDistributedCaptionAssets;
- (KalturaFieldType)getTypeOfDistributedCuePoints;
- (KalturaFieldType)getTypeOfDistributedThumbCuePoints;
- (KalturaFieldType)getTypeOfDistributedTimedThumbAssets;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionProfile : KalturaConfigurableDistributionProfile
@property (nonatomic,copy) NSString* targetServiceUrl;
@property (nonatomic,assign) int targetAccountId;
@property (nonatomic,copy) NSString* targetLoginId;
@property (nonatomic,copy) NSString* targetLoginPassword;
@property (nonatomic,copy) NSString* metadataXslt;
@property (nonatomic,retain) NSMutableArray* metadataXpathsTriggerUpdate;	// of KalturaStringValue elements
@property (nonatomic,assign) KALTURA_BOOL distributeCaptions;
@property (nonatomic,assign) KALTURA_BOOL distributeCuePoints;
@property (nonatomic,assign) KALTURA_BOOL distributeRemoteFlavorAssetContent;
@property (nonatomic,assign) KALTURA_BOOL distributeRemoteThumbAssetContent;
@property (nonatomic,assign) KALTURA_BOOL distributeRemoteCaptionAssetContent;
@property (nonatomic,retain) NSMutableArray* mapAccessControlProfileIds;	// of KalturaKeyValue elements
@property (nonatomic,retain) NSMutableArray* mapConversionProfileIds;	// of KalturaKeyValue elements
@property (nonatomic,retain) NSMutableArray* mapMetadataProfileIds;	// of KalturaKeyValue elements
@property (nonatomic,retain) NSMutableArray* mapStorageProfileIds;	// of KalturaKeyValue elements
@property (nonatomic,retain) NSMutableArray* mapFlavorParamsIds;	// of KalturaKeyValue elements
@property (nonatomic,retain) NSMutableArray* mapThumbParamsIds;	// of KalturaKeyValue elements
@property (nonatomic,retain) NSMutableArray* mapCaptionParamsIds;	// of KalturaKeyValue elements
- (KalturaFieldType)getTypeOfTargetServiceUrl;
- (KalturaFieldType)getTypeOfTargetAccountId;
- (KalturaFieldType)getTypeOfTargetLoginId;
- (KalturaFieldType)getTypeOfTargetLoginPassword;
- (KalturaFieldType)getTypeOfMetadataXslt;
- (KalturaFieldType)getTypeOfMetadataXpathsTriggerUpdate;
- (NSString*)getObjectTypeOfMetadataXpathsTriggerUpdate;
- (KalturaFieldType)getTypeOfDistributeCaptions;
- (KalturaFieldType)getTypeOfDistributeCuePoints;
- (KalturaFieldType)getTypeOfDistributeRemoteFlavorAssetContent;
- (KalturaFieldType)getTypeOfDistributeRemoteThumbAssetContent;
- (KalturaFieldType)getTypeOfDistributeRemoteCaptionAssetContent;
- (KalturaFieldType)getTypeOfMapAccessControlProfileIds;
- (NSString*)getObjectTypeOfMapAccessControlProfileIds;
- (KalturaFieldType)getTypeOfMapConversionProfileIds;
- (NSString*)getObjectTypeOfMapConversionProfileIds;
- (KalturaFieldType)getTypeOfMapMetadataProfileIds;
- (NSString*)getObjectTypeOfMapMetadataProfileIds;
- (KalturaFieldType)getTypeOfMapStorageProfileIds;
- (NSString*)getObjectTypeOfMapStorageProfileIds;
- (KalturaFieldType)getTypeOfMapFlavorParamsIds;
- (NSString*)getObjectTypeOfMapFlavorParamsIds;
- (KalturaFieldType)getTypeOfMapThumbParamsIds;
- (NSString*)getObjectTypeOfMapThumbParamsIds;
- (KalturaFieldType)getTypeOfMapCaptionParamsIds;
- (NSString*)getObjectTypeOfMapCaptionParamsIds;
- (void)setTargetAccountIdFromString:(NSString*)aPropVal;
- (void)setDistributeCaptionsFromString:(NSString*)aPropVal;
- (void)setDistributeCuePointsFromString:(NSString*)aPropVal;
- (void)setDistributeRemoteFlavorAssetContentFromString:(NSString*)aPropVal;
- (void)setDistributeRemoteThumbAssetContentFromString:(NSString*)aPropVal;
- (void)setDistributeRemoteCaptionAssetContentFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionProviderFilter : KalturaCrossKalturaDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCrossKalturaDistributionProfileFilter : KalturaCrossKalturaDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
