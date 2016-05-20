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
// Copyright (C) 2006-2016  Kaltura Inc.
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
#import "KalturaSystemPartnerClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
@implementation KalturaSystemPartnerUsageItem
@synthesize partnerId = _partnerId;
@synthesize partnerName = _partnerName;
@synthesize partnerStatus = _partnerStatus;
@synthesize partnerPackage = _partnerPackage;
@synthesize partnerCreatedAt = _partnerCreatedAt;
@synthesize views = _views;
@synthesize plays = _plays;
@synthesize entriesCount = _entriesCount;
@synthesize totalEntriesCount = _totalEntriesCount;
@synthesize videoEntriesCount = _videoEntriesCount;
@synthesize imageEntriesCount = _imageEntriesCount;
@synthesize audioEntriesCount = _audioEntriesCount;
@synthesize mixEntriesCount = _mixEntriesCount;
@synthesize bandwidth = _bandwidth;
@synthesize totalStorage = _totalStorage;
@synthesize storage = _storage;
@synthesize peakStorage = _peakStorage;
@synthesize avgStorage = _avgStorage;
@synthesize combinedBandwidthStorage = _combinedBandwidthStorage;
@synthesize deletedStorage = _deletedStorage;
@synthesize transcodingUsage = _transcodingUsage;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_partnerStatus = KALTURA_UNDEF_INT;
    self->_partnerPackage = KALTURA_UNDEF_INT;
    self->_partnerCreatedAt = KALTURA_UNDEF_INT;
    self->_views = KALTURA_UNDEF_INT;
    self->_plays = KALTURA_UNDEF_INT;
    self->_entriesCount = KALTURA_UNDEF_INT;
    self->_totalEntriesCount = KALTURA_UNDEF_INT;
    self->_videoEntriesCount = KALTURA_UNDEF_INT;
    self->_imageEntriesCount = KALTURA_UNDEF_INT;
    self->_audioEntriesCount = KALTURA_UNDEF_INT;
    self->_mixEntriesCount = KALTURA_UNDEF_INT;
    self->_bandwidth = KALTURA_UNDEF_FLOAT;
    self->_totalStorage = KALTURA_UNDEF_FLOAT;
    self->_storage = KALTURA_UNDEF_FLOAT;
    self->_peakStorage = KALTURA_UNDEF_FLOAT;
    self->_avgStorage = KALTURA_UNDEF_FLOAT;
    self->_combinedBandwidthStorage = KALTURA_UNDEF_FLOAT;
    self->_deletedStorage = KALTURA_UNDEF_FLOAT;
    self->_transcodingUsage = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPartnerStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerPackage
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfViews
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPlays
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEntriesCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTotalEntriesCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfVideoEntriesCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfImageEntriesCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAudioEntriesCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMixEntriesCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfBandwidth
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfTotalStorage
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfStorage
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfPeakStorage
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfAvgStorage
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfCombinedBandwidthStorage
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfDeletedStorage
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfTranscodingUsage
{
    return KFT_Float;
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerStatusFromString:(NSString*)aPropVal
{
    self.partnerStatus = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerPackageFromString:(NSString*)aPropVal
{
    self.partnerPackage = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerCreatedAtFromString:(NSString*)aPropVal
{
    self.partnerCreatedAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setViewsFromString:(NSString*)aPropVal
{
    self.views = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPlaysFromString:(NSString*)aPropVal
{
    self.plays = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEntriesCountFromString:(NSString*)aPropVal
{
    self.entriesCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTotalEntriesCountFromString:(NSString*)aPropVal
{
    self.totalEntriesCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setVideoEntriesCountFromString:(NSString*)aPropVal
{
    self.videoEntriesCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setImageEntriesCountFromString:(NSString*)aPropVal
{
    self.imageEntriesCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAudioEntriesCountFromString:(NSString*)aPropVal
{
    self.audioEntriesCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMixEntriesCountFromString:(NSString*)aPropVal
{
    self.mixEntriesCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setBandwidthFromString:(NSString*)aPropVal
{
    self.bandwidth = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setTotalStorageFromString:(NSString*)aPropVal
{
    self.totalStorage = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setStorageFromString:(NSString*)aPropVal
{
    self.storage = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setPeakStorageFromString:(NSString*)aPropVal
{
    self.peakStorage = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setAvgStorageFromString:(NSString*)aPropVal
{
    self.avgStorage = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setCombinedBandwidthStorageFromString:(NSString*)aPropVal
{
    self.combinedBandwidthStorage = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setDeletedStorageFromString:(NSString*)aPropVal
{
    self.deletedStorage = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setTranscodingUsageFromString:(NSString*)aPropVal
{
    self.transcodingUsage = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSystemPartnerUsageItem"];
    [aParams addIfDefinedKey:@"partnerId" withInt:self.partnerId];
    [aParams addIfDefinedKey:@"partnerName" withString:self.partnerName];
    [aParams addIfDefinedKey:@"partnerStatus" withInt:self.partnerStatus];
    [aParams addIfDefinedKey:@"partnerPackage" withInt:self.partnerPackage];
    [aParams addIfDefinedKey:@"partnerCreatedAt" withInt:self.partnerCreatedAt];
    [aParams addIfDefinedKey:@"views" withInt:self.views];
    [aParams addIfDefinedKey:@"plays" withInt:self.plays];
    [aParams addIfDefinedKey:@"entriesCount" withInt:self.entriesCount];
    [aParams addIfDefinedKey:@"totalEntriesCount" withInt:self.totalEntriesCount];
    [aParams addIfDefinedKey:@"videoEntriesCount" withInt:self.videoEntriesCount];
    [aParams addIfDefinedKey:@"imageEntriesCount" withInt:self.imageEntriesCount];
    [aParams addIfDefinedKey:@"audioEntriesCount" withInt:self.audioEntriesCount];
    [aParams addIfDefinedKey:@"mixEntriesCount" withInt:self.mixEntriesCount];
    [aParams addIfDefinedKey:@"bandwidth" withFloat:self.bandwidth];
    [aParams addIfDefinedKey:@"totalStorage" withFloat:self.totalStorage];
    [aParams addIfDefinedKey:@"storage" withFloat:self.storage];
    [aParams addIfDefinedKey:@"peakStorage" withFloat:self.peakStorage];
    [aParams addIfDefinedKey:@"avgStorage" withFloat:self.avgStorage];
    [aParams addIfDefinedKey:@"combinedBandwidthStorage" withFloat:self.combinedBandwidthStorage];
    [aParams addIfDefinedKey:@"deletedStorage" withFloat:self.deletedStorage];
    [aParams addIfDefinedKey:@"transcodingUsage" withFloat:self.transcodingUsage];
}

- (void)dealloc
{
    [self->_partnerName release];
    [super dealloc];
}

@end

@implementation KalturaSystemPartnerUsageFilter
@synthesize fromDate = _fromDate;
@synthesize toDate = _toDate;
@synthesize timezoneOffset = _timezoneOffset;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_fromDate = KALTURA_UNDEF_INT;
    self->_toDate = KALTURA_UNDEF_INT;
    self->_timezoneOffset = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFromDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfToDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTimezoneOffset
{
    return KFT_Int;
}

- (void)setFromDateFromString:(NSString*)aPropVal
{
    self.fromDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setToDateFromString:(NSString*)aPropVal
{
    self.toDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTimezoneOffsetFromString:(NSString*)aPropVal
{
    self.timezoneOffset = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSystemPartnerUsageFilter"];
    [aParams addIfDefinedKey:@"fromDate" withInt:self.fromDate];
    [aParams addIfDefinedKey:@"toDate" withInt:self.toDate];
    [aParams addIfDefinedKey:@"timezoneOffset" withInt:self.timezoneOffset];
}

@end

@implementation KalturaSystemPartnerUsageListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaSystemPartnerUsageItem";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSystemPartnerUsageListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaSystemPartnerFilter
@synthesize partnerParentIdEqual = _partnerParentIdEqual;
@synthesize partnerParentIdIn = _partnerParentIdIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_partnerParentIdEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPartnerParentIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerParentIdIn
{
    return KFT_String;
}

- (void)setPartnerParentIdEqualFromString:(NSString*)aPropVal
{
    self.partnerParentIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSystemPartnerFilter"];
    [aParams addIfDefinedKey:@"partnerParentIdEqual" withInt:self.partnerParentIdEqual];
    [aParams addIfDefinedKey:@"partnerParentIdIn" withString:self.partnerParentIdIn];
}

- (void)dealloc
{
    [self->_partnerParentIdIn release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaSystemPartnerClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaSystemPartnerService*)systemPartner
{
    if (self->_systemPartner == nil)
    	self->_systemPartner = [[KalturaSystemPartnerService alloc] initWithClient:self.client];
    return self->_systemPartner;
}

- (void)dealloc
{
    [self->_systemPartner release];
	[super dealloc];
}

@end

