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

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaDrmLicenseExpirationPolicy : NSObject
+ (int)FIXED_DURATION;
+ (int)ENTRY_SCHEDULING_END;
+ (int)UNLIMITED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmPolicyStatus : NSObject
+ (int)ACTIVE;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProfileStatus : NSObject
+ (int)ACTIVE;
+ (int)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmLicenseScenario : NSObject
+ (NSString*)PROTECTION;
+ (NSString*)PURCHASE;
+ (NSString*)RENTAL;
+ (NSString*)SUBSCRIPTION;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmLicenseType : NSObject
+ (NSString*)NON_PERSISTENT;
+ (NSString*)PERSISTENT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmPolicyOrderBy : NSObject
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProfileOrderBy : NSObject
+ (NSString*)ID_ASC;
+ (NSString*)NAME_ASC;
+ (NSString*)ID_DESC;
+ (NSString*)NAME_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProviderType : NSObject
+ (NSString*)FAIRPLAY;
+ (NSString*)PLAY_READY;
+ (NSString*)WIDEVINE;
+ (NSString*)CENC;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaDrmLicenseAccessDetails : KalturaObjectBase
// Drm policy name
@property (nonatomic,copy) NSString* policy;
// movie duration in seconds
@property (nonatomic,assign) int duration;
// playback window in seconds
@property (nonatomic,assign) int absolute_duration;
@property (nonatomic,retain) NSMutableArray* licenseParams;	// of KalturaKeyValue elements
- (KalturaFieldType)getTypeOfPolicy;
- (KalturaFieldType)getTypeOfDuration;
- (KalturaFieldType)getTypeOfAbsolute_duration;
- (KalturaFieldType)getTypeOfLicenseParams;
- (NSString*)getObjectTypeOfLicenseParams;
- (void)setDurationFromString:(NSString*)aPropVal;
- (void)setAbsolute_durationFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmPolicy : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign) int partnerId;	// insertonly
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* systemName;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,copy) NSString* provider;	// enum KalturaDrmProviderType
@property (nonatomic,assign) int status;	// enum KalturaDrmPolicyStatus
@property (nonatomic,copy) NSString* scenario;	// enum KalturaDrmLicenseScenario
@property (nonatomic,copy) NSString* licenseType;	// enum KalturaDrmLicenseType
@property (nonatomic,assign) int licenseExpirationPolicy;	// enum KalturaDrmLicenseExpirationPolicy
// Duration in days the license is effective
@property (nonatomic,assign) int duration;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,retain) NSMutableArray* licenseParams;	// of KalturaKeyValue elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfProvider;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfScenario;
- (KalturaFieldType)getTypeOfLicenseType;
- (KalturaFieldType)getTypeOfLicenseExpirationPolicy;
- (KalturaFieldType)getTypeOfDuration;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfLicenseParams;
- (NSString*)getObjectTypeOfLicenseParams;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setLicenseExpirationPolicyFromString:(NSString*)aPropVal;
- (void)setDurationFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProfile : KalturaObjectBase
@property (nonatomic,assign,readonly) int id;
@property (nonatomic,assign) int partnerId;	// insertonly
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* description;
@property (nonatomic,copy) NSString* provider;	// enum KalturaDrmProviderType
@property (nonatomic,assign) int status;	// enum KalturaDrmProfileStatus
@property (nonatomic,copy) NSString* licenseServerUrl;
@property (nonatomic,copy) NSString* defaultPolicy;
@property (nonatomic,assign,readonly) int createdAt;
@property (nonatomic,assign,readonly) int updatedAt;
@property (nonatomic,copy) NSString* signingKey;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfProvider;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfLicenseServerUrl;
- (KalturaFieldType)getTypeOfDefaultPolicy;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUpdatedAt;
- (KalturaFieldType)getTypeOfSigningKey;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
- (void)setUpdatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAccessControlDrmPolicyAction : KalturaRuleAction
// Drm policy id
@property (nonatomic,assign) int policyId;
- (KalturaFieldType)getTypeOfPolicyId;
- (void)setPolicyIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmPolicyBaseFilter : KalturaFilter
@property (nonatomic,assign) int partnerIdEqual;
@property (nonatomic,copy) NSString* partnerIdIn;
@property (nonatomic,copy) NSString* nameLike;
@property (nonatomic,copy) NSString* systemNameLike;
@property (nonatomic,copy) NSString* providerEqual;	// enum KalturaDrmProviderType
@property (nonatomic,copy) NSString* providerIn;
@property (nonatomic,assign) int statusEqual;	// enum KalturaDrmPolicyStatus
@property (nonatomic,copy) NSString* statusIn;
@property (nonatomic,copy) NSString* scenarioEqual;	// enum KalturaDrmLicenseScenario
@property (nonatomic,copy) NSString* scenarioIn;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (KalturaFieldType)getTypeOfPartnerIdIn;
- (KalturaFieldType)getTypeOfNameLike;
- (KalturaFieldType)getTypeOfSystemNameLike;
- (KalturaFieldType)getTypeOfProviderEqual;
- (KalturaFieldType)getTypeOfProviderIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfScenarioEqual;
- (KalturaFieldType)getTypeOfScenarioIn;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmPolicyListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaDrmPolicy elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProfileBaseFilter : KalturaFilter
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* idIn;
@property (nonatomic,assign) int partnerIdEqual;
@property (nonatomic,copy) NSString* partnerIdIn;
@property (nonatomic,copy) NSString* nameLike;
@property (nonatomic,copy) NSString* providerEqual;	// enum KalturaDrmProviderType
@property (nonatomic,copy) NSString* providerIn;
@property (nonatomic,assign) int statusEqual;	// enum KalturaDrmProfileStatus
@property (nonatomic,copy) NSString* statusIn;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfIdIn;
- (KalturaFieldType)getTypeOfPartnerIdEqual;
- (KalturaFieldType)getTypeOfPartnerIdIn;
- (KalturaFieldType)getTypeOfNameLike;
- (KalturaFieldType)getTypeOfProviderEqual;
- (KalturaFieldType)getTypeOfProviderIn;
- (KalturaFieldType)getTypeOfStatusEqual;
- (KalturaFieldType)getTypeOfStatusIn;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setPartnerIdEqualFromString:(NSString*)aPropVal;
- (void)setStatusEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProfileListResponse : KalturaListResponse
@property (nonatomic,retain,readonly) NSMutableArray* objects;	// of KalturaDrmProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmPolicyFilter : KalturaDrmPolicyBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProfileFilter : KalturaDrmProfileBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaDrmPolicyService : KalturaServiceBase
// Allows you to add a new DrmPolicy object
- (KalturaDrmPolicy*)addWithDrmPolicy:(KalturaDrmPolicy*)aDrmPolicy;
// Mark the KalturaDrmPolicy object as deleted
- (KalturaDrmPolicy*)deleteWithDrmPolicyId:(int)aDrmPolicyId;
// Retrieve a KalturaDrmPolicy object by ID
- (KalturaDrmPolicy*)getWithDrmPolicyId:(int)aDrmPolicyId;
// List KalturaDrmPolicy objects
- (KalturaDrmPolicyListResponse*)listWithFilter:(KalturaDrmPolicyFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaDrmPolicyListResponse*)listWithFilter:(KalturaDrmPolicyFilter*)aFilter;
- (KalturaDrmPolicyListResponse*)list;
// Update an existing KalturaDrmPolicy object
- (KalturaDrmPolicy*)updateWithDrmPolicyId:(int)aDrmPolicyId withDrmPolicy:(KalturaDrmPolicy*)aDrmPolicy;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDrmProfileService : KalturaServiceBase
// Allows you to add a new DrmProfile object
- (KalturaDrmProfile*)addWithDrmProfile:(KalturaDrmProfile*)aDrmProfile;
// Mark the KalturaDrmProfile object as deleted
- (KalturaDrmProfile*)deleteWithDrmProfileId:(int)aDrmProfileId;
// Retrieve a KalturaDrmProfile object by ID
- (KalturaDrmProfile*)getWithDrmProfileId:(int)aDrmProfileId;
// Retrieve a KalturaDrmProfile object by provider, if no specific profile defined return default profile
- (KalturaDrmProfile*)getByProviderWithProvider:(NSString*)aProvider;
// List KalturaDrmProfile objects
- (KalturaDrmProfileListResponse*)listWithFilter:(KalturaDrmProfileFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaDrmProfileListResponse*)listWithFilter:(KalturaDrmProfileFilter*)aFilter;
- (KalturaDrmProfileListResponse*)list;
// Update an existing KalturaDrmProfile object
- (KalturaDrmProfile*)updateWithDrmProfileId:(int)aDrmProfileId withDrmProfile:(KalturaDrmProfile*)aDrmProfile;
@end

// @package Kaltura
// @subpackage Client
// Retrieve information and invoke actions on Flavor Asset
@interface KalturaDrmLicenseAccessService : KalturaServiceBase
// getAccessAction
//      input: flavor ids, drmProvider
//      Get Access Action
- (KalturaDrmLicenseAccessDetails*)getAccessWithEntryId:(NSString*)aEntryId withFlavorIds:(NSString*)aFlavorIds withReferrer:(NSString*)aReferrer;
@end

@interface KalturaDrmClientPlugin : KalturaClientPlugin
{
	KalturaDrmPolicyService* _drmPolicy;
	KalturaDrmProfileService* _drmProfile;
	KalturaDrmLicenseAccessService* _drmLicenseAccess;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaDrmPolicyService* drmPolicy;
@property (nonatomic, readonly) KalturaDrmProfileService* drmProfile;
@property (nonatomic, readonly) KalturaDrmLicenseAccessService* drmLicenseAccess;
@end

