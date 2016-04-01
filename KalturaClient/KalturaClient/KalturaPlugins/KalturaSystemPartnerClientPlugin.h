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
// @package Kaltura
// @subpackage Client
#import "../KalturaClient.h"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerLimitType : NSObject
+ (NSString*)ACCESS_CONTROLS;
+ (NSString*)ADMIN_LOGIN_USERS;
+ (NSString*)BULK_SIZE;
+ (NSString*)END_USERS;
+ (NSString*)ENTRIES;
+ (NSString*)LIVE_STREAM_INPUTS;
+ (NSString*)LIVE_STREAM_OUTPUTS;
+ (NSString*)LOGIN_USERS;
+ (NSString*)MONTHLY_BANDWIDTH;
+ (NSString*)MONTHLY_STORAGE;
+ (NSString*)MONTHLY_STORAGE_AND_BANDWIDTH;
+ (NSString*)MONTHLY_STREAM_ENTRIES;
+ (NSString*)PUBLISHERS;
+ (NSString*)USER_LOGIN_ATTEMPTS;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerLimit : KalturaObjectBase
@property (nonatomic,copy) NSString* type;	// enum KalturaSystemPartnerLimitType
@property (nonatomic,assign) double max;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfMax;
- (void)setMaxFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerConfiguration : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,copy) NSString* partnerName;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,copy) NSString* adminName;
@property (nonatomic,copy) NSString* adminEmail;
@property (nonatomic,copy) NSString* host;
@property (nonatomic,copy) NSString* cdnHost;
@property (nonatomic,copy) NSString* cdnHostWhiteList;
@property (nonatomic,copy) NSString* thumbnailHost;
@property (nonatomic,assign) int partnerPackage;
@property (nonatomic,assign) int monitorUsage;
@property (nonatomic,assign) KALTURA_BOOL moderateContent;
@property (nonatomic,assign) KALTURA_BOOL storageDeleteFromKaltura;
@property (nonatomic,assign) int storageServePriority;	// enum KalturaStorageServePriority
@property (nonatomic,assign) int kmcVersion;
@property (nonatomic,assign) int restrictThumbnailByKs;
@property (nonatomic,assign) KALTURA_BOOL supportAnimatedThumbnails;
@property (nonatomic,assign) int defThumbOffset;
@property (nonatomic,assign) int defThumbDensity;
@property (nonatomic,assign) int userSessionRoleId;
@property (nonatomic,assign) int adminSessionRoleId;
@property (nonatomic,copy) NSString* alwaysAllowedPermissionNames;
@property (nonatomic,assign) KALTURA_BOOL importRemoteSourceForConvert;
@property (nonatomic,retain) NSMutableArray* permissions;	// of KalturaPermission elements
@property (nonatomic,copy) NSString* notificationsConfig;
@property (nonatomic,assign) KALTURA_BOOL allowMultiNotification;
@property (nonatomic,assign) int loginBlockPeriod;
@property (nonatomic,assign) int numPrevPassToKeep;
@property (nonatomic,assign) int passReplaceFreq;
@property (nonatomic,assign) KALTURA_BOOL isFirstLogin;
@property (nonatomic,assign) int partnerGroupType;	// enum KalturaPartnerGroupType
@property (nonatomic,assign) int partnerParentId;
@property (nonatomic,retain) NSMutableArray* limits;	// of KalturaSystemPartnerLimit elements
// http/rtmp/hdnetwork
@property (nonatomic,copy) NSString* streamerType;
// http/https, rtmp/rtmpe
@property (nonatomic,copy) NSString* mediaProtocol;
@property (nonatomic,copy) NSString* extendedFreeTrailExpiryReason;
// Unix timestamp (In seconds)
@property (nonatomic,assign) int extendedFreeTrailExpiryDate;
@property (nonatomic,assign) int extendedFreeTrail;
@property (nonatomic,copy) NSString* crmId;
@property (nonatomic,copy) NSString* referenceId;
@property (nonatomic,copy) NSString* crmLink;
@property (nonatomic,copy) NSString* verticalClasiffication;
@property (nonatomic,copy) NSString* partnerPackageClassOfService;
@property (nonatomic,assign) KALTURA_BOOL enableBulkUploadNotificationsEmails;
@property (nonatomic,copy) NSString* deliveryProfileIds;
@property (nonatomic,assign) KALTURA_BOOL enforceDelivery;
@property (nonatomic,copy) NSString* bulkUploadNotificationsEmail;
@property (nonatomic,assign) KALTURA_BOOL internalUse;
@property (nonatomic,copy) NSString* defaultLiveStreamEntrySourceType;	// enum KalturaSourceType
@property (nonatomic,copy) NSString* liveStreamProvisionParams;
@property (nonatomic,retain) KalturaBaseEntryFilter* autoModerateEntryFilter;
@property (nonatomic,copy) NSString* logoutUrl;
@property (nonatomic,assign) KALTURA_BOOL defaultEntitlementEnforcement;
@property (nonatomic,assign) int cacheFlavorVersion;
@property (nonatomic,assign) int apiAccessControlId;
@property (nonatomic,copy) NSString* defaultDeliveryType;
@property (nonatomic,copy) NSString* defaultEmbedCodeType;
@property (nonatomic,retain) NSMutableArray* customDeliveryTypes;	// of KalturaKeyBooleanValue elements
@property (nonatomic,assign) KALTURA_BOOL restrictEntryByMetadata;
@property (nonatomic,copy) NSString* language;	// enum KalturaLanguageCode
@property (nonatomic,copy) NSString* audioThumbEntryId;
@property (nonatomic,copy) NSString* liveThumbEntryId;
@property (nonatomic,assign) KALTURA_BOOL timeAlignedRenditions;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfAdminName;
- (KalturaFieldType)getTypeOfAdminEmail;
- (KalturaFieldType)getTypeOfHost;
- (KalturaFieldType)getTypeOfCdnHost;
- (KalturaFieldType)getTypeOfCdnHostWhiteList;
- (KalturaFieldType)getTypeOfThumbnailHost;
- (KalturaFieldType)getTypeOfPartnerPackage;
- (KalturaFieldType)getTypeOfMonitorUsage;
- (KalturaFieldType)getTypeOfModerateContent;
- (KalturaFieldType)getTypeOfStorageDeleteFromKaltura;
- (KalturaFieldType)getTypeOfStorageServePriority;
- (KalturaFieldType)getTypeOfKmcVersion;
- (KalturaFieldType)getTypeOfRestrictThumbnailByKs;
- (KalturaFieldType)getTypeOfSupportAnimatedThumbnails;
- (KalturaFieldType)getTypeOfDefThumbOffset;
- (KalturaFieldType)getTypeOfDefThumbDensity;
- (KalturaFieldType)getTypeOfUserSessionRoleId;
- (KalturaFieldType)getTypeOfAdminSessionRoleId;
- (KalturaFieldType)getTypeOfAlwaysAllowedPermissionNames;
- (KalturaFieldType)getTypeOfImportRemoteSourceForConvert;
- (KalturaFieldType)getTypeOfPermissions;
- (NSString*)getObjectTypeOfPermissions;
- (KalturaFieldType)getTypeOfNotificationsConfig;
- (KalturaFieldType)getTypeOfAllowMultiNotification;
- (KalturaFieldType)getTypeOfLoginBlockPeriod;
- (KalturaFieldType)getTypeOfNumPrevPassToKeep;
- (KalturaFieldType)getTypeOfPassReplaceFreq;
- (KalturaFieldType)getTypeOfIsFirstLogin;
- (KalturaFieldType)getTypeOfPartnerGroupType;
- (KalturaFieldType)getTypeOfPartnerParentId;
- (KalturaFieldType)getTypeOfLimits;
- (NSString*)getObjectTypeOfLimits;
- (KalturaFieldType)getTypeOfStreamerType;
- (KalturaFieldType)getTypeOfMediaProtocol;
- (KalturaFieldType)getTypeOfExtendedFreeTrailExpiryReason;
- (KalturaFieldType)getTypeOfExtendedFreeTrailExpiryDate;
- (KalturaFieldType)getTypeOfExtendedFreeTrail;
- (KalturaFieldType)getTypeOfCrmId;
- (KalturaFieldType)getTypeOfReferenceId;
- (KalturaFieldType)getTypeOfCrmLink;
- (KalturaFieldType)getTypeOfVerticalClasiffication;
- (KalturaFieldType)getTypeOfPartnerPackageClassOfService;
- (KalturaFieldType)getTypeOfEnableBulkUploadNotificationsEmails;
- (KalturaFieldType)getTypeOfDeliveryProfileIds;
- (KalturaFieldType)getTypeOfEnforceDelivery;
- (KalturaFieldType)getTypeOfBulkUploadNotificationsEmail;
- (KalturaFieldType)getTypeOfInternalUse;
- (KalturaFieldType)getTypeOfDefaultLiveStreamEntrySourceType;
- (KalturaFieldType)getTypeOfLiveStreamProvisionParams;
- (KalturaFieldType)getTypeOfAutoModerateEntryFilter;
- (NSString*)getObjectTypeOfAutoModerateEntryFilter;
- (KalturaFieldType)getTypeOfLogoutUrl;
- (KalturaFieldType)getTypeOfDefaultEntitlementEnforcement;
- (KalturaFieldType)getTypeOfCacheFlavorVersion;
- (KalturaFieldType)getTypeOfApiAccessControlId;
- (KalturaFieldType)getTypeOfDefaultDeliveryType;
- (KalturaFieldType)getTypeOfDefaultEmbedCodeType;
- (KalturaFieldType)getTypeOfCustomDeliveryTypes;
- (NSString*)getObjectTypeOfCustomDeliveryTypes;
- (KalturaFieldType)getTypeOfRestrictEntryByMetadata;
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfAudioThumbEntryId;
- (KalturaFieldType)getTypeOfLiveThumbEntryId;
- (KalturaFieldType)getTypeOfTimeAlignedRenditions;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerPackageFromString:(NSString*)aPropVal;
- (void)setMonitorUsageFromString:(NSString*)aPropVal;
- (void)setModerateContentFromString:(NSString*)aPropVal;
- (void)setStorageDeleteFromKalturaFromString:(NSString*)aPropVal;
- (void)setStorageServePriorityFromString:(NSString*)aPropVal;
- (void)setKmcVersionFromString:(NSString*)aPropVal;
- (void)setRestrictThumbnailByKsFromString:(NSString*)aPropVal;
- (void)setSupportAnimatedThumbnailsFromString:(NSString*)aPropVal;
- (void)setDefThumbOffsetFromString:(NSString*)aPropVal;
- (void)setDefThumbDensityFromString:(NSString*)aPropVal;
- (void)setUserSessionRoleIdFromString:(NSString*)aPropVal;
- (void)setAdminSessionRoleIdFromString:(NSString*)aPropVal;
- (void)setImportRemoteSourceForConvertFromString:(NSString*)aPropVal;
- (void)setAllowMultiNotificationFromString:(NSString*)aPropVal;
- (void)setLoginBlockPeriodFromString:(NSString*)aPropVal;
- (void)setNumPrevPassToKeepFromString:(NSString*)aPropVal;
- (void)setPassReplaceFreqFromString:(NSString*)aPropVal;
- (void)setIsFirstLoginFromString:(NSString*)aPropVal;
- (void)setPartnerGroupTypeFromString:(NSString*)aPropVal;
- (void)setPartnerParentIdFromString:(NSString*)aPropVal;
- (void)setExtendedFreeTrailExpiryDateFromString:(NSString*)aPropVal;
- (void)setExtendedFreeTrailFromString:(NSString*)aPropVal;
- (void)setEnableBulkUploadNotificationsEmailsFromString:(NSString*)aPropVal;
- (void)setEnforceDeliveryFromString:(NSString*)aPropVal;
- (void)setInternalUseFromString:(NSString*)aPropVal;
- (void)setDefaultEntitlementEnforcementFromString:(NSString*)aPropVal;
- (void)setCacheFlavorVersionFromString:(NSString*)aPropVal;
- (void)setApiAccessControlIdFromString:(NSString*)aPropVal;
- (void)setRestrictEntryByMetadataFromString:(NSString*)aPropVal;
- (void)setTimeAlignedRenditionsFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerPackage : KalturaObjectBase
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString* name;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerUsageItem : KalturaObjectBase
// Partner ID
@property (nonatomic,assign) int partnerId;
// Partner name
@property (nonatomic,copy) NSString* partnerName;
// Partner status
@property (nonatomic,assign) int partnerStatus;	// enum KalturaPartnerStatus
// Partner package
@property (nonatomic,assign) int partnerPackage;
// Partner creation date (Unix timestamp)
@property (nonatomic,assign) int partnerCreatedAt;
// Number of player loads in the specific date range
@property (nonatomic,assign) int views;
// Number of plays in the specific date range
@property (nonatomic,assign) int plays;
// Number of new entries created during specific date range
@property (nonatomic,assign) int entriesCount;
// Total number of entries
@property (nonatomic,assign) int totalEntriesCount;
// Number of new video entries created during specific date range
@property (nonatomic,assign) int videoEntriesCount;
// Number of new image entries created during specific date range
@property (nonatomic,assign) int imageEntriesCount;
// Number of new audio entries created during specific date range
@property (nonatomic,assign) int audioEntriesCount;
// Number of new mix entries created during specific date range
@property (nonatomic,assign) int mixEntriesCount;
// The total bandwidth usage during the given date range (in MB)
@property (nonatomic,assign) double bandwidth;
// The total storage consumption (in MB)
@property (nonatomic,assign) double totalStorage;
// The change in storage consumption (new uploads) during the given date range (in MB)
@property (nonatomic,assign) double storage;
// The peak amount of storage consumption during the given date range for the specific publisher
@property (nonatomic,assign) double peakStorage;
// The average amount of storage consumption during the given date range for the specific publisher
@property (nonatomic,assign) double avgStorage;
// The combined amount of bandwidth and storage consumed during the given date range for the specific publisher
@property (nonatomic,assign) double combinedBandwidthStorage;
// Amount of deleted storage in MB
@property (nonatomic,assign) double deletedStorage;
// Amount of transcoding usage in MB
@property (nonatomic,assign) double transcodingUsage;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfPartnerName;
- (KalturaFieldType)getTypeOfPartnerStatus;
- (KalturaFieldType)getTypeOfPartnerPackage;
- (KalturaFieldType)getTypeOfPartnerCreatedAt;
- (KalturaFieldType)getTypeOfViews;
- (KalturaFieldType)getTypeOfPlays;
- (KalturaFieldType)getTypeOfEntriesCount;
- (KalturaFieldType)getTypeOfTotalEntriesCount;
- (KalturaFieldType)getTypeOfVideoEntriesCount;
- (KalturaFieldType)getTypeOfImageEntriesCount;
- (KalturaFieldType)getTypeOfAudioEntriesCount;
- (KalturaFieldType)getTypeOfMixEntriesCount;
- (KalturaFieldType)getTypeOfBandwidth;
- (KalturaFieldType)getTypeOfTotalStorage;
- (KalturaFieldType)getTypeOfStorage;
- (KalturaFieldType)getTypeOfPeakStorage;
- (KalturaFieldType)getTypeOfAvgStorage;
- (KalturaFieldType)getTypeOfCombinedBandwidthStorage;
- (KalturaFieldType)getTypeOfDeletedStorage;
- (KalturaFieldType)getTypeOfTranscodingUsage;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setPartnerStatusFromString:(NSString*)aPropVal;
- (void)setPartnerPackageFromString:(NSString*)aPropVal;
- (void)setPartnerCreatedAtFromString:(NSString*)aPropVal;
- (void)setViewsFromString:(NSString*)aPropVal;
- (void)setPlaysFromString:(NSString*)aPropVal;
- (void)setEntriesCountFromString:(NSString*)aPropVal;
- (void)setTotalEntriesCountFromString:(NSString*)aPropVal;
- (void)setVideoEntriesCountFromString:(NSString*)aPropVal;
- (void)setImageEntriesCountFromString:(NSString*)aPropVal;
- (void)setAudioEntriesCountFromString:(NSString*)aPropVal;
- (void)setMixEntriesCountFromString:(NSString*)aPropVal;
- (void)setBandwidthFromString:(NSString*)aPropVal;
- (void)setTotalStorageFromString:(NSString*)aPropVal;
- (void)setStorageFromString:(NSString*)aPropVal;
- (void)setPeakStorageFromString:(NSString*)aPropVal;
- (void)setAvgStorageFromString:(NSString*)aPropVal;
- (void)setCombinedBandwidthStorageFromString:(NSString*)aPropVal;
- (void)setDeletedStorageFromString:(NSString*)aPropVal;
- (void)setTranscodingUsageFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerOveragedLimit : KalturaSystemPartnerLimit
@property (nonatomic,assign) double overagePrice;
@property (nonatomic,assign) double overageUnit;
- (KalturaFieldType)getTypeOfOveragePrice;
- (KalturaFieldType)getTypeOfOverageUnit;
- (void)setOveragePriceFromString:(NSString*)aPropVal;
- (void)setOverageUnitFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerUsageFilter : KalturaFilter
// Date range from
@property (nonatomic,assign) int fromDate;
// Date range to
@property (nonatomic,assign) int toDate;
// Time zone offset
@property (nonatomic,assign) int timezoneOffset;
- (KalturaFieldType)getTypeOfFromDate;
- (KalturaFieldType)getTypeOfToDate;
- (KalturaFieldType)getTypeOfTimezoneOffset;
- (void)setFromDateFromString:(NSString*)aPropVal;
- (void)setToDateFromString:(NSString*)aPropVal;
- (void)setTimezoneOffsetFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerUsageListResponse : KalturaListResponse
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaSystemPartnerUsageItem elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemPartnerFilter : KalturaPartnerFilter
@property (nonatomic,assign) int partnerParentIdEqual;
@property (nonatomic,copy) NSString* partnerParentIdIn;
- (KalturaFieldType)getTypeOfPartnerParentIdEqual;
- (KalturaFieldType)getTypeOfPartnerParentIdIn;
- (void)setPartnerParentIdEqualFromString:(NSString*)aPropVal;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// System partner service
@interface KalturaSystemPartnerService : KalturaServiceBase
// Retrieve all info about partner
// 	 This service gets partner id as parameter and accessable to the admin console partner only
- (KalturaPartner*)getWithPartnerId:(int)aPartnerId;
- (KalturaSystemPartnerUsageListResponse*)getUsageWithPartnerFilter:(KalturaPartnerFilter*)aPartnerFilter withUsageFilter:(KalturaSystemPartnerUsageFilter*)aUsageFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaSystemPartnerUsageListResponse*)getUsageWithPartnerFilter:(KalturaPartnerFilter*)aPartnerFilter withUsageFilter:(KalturaSystemPartnerUsageFilter*)aUsageFilter;
- (KalturaSystemPartnerUsageListResponse*)getUsageWithPartnerFilter:(KalturaPartnerFilter*)aPartnerFilter;
- (KalturaSystemPartnerUsageListResponse*)getUsage;
- (KalturaPartnerListResponse*)listWithFilter:(KalturaPartnerFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaPartnerListResponse*)listWithFilter:(KalturaPartnerFilter*)aFilter;
- (KalturaPartnerListResponse*)list;
- (void)updateStatusWithId:(int)aId withStatus:(int)aStatus withReason:(NSString*)aReason;
- (NSString*)getAdminSessionWithPartnerId:(int)aPartnerId withUserId:(NSString*)aUserId;
- (NSString*)getAdminSessionWithPartnerId:(int)aPartnerId;
- (void)updateConfigurationWithPartnerId:(int)aPartnerId withConfiguration:(KalturaSystemPartnerConfiguration*)aConfiguration;
- (KalturaSystemPartnerConfiguration*)getConfigurationWithPartnerId:(int)aPartnerId;
- (NSMutableArray*)getPackages;
- (NSMutableArray*)getPackagesClassOfService;
- (NSMutableArray*)getPackagesVertical;
- (NSMutableArray*)getPlayerEmbedCodeTypes;
- (NSMutableArray*)getPlayerDeliveryTypes;
- (void)resetUserPasswordWithUserId:(NSString*)aUserId withPartnerId:(int)aPartnerId withNewPassword:(NSString*)aNewPassword;
- (KalturaUserLoginDataListResponse*)listUserLoginDataWithFilter:(KalturaUserLoginDataFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaUserLoginDataListResponse*)listUserLoginDataWithFilter:(KalturaUserLoginDataFilter*)aFilter;
- (KalturaUserLoginDataListResponse*)listUserLoginData;
@end

@interface KalturaSystemPartnerClientPlugin : KalturaClientPlugin
{
	KalturaSystemPartnerService* _systemPartner;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaSystemPartnerService* systemPartner;
@end

