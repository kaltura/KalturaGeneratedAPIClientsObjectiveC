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
#import "KalturaCrossKalturaDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaCrossKalturaDistributionProfileOrderBy
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

@implementation KalturaCrossKalturaDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaCrossKalturaDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCrossKalturaDistributionProvider"];
}

@end

@implementation KalturaCrossKalturaDistributionJobProviderData
@synthesize distributedFlavorAssets = _distributedFlavorAssets;
@synthesize distributedThumbAssets = _distributedThumbAssets;
@synthesize distributedMetadata = _distributedMetadata;
@synthesize distributedCaptionAssets = _distributedCaptionAssets;
@synthesize distributedCuePoints = _distributedCuePoints;
@synthesize distributedThumbCuePoints = _distributedThumbCuePoints;
@synthesize distributedTimedThumbAssets = _distributedTimedThumbAssets;

- (KalturaFieldType)getTypeOfDistributedFlavorAssets
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDistributedThumbAssets
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDistributedMetadata
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDistributedCaptionAssets
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDistributedCuePoints
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDistributedThumbCuePoints
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDistributedTimedThumbAssets
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCrossKalturaDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"distributedFlavorAssets" withString:self.distributedFlavorAssets];
    [aParams addIfDefinedKey:@"distributedThumbAssets" withString:self.distributedThumbAssets];
    [aParams addIfDefinedKey:@"distributedMetadata" withString:self.distributedMetadata];
    [aParams addIfDefinedKey:@"distributedCaptionAssets" withString:self.distributedCaptionAssets];
    [aParams addIfDefinedKey:@"distributedCuePoints" withString:self.distributedCuePoints];
    [aParams addIfDefinedKey:@"distributedThumbCuePoints" withString:self.distributedThumbCuePoints];
    [aParams addIfDefinedKey:@"distributedTimedThumbAssets" withString:self.distributedTimedThumbAssets];
}

- (void)dealloc
{
    [self->_distributedFlavorAssets release];
    [self->_distributedThumbAssets release];
    [self->_distributedMetadata release];
    [self->_distributedCaptionAssets release];
    [self->_distributedCuePoints release];
    [self->_distributedThumbCuePoints release];
    [self->_distributedTimedThumbAssets release];
    [super dealloc];
}

@end

@implementation KalturaCrossKalturaDistributionProfile
@synthesize targetServiceUrl = _targetServiceUrl;
@synthesize targetAccountId = _targetAccountId;
@synthesize targetLoginId = _targetLoginId;
@synthesize targetLoginPassword = _targetLoginPassword;
@synthesize metadataXslt = _metadataXslt;
@synthesize metadataXpathsTriggerUpdate = _metadataXpathsTriggerUpdate;
@synthesize distributeCaptions = _distributeCaptions;
@synthesize distributeCuePoints = _distributeCuePoints;
@synthesize distributeRemoteFlavorAssetContent = _distributeRemoteFlavorAssetContent;
@synthesize distributeRemoteThumbAssetContent = _distributeRemoteThumbAssetContent;
@synthesize distributeRemoteCaptionAssetContent = _distributeRemoteCaptionAssetContent;
@synthesize mapAccessControlProfileIds = _mapAccessControlProfileIds;
@synthesize mapConversionProfileIds = _mapConversionProfileIds;
@synthesize mapMetadataProfileIds = _mapMetadataProfileIds;
@synthesize mapStorageProfileIds = _mapStorageProfileIds;
@synthesize mapFlavorParamsIds = _mapFlavorParamsIds;
@synthesize mapThumbParamsIds = _mapThumbParamsIds;
@synthesize mapCaptionParamsIds = _mapCaptionParamsIds;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_targetAccountId = KALTURA_UNDEF_INT;
    self->_distributeCaptions = KALTURA_UNDEF_BOOL;
    self->_distributeCuePoints = KALTURA_UNDEF_BOOL;
    self->_distributeRemoteFlavorAssetContent = KALTURA_UNDEF_BOOL;
    self->_distributeRemoteThumbAssetContent = KALTURA_UNDEF_BOOL;
    self->_distributeRemoteCaptionAssetContent = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfTargetServiceUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTargetAccountId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTargetLoginId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTargetLoginPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataXslt
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMetadataXpathsTriggerUpdate
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMetadataXpathsTriggerUpdate
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfDistributeCaptions
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfDistributeCuePoints
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfDistributeRemoteFlavorAssetContent
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfDistributeRemoteThumbAssetContent
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfDistributeRemoteCaptionAssetContent
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfMapAccessControlProfileIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMapAccessControlProfileIds
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfMapConversionProfileIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMapConversionProfileIds
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfMapMetadataProfileIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMapMetadataProfileIds
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfMapStorageProfileIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMapStorageProfileIds
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfMapFlavorParamsIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMapFlavorParamsIds
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfMapThumbParamsIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMapThumbParamsIds
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfMapCaptionParamsIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMapCaptionParamsIds
{
    return @"KalturaKeyValue";
}

- (void)setTargetAccountIdFromString:(NSString*)aPropVal
{
    self.targetAccountId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDistributeCaptionsFromString:(NSString*)aPropVal
{
    self.distributeCaptions = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setDistributeCuePointsFromString:(NSString*)aPropVal
{
    self.distributeCuePoints = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setDistributeRemoteFlavorAssetContentFromString:(NSString*)aPropVal
{
    self.distributeRemoteFlavorAssetContent = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setDistributeRemoteThumbAssetContentFromString:(NSString*)aPropVal
{
    self.distributeRemoteThumbAssetContent = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setDistributeRemoteCaptionAssetContentFromString:(NSString*)aPropVal
{
    self.distributeRemoteCaptionAssetContent = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCrossKalturaDistributionProfile"];
    [aParams addIfDefinedKey:@"targetServiceUrl" withString:self.targetServiceUrl];
    [aParams addIfDefinedKey:@"targetAccountId" withInt:self.targetAccountId];
    [aParams addIfDefinedKey:@"targetLoginId" withString:self.targetLoginId];
    [aParams addIfDefinedKey:@"targetLoginPassword" withString:self.targetLoginPassword];
    [aParams addIfDefinedKey:@"metadataXslt" withString:self.metadataXslt];
    [aParams addIfDefinedKey:@"metadataXpathsTriggerUpdate" withArray:self.metadataXpathsTriggerUpdate];
    [aParams addIfDefinedKey:@"distributeCaptions" withBool:self.distributeCaptions];
    [aParams addIfDefinedKey:@"distributeCuePoints" withBool:self.distributeCuePoints];
    [aParams addIfDefinedKey:@"distributeRemoteFlavorAssetContent" withBool:self.distributeRemoteFlavorAssetContent];
    [aParams addIfDefinedKey:@"distributeRemoteThumbAssetContent" withBool:self.distributeRemoteThumbAssetContent];
    [aParams addIfDefinedKey:@"distributeRemoteCaptionAssetContent" withBool:self.distributeRemoteCaptionAssetContent];
    [aParams addIfDefinedKey:@"mapAccessControlProfileIds" withArray:self.mapAccessControlProfileIds];
    [aParams addIfDefinedKey:@"mapConversionProfileIds" withArray:self.mapConversionProfileIds];
    [aParams addIfDefinedKey:@"mapMetadataProfileIds" withArray:self.mapMetadataProfileIds];
    [aParams addIfDefinedKey:@"mapStorageProfileIds" withArray:self.mapStorageProfileIds];
    [aParams addIfDefinedKey:@"mapFlavorParamsIds" withArray:self.mapFlavorParamsIds];
    [aParams addIfDefinedKey:@"mapThumbParamsIds" withArray:self.mapThumbParamsIds];
    [aParams addIfDefinedKey:@"mapCaptionParamsIds" withArray:self.mapCaptionParamsIds];
}

- (void)dealloc
{
    [self->_targetServiceUrl release];
    [self->_targetLoginId release];
    [self->_targetLoginPassword release];
    [self->_metadataXslt release];
    [self->_metadataXpathsTriggerUpdate release];
    [self->_mapAccessControlProfileIds release];
    [self->_mapConversionProfileIds release];
    [self->_mapMetadataProfileIds release];
    [self->_mapStorageProfileIds release];
    [self->_mapFlavorParamsIds release];
    [self->_mapThumbParamsIds release];
    [self->_mapCaptionParamsIds release];
    [super dealloc];
}

@end

@implementation KalturaCrossKalturaDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCrossKalturaDistributionProviderBaseFilter"];
}

@end

@implementation KalturaCrossKalturaDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCrossKalturaDistributionProviderFilter"];
}

@end

@implementation KalturaCrossKalturaDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCrossKalturaDistributionProfileBaseFilter"];
}

@end

@implementation KalturaCrossKalturaDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCrossKalturaDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
