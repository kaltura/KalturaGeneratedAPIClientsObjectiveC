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
#import "KalturaClientBase.h"

#define API_VERSION @"3.6.287.20330"

///////////////////////// enums /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAnnouncementOrderBy : NSObject
+ (NSString*)NONE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnnouncementRecipientsType : NSObject
+ (NSString*)ALL;
+ (NSString*)LOGGEDIN;
+ (NSString*)GUESTS;
+ (NSString*)OTHER;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnnouncementStatus : NSObject
+ (NSString*)NOTSENT;
+ (NSString*)SENDING;
+ (NSString*)SENT;
+ (NSString*)ABORTED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaApiParameterPermissionItemAction : NSObject
+ (NSString*)READ;
+ (NSString*)INSERT;
+ (NSString*)UPDATE;
+ (NSString*)USAGE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAppTokenHashType : NSObject
+ (NSString*)SHA1;
+ (NSString*)SHA256;
+ (NSString*)SHA512;
+ (NSString*)MD5;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAppTokenStatus : NSObject
+ (int)DELETED;
+ (int)DISABLED;
+ (int)ACTIVE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetCommentOrderBy : NSObject
+ (NSString*)CREATE_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetHistoryOrderBy : NSObject
+ (NSString*)NONE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetOrderBy : NSObject
+ (NSString*)RELEVANCY_DESC;
+ (NSString*)NAME_ASC;
+ (NSString*)NAME_DESC;
+ (NSString*)VIEWS_DESC;
+ (NSString*)RATINGS_DESC;
+ (NSString*)VOTES_DESC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)START_DATE_ASC;
+ (NSString*)LIKES_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetReferenceType : NSObject
+ (NSString*)MEDIA;
+ (NSString*)EPG_INTERNAL;
+ (NSString*)EPG_EXTERNAL;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetType : NSObject
+ (NSString*)MEDIA;
+ (NSString*)RECORDING;
+ (NSString*)EPG;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBillingAction : NSObject
+ (NSString*)UNKNOWN;
+ (NSString*)PURCHASE;
+ (NSString*)RENEW_PAYMENT;
+ (NSString*)RENEW_CANCELED_SUBSCRIPTION;
+ (NSString*)CANCEL_SUBSCRIPTION_ORDER;
+ (NSString*)SUBSCRIPTION_DATE_CHANGED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBillingItemsType : NSObject
+ (NSString*)UNKNOWN;
+ (NSString*)PPV;
+ (NSString*)SUBSCRIPTION;
+ (NSString*)PRE_PAID;
+ (NSString*)PRE_PAID_EXPIRED;
+ (NSString*)COLLECTION;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBookmarkActionType : NSObject
+ (NSString*)HIT;
+ (NSString*)PLAY;
+ (NSString*)STOP;
+ (NSString*)PAUSE;
+ (NSString*)FIRST_PLAY;
+ (NSString*)SWOOSH;
+ (NSString*)FULL_SCREEN;
+ (NSString*)SEND_TO_FRIEND;
+ (NSString*)LOAD;
+ (NSString*)FULL_SCREEN_EXIT;
+ (NSString*)FINISH;
+ (NSString*)ERROR;
+ (NSString*)BITRATE_CHANGE;
+ (NSString*)NONE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBookmarkOrderBy : NSObject
+ (NSString*)POSITION_ASC;
+ (NSString*)POSITION_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBundleType : NSObject
+ (NSString*)SUBSCRIPTION;
+ (NSString*)COLLECTION;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaChannelEnrichment : NSObject
+ (NSString*)CLIENTLOCATION;
+ (NSString*)USERID;
+ (NSString*)HOUSEHOLDID;
+ (NSString*)DEVICEID;
+ (NSString*)DEVICETYPE;
+ (NSString*)UTCOFFSET;
+ (NSString*)LANGUAGE;
+ (NSString*)NPVRSUPPORT;
+ (NSString*)CATCHUP;
+ (NSString*)PARENTAL;
+ (NSString*)DTTREGION;
+ (NSString*)ATHOME;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCouponStatus : NSObject
+ (NSString*)VALID;
+ (NSString*)NOT_EXISTS;
+ (NSString*)ALREADY_USED;
+ (NSString*)EXPIRED;
+ (NSString*)INACTIVE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaDeviceStatus : NSObject
+ (NSString*)PENDING;
+ (NSString*)ACTIVATED;
+ (NSString*)NOT_ACTIVATED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntitlementOrderBy : NSObject
+ (NSString*)PURCHASE_DATE_ASC;
+ (NSString*)PURCHASE_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntityReferenceBy : NSObject
+ (NSString*)USER;
+ (NSString*)HOUSEHOLD;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExportDataType : NSObject
+ (NSString*)VOD;
+ (NSString*)EPG;
+ (NSString*)USERS;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExportTaskOrderBy : NSObject
+ (NSString*)CREATE_DATE_ASC;
+ (NSString*)CREATE_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExportType : NSObject
+ (NSString*)FULL;
+ (NSString*)INCREMENTAL;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFavoriteOrderBy : NSObject
+ (NSString*)CREATE_DATE_ASC;
+ (NSString*)CREATE_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFollowTvSeriesOrderBy : NSObject
+ (NSString*)START_DATE_DESC;
+ (NSString*)START_DATE_ASC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdFrequencyType : NSObject
+ (NSString*)DEVICES;
+ (NSString*)USERS;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdPaymentGatewaySelectedBy : NSObject
+ (NSString*)NONE;
+ (NSString*)ACCOUNT;
+ (NSString*)HOUSEHOLD;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdRestriction : NSObject
+ (NSString*)NOT_RESTRICTED;
+ (NSString*)USER_MASTER_RESTRICTED;
+ (NSString*)DEVICE_MASTER_RESTRICTED;
+ (NSString*)DEVICE_USER_MASTER_RESTRICTED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdState : NSObject
+ (NSString*)OK;
+ (NSString*)CREATED_WITHOUT_NPVR_ACCOUNT;
+ (NSString*)SUSPENDED;
+ (NSString*)NO_USERS_IN_HOUSEHOLD;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdSuspentionState : NSObject
+ (NSString*)NOT_SUSPENDED;
+ (NSString*)SUSPENDED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdUserStatus : NSObject
+ (NSString*)OK;
+ (NSString*)PENDING;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaInboxMessageOrderBy : NSObject
+ (NSString*)NONE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaInboxMessageStatus : NSObject
+ (NSString*)UNREAD;
+ (NSString*)READ;
+ (NSString*)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaInboxMessageType : NSObject
+ (NSString*)SYSTEMANNOUNCEMENT;
+ (NSString*)FOLLOWED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaNotificationType : NSObject
+ (NSString*)ANNOUNCEMENT;
+ (NSString*)SYSTEM;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaOTTAssetType : NSObject
+ (int)SERIES;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaOTTUserBy : NSObject
+ (NSString*)USER_NAME;
+ (NSString*)EXTERNAL_ID;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaOTTUserOrderBy : NSObject
+ (NSString*)ID_ASC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaParentalRuleOrderBy : NSObject
+ (NSString*)PARTNER_SORT_VALUE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaParentalRuleType : NSObject
+ (NSString*)ALL;
+ (NSString*)MOVIES;
+ (NSString*)TV_SERIES;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPartnerConfigurationType : NSObject
+ (NSString*)DEFAULTPAYMENTGATEWAY;
+ (NSString*)ENABLEPAYMENTGATEWAYSELECTION;
+ (NSString*)OSSADAPTER;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPaymentMethodProfileOrderBy : NSObject
+ (NSString*)NONE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPaymentMethodType : NSObject
+ (NSString*)UNKNOWN;
+ (NSString*)CREDIT_CARD;
+ (NSString*)SMS;
+ (NSString*)PAY_PAL;
+ (NSString*)DEBIT_CARD;
+ (NSString*)IDEAL;
+ (NSString*)INCASO;
+ (NSString*)GIFT;
+ (NSString*)VISA;
+ (NSString*)MASTER_CARD;
+ (NSString*)IN_APP;
+ (NSString*)M1;
+ (NSString*)CHANGE_SUBSCRIPTION;
+ (NSString*)OFFLINE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPersonalFeedOrderBy : NSObject
+ (NSString*)RELEVANCY_DESC;
+ (NSString*)NAME_ASC;
+ (NSString*)NAME_DESC;
+ (NSString*)VIEWS_DESC;
+ (NSString*)RATINGS_DESC;
+ (NSString*)VOTES_DESC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)START_DATE_ASC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPinType : NSObject
+ (NSString*)PURCHASE;
+ (NSString*)PARENTAL;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPositionOwner : NSObject
+ (NSString*)HOUSEHOLD;
+ (NSString*)USER;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaProductPriceOrderBy : NSObject
+ (NSString*)PRODUCT_ID_ASC;
+ (NSString*)PRODUCT_ID_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPurchaseSettingsType : NSObject
+ (NSString*)BLOCK;
+ (NSString*)ASK;
+ (NSString*)ALLOW;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPurchaseStatus : NSObject
+ (NSString*)PPV_PURCHASED;
+ (NSString*)FREE;
+ (NSString*)FOR_PURCHASE_SUBSCRIPTION_ONLY;
+ (NSString*)SUBSCRIPTION_PURCHASED;
+ (NSString*)FOR_PURCHASE;
+ (NSString*)SUBSCRIPTION_PURCHASED_WRONG_CURRENCY;
+ (NSString*)PRE_PAID_PURCHASED;
+ (NSString*)GEO_COMMERCE_BLOCKED;
+ (NSString*)ENTITLED_TO_PREVIEW_MODULE;
+ (NSString*)FIRST_DEVICE_LIMITATION;
+ (NSString*)COLLECTION_PURCHASED;
+ (NSString*)USER_SUSPENDED;
+ (NSString*)NOT_FOR_PURCHASE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordingOrderBy : NSObject
+ (NSString*)TITLE_ASC;
+ (NSString*)TITLE_DESC;
+ (NSString*)START_DATE_ASC;
+ (NSString*)START_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordingStatus : NSObject
+ (NSString*)SCHEDULED;
+ (NSString*)RECORDING;
+ (NSString*)RECORDED;
+ (NSString*)CANCELED;
+ (NSString*)FAILED;
+ (NSString*)DELETED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordingType : NSObject
+ (NSString*)SINGLE;
+ (NSString*)SEASON;
+ (NSString*)SERIES;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegionOrderBy : NSObject
+ (NSString*)CREATE_DATE_ASC;
+ (NSString*)CREATE_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRuleLevel : NSObject
+ (NSString*)INVALID;
+ (NSString*)USER;
+ (NSString*)HOUSEHOLD;
+ (NSString*)ACCOUNT;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRuleType : NSObject
+ (NSString*)PARENTAL;
+ (NSString*)GEO;
+ (NSString*)USER_TYPE;
+ (NSString*)DEVICE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSeriesRecordingOrderBy : NSObject
+ (NSString*)START_DATE_ASC;
+ (NSString*)START_DATE_DESC;
+ (NSString*)ID_ASC;
+ (NSString*)ID_DESC;
+ (NSString*)SERIES_ID_ASC;
+ (NSString*)SERIES_ID_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSessionType : NSObject
+ (int)USER;
+ (int)ADMIN;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSocialNetwork : NSObject
+ (NSString*)FACEBOOK;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaStreamType : NSObject
+ (NSString*)CATCHUP;
+ (NSString*)START_OVER;
+ (NSString*)TRICK_PLAY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSubscriptionOrderBy : NSObject
+ (NSString*)START_DATE_ASC;
+ (NSString*)START_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTopicAutomaticIssueNotification : NSObject
+ (NSString*)INHERIT;
+ (NSString*)YES_;
+ (NSString*)NO_;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTopicOrderBy : NSObject
+ (NSString*)NONE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransactionAdapterStatus : NSObject
+ (NSString*)OK;
+ (NSString*)PENDING;
+ (NSString*)FAILED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransactionHistoryOrderBy : NSObject
+ (NSString*)CREATE_DATE_ASC;
+ (NSString*)CREATE_DATE_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransactionType : NSObject
+ (NSString*)PPV;
+ (NSString*)SUBSCRIPTION;
+ (NSString*)COLLECTION;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserAssetRuleOrderBy : NSObject
+ (NSString*)NAME_ASC;
+ (NSString*)NAME_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserAssetsListItemType : NSObject
+ (NSString*)ALL;
+ (NSString*)MEDIA;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserAssetsListType : NSObject
+ (NSString*)ALL;
+ (NSString*)WATCH;
+ (NSString*)PURCHASE;
+ (NSString*)LIBRARY;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserRoleOrderBy : NSObject
+ (NSString*)NONE;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserState : NSObject
+ (NSString*)OK;
+ (NSString*)USER_WITH_NO_HOUSEHOLD;
+ (NSString*)USER_CREATED_WITH_NO_ROLE;
+ (NSString*)USER_NOT_ACTIVATED;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaWatchStatus : NSObject
+ (NSString*)PROGRESS;
+ (NSString*)DONE;
+ (NSString*)ALL;
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAnnouncement : KalturaObjectBase
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* message;
@property (nonatomic,assign) KALTURA_BOOL enabled;
@property (nonatomic,assign) int startTime;
@property (nonatomic,copy) NSString* timezone;
@property (nonatomic,copy,readonly) NSString* status;	// enum KalturaAnnouncementStatus
@property (nonatomic,copy) NSString* recipients;	// enum KalturaAnnouncementRecipientsType
@property (nonatomic,assign,readonly) int id;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfMessage;
- (KalturaFieldType)getTypeOfEnabled;
- (KalturaFieldType)getTypeOfStartTime;
- (KalturaFieldType)getTypeOfTimezone;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfRecipients;
- (KalturaFieldType)getTypeOfId;
- (void)setEnabledFromString:(NSString*)aPropVal;
- (void)setStartTimeFromString:(NSString*)aPropVal;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFilter : KalturaObjectBase
@property (nonatomic,assign) int orderBy;
- (KalturaFieldType)getTypeOfOrderBy;
- (void)setOrderByFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAnnouncementFilter : KalturaFilter
@end

// @package Kaltura
// @subpackage Client
// The KalturaFilterPager object enables paging management to be applied upon service list actions
@interface KalturaFilterPager : KalturaObjectBase
// The number of objects to retrieve. Possible range 1 ≤ value ≤ 50. If omitted or value &lt; 1 - will be set to 25. If a value &gt; 50 provided – will be set to 50
@property (nonatomic,assign) int pageSize;
// The page number for which {pageSize} of objects should be retrieved
@property (nonatomic,assign) int pageIndex;
- (KalturaFieldType)getTypeOfPageSize;
- (KalturaFieldType)getTypeOfPageIndex;
- (void)setPageSizeFromString:(NSString*)aPropVal;
- (void)setPageIndexFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Base list wrapper
@interface KalturaListResponse : KalturaObjectBase
// Total items
@property (nonatomic,assign) int totalCount;
- (KalturaFieldType)getTypeOfTotalCount;
- (void)setTotalCountFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegionalChannel : KalturaObjectBase
// The identifier of the linear media representing the channel
@property (nonatomic,assign) int linearChannelId;
// The number of the channel
@property (nonatomic,assign) int channelNumber;
- (KalturaFieldType)getTypeOfLinearChannelId;
- (KalturaFieldType)getTypeOfChannelNumber;
- (void)setLinearChannelIdFromString:(NSString*)aPropVal;
- (void)setChannelNumberFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegion : KalturaObjectBase
// Region identifier
@property (nonatomic,assign) int id;
// Region name
@property (nonatomic,copy) NSString* name;
// Region external identifier
@property (nonatomic,copy) NSString* externalId;
// Indicates whether this is the default region for the partner
@property (nonatomic,assign) KALTURA_BOOL isDefault;
// List of associated linear channels
@property (nonatomic,retain) NSMutableArray* linearChannels;	// of KalturaRegionalChannel elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfExternalId;
- (KalturaFieldType)getTypeOfIsDefault;
- (KalturaFieldType)getTypeOfLinearChannels;
- (NSString*)getObjectTypeOfLinearChannels;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setIsDefaultFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Regions list
@interface KalturaRegionListResponse : KalturaListResponse
// A list of regions
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaRegion elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// User asset rule - representing different type of rules on an asset(Parental, Geo, User Type, Device)
@interface KalturaUserAssetRule : KalturaObjectBase
// Unique rule identifier
@property (nonatomic,assign,readonly) int id;
// Rule type - possible values: Rule type – Parental, Geo, UserType, Device
@property (nonatomic,copy) NSString* ruleType;	// enum KalturaRuleType
// Rule display name
@property (nonatomic,copy) NSString* name;
// Additional description for the specific rule
@property (nonatomic,copy) NSString* description;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfRuleType;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDescription;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// GenericRules list
@interface KalturaUserAssetRuleListResponse : KalturaListResponse
// A list of generic rules
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaUserAssetRule elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// A representation to return an array of values
@interface KalturaValue : KalturaObjectBase
@property (nonatomic,copy) NSString* description;
- (KalturaFieldType)getTypeOfDescription;
@end

// @package Kaltura
// @subpackage Client
// A string representation to return an array of longs
@interface KalturaLongValue : KalturaValue
@property (nonatomic,assign) int value;
- (KalturaFieldType)getTypeOfValue;
- (void)setValueFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// A string representation to return an array of doubles
@interface KalturaDoubleValue : KalturaValue
@property (nonatomic,assign) double value;
- (KalturaFieldType)getTypeOfValue;
- (void)setValueFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// A string representation to return an array of booleans
@interface KalturaBooleanValue : KalturaValue
@property (nonatomic,assign) KALTURA_BOOL value;
- (KalturaFieldType)getTypeOfValue;
- (void)setValueFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// A string representation to return an array of ints
@interface KalturaIntegerValue : KalturaValue
@property (nonatomic,assign) int value;
- (KalturaFieldType)getTypeOfValue;
- (void)setValueFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// A string representation to return an array of strings
@interface KalturaStringValue : KalturaValue
@property (nonatomic,copy) NSString* value;
- (KalturaFieldType)getTypeOfValue;
@end

// @package Kaltura
// @subpackage Client
// CDN Adapter
@interface KalturaCDNAdapterProfile : KalturaObjectBase
// CDN adapter identifier
@property (nonatomic,assign,readonly) int id;
// CDNR adapter name
@property (nonatomic,copy) NSString* name;
// CDN adapter active status
@property (nonatomic,assign) KALTURA_BOOL isActive;
// CDN adapter URL
@property (nonatomic,copy) NSString* adapterUrl;
// CDN adapter base URL
@property (nonatomic,copy) NSString* baseUrl;
// CDN adapter settings
@property (nonatomic,retain) NSMutableDictionary* settings;	// of KalturaStringValue elements
// CDN adapter alias
@property (nonatomic,copy) NSString* systemName;
// CDN shared secret
@property (nonatomic,copy,readonly) NSString* sharedSecret;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfIsActive;
- (KalturaFieldType)getTypeOfAdapterUrl;
- (KalturaFieldType)getTypeOfBaseUrl;
- (KalturaFieldType)getTypeOfSettings;
- (NSString*)getObjectTypeOfSettings;
- (KalturaFieldType)getTypeOfSystemName;
- (KalturaFieldType)getTypeOfSharedSecret;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setIsActiveFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCDNAdapterProfileListResponse : KalturaListResponse
// Adapters
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaCDNAdapterProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Slim Asset Details
@interface KalturaSlimAsset : KalturaObjectBase
// Internal identifier of the asset
@property (nonatomic,copy) NSString* id;	// insertonly
// The type of the asset. Possible values: media, recording, epg
@property (nonatomic,copy) NSString* type;	// enum KalturaAssetType, insertonly
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfType;
@end

// @package Kaltura
// @subpackage Client
// Slim user data
@interface KalturaBaseOTTUser : KalturaObjectBase
// User identifier
@property (nonatomic,copy,readonly) NSString* id;
// Username
@property (nonatomic,copy) NSString* username;
// First name
@property (nonatomic,copy) NSString* firstName;
// Last name
@property (nonatomic,copy) NSString* lastName;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfUsername;
- (KalturaFieldType)getTypeOfFirstName;
- (KalturaFieldType)getTypeOfLastName;
@end

// @package Kaltura
// @subpackage Client
// Country details
@interface KalturaCountry : KalturaObjectBase
// Country identifier
@property (nonatomic,assign,readonly) int id;
// Country name
@property (nonatomic,copy) NSString* name;
// Country code
@property (nonatomic,copy) NSString* code;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfCode;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// User type
@interface KalturaOTTUserType : KalturaObjectBase
// User type identifier
@property (nonatomic,assign,readonly) int id;
// User type description
@property (nonatomic,copy) NSString* description;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfDescription;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// User
@interface KalturaOTTUser : KalturaBaseOTTUser
// Household identifier
@property (nonatomic,assign,readonly) int householdId;
// Email
@property (nonatomic,copy) NSString* email;
// Address
@property (nonatomic,copy) NSString* address;
// City
@property (nonatomic,copy) NSString* city;
// Country
@property (nonatomic,retain) KalturaCountry* country;
// Zip code
@property (nonatomic,copy) NSString* zip;
// Phone
@property (nonatomic,copy) NSString* phone;
// Affiliate code
@property (nonatomic,copy) NSString* affiliateCode;
// External user identifier
@property (nonatomic,copy) NSString* externalId;
// User type
@property (nonatomic,retain) KalturaOTTUserType* userType;
// Dynamic data
@property (nonatomic,retain) NSMutableDictionary* dynamicData;	// of KalturaStringValue elements
// Is the user the household master
@property (nonatomic,assign,readonly) KALTURA_BOOL isHouseholdMaster;
// Suspention state
@property (nonatomic,copy,readonly) NSString* suspentionState;	// enum KalturaHouseholdSuspentionState
// User state
@property (nonatomic,copy,readonly) NSString* userState;	// enum KalturaUserState
- (KalturaFieldType)getTypeOfHouseholdId;
- (KalturaFieldType)getTypeOfEmail;
- (KalturaFieldType)getTypeOfAddress;
- (KalturaFieldType)getTypeOfCity;
- (KalturaFieldType)getTypeOfCountry;
- (NSString*)getObjectTypeOfCountry;
- (KalturaFieldType)getTypeOfZip;
- (KalturaFieldType)getTypeOfPhone;
- (KalturaFieldType)getTypeOfAffiliateCode;
- (KalturaFieldType)getTypeOfExternalId;
- (KalturaFieldType)getTypeOfUserType;
- (NSString*)getObjectTypeOfUserType;
- (KalturaFieldType)getTypeOfDynamicData;
- (NSString*)getObjectTypeOfDynamicData;
- (KalturaFieldType)getTypeOfIsHouseholdMaster;
- (KalturaFieldType)getTypeOfSuspentionState;
- (KalturaFieldType)getTypeOfUserState;
- (void)setHouseholdIdFromString:(NSString*)aPropVal;
- (void)setIsHouseholdMasterFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBookmarkPlayerData : KalturaObjectBase
// Action
@property (nonatomic,copy) NSString* action;	// enum KalturaBookmarkActionType
// Average Bitrate
@property (nonatomic,assign) int averageBitrate;
// Total Bitrate
@property (nonatomic,assign) int totalBitrate;
// Current Bitrate
@property (nonatomic,assign) int currentBitrate;
// Identifier of the file
@property (nonatomic,assign) int fileId;
- (KalturaFieldType)getTypeOfAction;
- (KalturaFieldType)getTypeOfAverageBitrate;
- (KalturaFieldType)getTypeOfTotalBitrate;
- (KalturaFieldType)getTypeOfCurrentBitrate;
- (KalturaFieldType)getTypeOfFileId;
- (void)setAverageBitrateFromString:(NSString*)aPropVal;
- (void)setTotalBitrateFromString:(NSString*)aPropVal;
- (void)setCurrentBitrateFromString:(NSString*)aPropVal;
- (void)setFileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBookmark : KalturaSlimAsset
// User identifier
@property (nonatomic,copy,readonly) NSString* userId;
// The position of the user in the specific asset (in seconds)
@property (nonatomic,assign) int position;	// insertonly
// Indicates who is the owner of this position
@property (nonatomic,copy) NSString* positionOwner;	// enum KalturaPositionOwner
// Specifies whether the user&#39;s current position exceeded 95% of the duration
@property (nonatomic,assign) KALTURA_BOOL finishedWatching;
// Insert only player data
@property (nonatomic,retain) KalturaBookmarkPlayerData* playerData;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfPosition;
- (KalturaFieldType)getTypeOfPositionOwner;
- (KalturaFieldType)getTypeOfFinishedWatching;
- (KalturaFieldType)getTypeOfPlayerData;
- (NSString*)getObjectTypeOfPlayerData;
- (void)setPositionFromString:(NSString*)aPropVal;
- (void)setFinishedWatchingFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of assets and their bookmarks
@interface KalturaBookmarkListResponse : KalturaListResponse
// Assets
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaBookmark elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaStringValueArray : KalturaObjectBase
// List of string values
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaStringValue elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Image details
@interface KalturaMediaImage : KalturaObjectBase
// Image aspect ratio
@property (nonatomic,copy) NSString* ratio;
// Image width
@property (nonatomic,assign) int width;
// Image height
@property (nonatomic,assign) int height;
// Image URL
@property (nonatomic,copy) NSString* url;
// Image Version
@property (nonatomic,assign) int version;
// Image ID
@property (nonatomic,copy,readonly) NSString* id;
// Determined whether image was taken from default configuration or not
@property (nonatomic,assign) KALTURA_BOOL isDefault;
- (KalturaFieldType)getTypeOfRatio;
- (KalturaFieldType)getTypeOfWidth;
- (KalturaFieldType)getTypeOfHeight;
- (KalturaFieldType)getTypeOfUrl;
- (KalturaFieldType)getTypeOfVersion;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfIsDefault;
- (void)setWidthFromString:(NSString*)aPropVal;
- (void)setHeightFromString:(NSString*)aPropVal;
- (void)setVersionFromString:(NSString*)aPropVal;
- (void)setIsDefaultFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Media file details
@interface KalturaMediaFile : KalturaObjectBase
// Unique identifier for the asset
@property (nonatomic,assign) int assetId;
// File unique identifier
@property (nonatomic,assign,readonly) int id;
// Device types as defined in the system
@property (nonatomic,copy) NSString* type;
// URL of the media file to be played
@property (nonatomic,copy) NSString* url;
// Duration of the media file
@property (nonatomic,assign) int duration;
// External identifier for the media file
@property (nonatomic,copy) NSString* externalId;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfUrl;
- (KalturaFieldType)getTypeOfDuration;
- (KalturaFieldType)getTypeOfExternalId;
- (void)setAssetIdFromString:(NSString*)aPropVal;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setDurationFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Buzz score
@interface KalturaBuzzScore : KalturaObjectBase
// Normalized average score
@property (nonatomic,assign) double normalizedAvgScore;
// Update date
@property (nonatomic,assign) int updateDate;
// Average score
@property (nonatomic,assign) double avgScore;
- (KalturaFieldType)getTypeOfNormalizedAvgScore;
- (KalturaFieldType)getTypeOfUpdateDate;
- (KalturaFieldType)getTypeOfAvgScore;
- (void)setNormalizedAvgScoreFromString:(NSString*)aPropVal;
- (void)setUpdateDateFromString:(NSString*)aPropVal;
- (void)setAvgScoreFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Asset statistics
@interface KalturaAssetStatistics : KalturaObjectBase
// Unique identifier for the asset
@property (nonatomic,assign) int assetId;
// Total number of likes for this asset
@property (nonatomic,assign) int likes;
// Total number of views for this asset
@property (nonatomic,assign) int views;
// Number of people that rated the asset
@property (nonatomic,assign) int ratingCount;
// Average rating for the asset
@property (nonatomic,assign) double rating;
// Buzz score
@property (nonatomic,retain) KalturaBuzzScore* buzzScore;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfLikes;
- (KalturaFieldType)getTypeOfViews;
- (KalturaFieldType)getTypeOfRatingCount;
- (KalturaFieldType)getTypeOfRating;
- (KalturaFieldType)getTypeOfBuzzScore;
- (NSString*)getObjectTypeOfBuzzScore;
- (void)setAssetIdFromString:(NSString*)aPropVal;
- (void)setLikesFromString:(NSString*)aPropVal;
- (void)setViewsFromString:(NSString*)aPropVal;
- (void)setRatingCountFromString:(NSString*)aPropVal;
- (void)setRatingFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Slim asset info
@interface KalturaBaseAssetInfo : KalturaObjectBase
// Unique identifier for the asset
@property (nonatomic,assign,readonly) int id;
// Identifies the asset type (EPG, Movie, TV Series, etc). 
//             Possible values: 0 – EPG linear programs, or any asset type ID according to the asset types IDs defined in the system.
@property (nonatomic,assign) int type;
// Asset name
@property (nonatomic,copy) NSString* name;
// Asset description
@property (nonatomic,copy) NSString* description;
// Collection of images details that can be used to represent this asset
@property (nonatomic,retain) NSMutableArray* images;	// of KalturaMediaImage elements
// Files
@property (nonatomic,retain) NSMutableArray* mediaFiles;	// of KalturaMediaFile elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfImages;
- (NSString*)getObjectTypeOfImages;
- (KalturaFieldType)getTypeOfMediaFiles;
- (NSString*)getObjectTypeOfMediaFiles;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setTypeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Asset info
@interface KalturaAsset : KalturaBaseAssetInfo
// Dynamic collection of key-value pairs according to the String Meta defined in the system
@property (nonatomic,retain) NSMutableDictionary* metas;	// of KalturaValue elements
// Dynamic collection of key-value pairs according to the Tag Types defined in the system
@property (nonatomic,retain) NSMutableDictionary* tags;	// of KalturaStringValueArray elements
// Date and time represented as epoch. For VOD – since when the asset is available in the catalog. For EPG/Linear – when the program is aired (can be in the future).
@property (nonatomic,assign) int startDate;
// Date and time represented as epoch. For VOD – till when the asset be available in the catalog. For EPG/Linear – program end time and date
@property (nonatomic,assign) int endDate;
// Enable cDVR
@property (nonatomic,assign) KALTURA_BOOL enableCdvr;
// Enable catch-up
@property (nonatomic,assign) KALTURA_BOOL enableCatchUp;
// Enable start over
@property (nonatomic,assign) KALTURA_BOOL enableStartOver;
// Enable trick-play
@property (nonatomic,assign) KALTURA_BOOL enableTrickPlay;
- (KalturaFieldType)getTypeOfMetas;
- (NSString*)getObjectTypeOfMetas;
- (KalturaFieldType)getTypeOfTags;
- (NSString*)getObjectTypeOfTags;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfEnableCdvr;
- (KalturaFieldType)getTypeOfEnableCatchUp;
- (KalturaFieldType)getTypeOfEnableStartOver;
- (KalturaFieldType)getTypeOfEnableTrickPlay;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setEnableCdvrFromString:(NSString*)aPropVal;
- (void)setEnableCatchUpFromString:(NSString*)aPropVal;
- (void)setEnableStartOverFromString:(NSString*)aPropVal;
- (void)setEnableTrickPlayFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Asset wrapper
@interface KalturaAssetListResponse : KalturaListResponse
// Assets
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaAsset elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Program-asset info
@interface KalturaProgramAsset : KalturaAsset
// EPG channel identifier
@property (nonatomic,assign) int epgChannelId;
// EPG identifier
@property (nonatomic,copy) NSString* epgId;
// Ralated media identifier
@property (nonatomic,assign) int relatedMediaId;
// Unique identifier for the program
@property (nonatomic,copy) NSString* crid;
- (KalturaFieldType)getTypeOfEpgChannelId;
- (KalturaFieldType)getTypeOfEpgId;
- (KalturaFieldType)getTypeOfRelatedMediaId;
- (KalturaFieldType)getTypeOfCrid;
- (void)setEpgChannelIdFromString:(NSString*)aPropVal;
- (void)setRelatedMediaIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Media-asset info
@interface KalturaMediaAsset : KalturaAsset
// Date and time represented as epoch.
@property (nonatomic,assign) int systemStartDate;
// Date and time represented as epoch.
@property (nonatomic,assign) int systemFinalDate;
// External identifiers
@property (nonatomic,copy) NSString* externalIds;
// Catch-up buffer
@property (nonatomic,assign) int catchUpBuffer;
// Trick-play buffer
@property (nonatomic,assign) int trickPlayBuffer;
// Enable Recording playback for non entitled channel
@property (nonatomic,assign,readonly) KALTURA_BOOL enableRecordingPlaybackNonEntitledChannel;
// Enable Recording playback for non existing channel
@property (nonatomic,assign,readonly) KALTURA_BOOL enableRecordingPlaybackNonExistingChannel;
- (KalturaFieldType)getTypeOfSystemStartDate;
- (KalturaFieldType)getTypeOfSystemFinalDate;
- (KalturaFieldType)getTypeOfExternalIds;
- (KalturaFieldType)getTypeOfCatchUpBuffer;
- (KalturaFieldType)getTypeOfTrickPlayBuffer;
- (KalturaFieldType)getTypeOfEnableRecordingPlaybackNonEntitledChannel;
- (KalturaFieldType)getTypeOfEnableRecordingPlaybackNonExistingChannel;
- (void)setSystemStartDateFromString:(NSString*)aPropVal;
- (void)setSystemFinalDateFromString:(NSString*)aPropVal;
- (void)setCatchUpBufferFromString:(NSString*)aPropVal;
- (void)setTrickPlayBufferFromString:(NSString*)aPropVal;
- (void)setEnableRecordingPlaybackNonEntitledChannelFromString:(NSString*)aPropVal;
- (void)setEnableRecordingPlaybackNonExistingChannelFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Asset Comment
@interface KalturaAssetComment : KalturaObjectBase
// Comment ID
@property (nonatomic,assign) int id;
// Asset identifier
@property (nonatomic,copy) NSString* assetId;
// Asset Type
@property (nonatomic,copy) NSString* assetType;	// enum KalturaAssetType
// Header
@property (nonatomic,copy) NSString* header;
// Sub Header
@property (nonatomic,copy) NSString* subHeader;
// Text
@property (nonatomic,copy) NSString* text;
// CreateDate
@property (nonatomic,assign) int createDate;
// Writer
@property (nonatomic,copy) NSString* writer;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfAssetType;
- (KalturaFieldType)getTypeOfHeader;
- (KalturaFieldType)getTypeOfSubHeader;
- (KalturaFieldType)getTypeOfText;
- (KalturaFieldType)getTypeOfCreateDate;
- (KalturaFieldType)getTypeOfWriter;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setCreateDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Asset Comment Response
@interface KalturaAssetCommentListResponse : KalturaListResponse
// Assets
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaAssetComment elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSeriesRecording : KalturaObjectBase
// Kaltura unique ID representing the series recording identifier
@property (nonatomic,assign,readonly) int id;
// Kaltura EpgId
@property (nonatomic,assign) int epgId;
// Kaltura ChannelId
@property (nonatomic,assign) int channelId;
// Kaltura SeriesId
@property (nonatomic,copy) NSString* seriesId;
// Kaltura SeasonNumber
@property (nonatomic,assign) int seasonNumber;
// Recording Type: single/series/season
@property (nonatomic,copy) NSString* type;	// enum KalturaRecordingType
// Specifies when was the series recording created. Date and time represented as epoch.
@property (nonatomic,assign,readonly) int createDate;
// Specifies when was the series recording last updated. Date and time represented as epoch.
@property (nonatomic,assign,readonly) int updateDate;
// List of the season numbers to exclude.
@property (nonatomic,retain,readonly) NSMutableArray* excludedSeasons;	// of KalturaIntegerValue elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfEpgId;
- (KalturaFieldType)getTypeOfChannelId;
- (KalturaFieldType)getTypeOfSeriesId;
- (KalturaFieldType)getTypeOfSeasonNumber;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfCreateDate;
- (KalturaFieldType)getTypeOfUpdateDate;
- (KalturaFieldType)getTypeOfExcludedSeasons;
- (NSString*)getObjectTypeOfExcludedSeasons;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setEpgIdFromString:(NSString*)aPropVal;
- (void)setChannelIdFromString:(NSString*)aPropVal;
- (void)setSeasonNumberFromString:(NSString*)aPropVal;
- (void)setCreateDateFromString:(NSString*)aPropVal;
- (void)setUpdateDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Series Recordings info wrapper
@interface KalturaSeriesRecordingListResponse : KalturaListResponse
// Series Recordings
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaSeriesRecording elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Premium service
@interface KalturaPremiumService : KalturaObjectBase
// Service identifier
@property (nonatomic,assign,readonly) int id;
// Service name / description
@property (nonatomic,copy) NSString* name;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Houshold premium service
@interface KalturaHouseholdPremiumService : KalturaPremiumService
@end

// @package Kaltura
// @subpackage Client
// Premium services list
@interface KalturaHouseholdPremiumServiceListResponse : KalturaListResponse
// A list of premium services
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaHouseholdPremiumService elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// C-DVR Adapter
@interface KalturaCDVRAdapterProfile : KalturaObjectBase
// C-DVR adapter identifier
@property (nonatomic,assign,readonly) int id;
// C-DVR adapter name
@property (nonatomic,copy) NSString* name;
// C-DVR adapter active status
@property (nonatomic,assign) KALTURA_BOOL isActive;
// C-DVR adapter adapter URL
@property (nonatomic,copy) NSString* adapterUrl;
// C-DVR adapter extra parameters
@property (nonatomic,retain) NSMutableDictionary* settings;	// of KalturaStringValue elements
// C-DVR adapter external identifier
@property (nonatomic,copy) NSString* externalIdentifier;
// C-DVR shared secret
@property (nonatomic,copy,readonly) NSString* sharedSecret;
// Indicates whether the C-DVR adapter supports dynamic URLs
@property (nonatomic,assign) KALTURA_BOOL dynamicLinksSupport;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfIsActive;
- (KalturaFieldType)getTypeOfAdapterUrl;
- (KalturaFieldType)getTypeOfSettings;
- (NSString*)getObjectTypeOfSettings;
- (KalturaFieldType)getTypeOfExternalIdentifier;
- (KalturaFieldType)getTypeOfSharedSecret;
- (KalturaFieldType)getTypeOfDynamicLinksSupport;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setIsActiveFromString:(NSString*)aPropVal;
- (void)setDynamicLinksSupportFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// C-DVR adapter profiles
@interface KalturaCDVRAdapterProfileListResponse : KalturaListResponse
// C-DVR adapter profiles
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaCDVRAdapterProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Bulk export task
@interface KalturaExportTask : KalturaObjectBase
// Task identifier
@property (nonatomic,assign,readonly) int id;
// Alias for the task used to solicit an export using API
@property (nonatomic,copy) NSString* alias;
// Task display name
@property (nonatomic,copy) NSString* name;
// The data type exported in this task
@property (nonatomic,copy) NSString* dataType;	// enum KalturaExportDataType
// Filter to apply on the export, utilize KSQL.
//             Note: KSQL currently applies to media assets only. It cannot be used for USERS filtering
@property (nonatomic,copy) NSString* filter;
// Type of export batch – full or incremental
@property (nonatomic,copy) NSString* exportType;	// enum KalturaExportType
// How often the export should occur, reasonable minimum threshold should apply, configurable in minutes
@property (nonatomic,assign) int frequency;
// The URL for sending a notification when the task&#39;s export process is done
@property (nonatomic,copy) NSString* notificationUrl;
// List of media type identifiers (as configured in TVM) to export. used only in case data_type = vod
@property (nonatomic,retain) NSMutableArray* vodTypes;	// of KalturaIntegerValue elements
// Indicates if the task is active or not
@property (nonatomic,assign) KALTURA_BOOL isActive;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfAlias;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDataType;
- (KalturaFieldType)getTypeOfFilter;
- (KalturaFieldType)getTypeOfExportType;
- (KalturaFieldType)getTypeOfFrequency;
- (KalturaFieldType)getTypeOfNotificationUrl;
- (KalturaFieldType)getTypeOfVodTypes;
- (NSString*)getObjectTypeOfVodTypes;
- (KalturaFieldType)getTypeOfIsActive;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setFrequencyFromString:(NSString*)aPropVal;
- (void)setIsActiveFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Export task list wrapper
@interface KalturaExportTaskListResponse : KalturaListResponse
// Export task items
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaExportTask elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Holder object for channel enrichment enum
@interface KalturaChannelEnrichmentHolder : KalturaObjectBase
@property (nonatomic,copy) NSString* type;	// enum KalturaChannelEnrichment
- (KalturaFieldType)getTypeOfType;
@end

// @package Kaltura
// @subpackage Client
// OSS Adapter
@interface KalturaExternalChannelProfile : KalturaObjectBase
// External channel id
@property (nonatomic,assign,readonly) int id;
// External channel name
@property (nonatomic,copy) NSString* name;
// External channel active status
@property (nonatomic,assign) KALTURA_BOOL isActive;
// External channel external identifier
@property (nonatomic,copy) NSString* externalIdentifier;
// Filter expression
@property (nonatomic,copy) NSString* filterExpression;
// Recommendation engine id
@property (nonatomic,assign) int recommendationEngineId;
// Enrichments
@property (nonatomic,retain) NSMutableArray* enrichments;	// of KalturaChannelEnrichmentHolder elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfIsActive;
- (KalturaFieldType)getTypeOfExternalIdentifier;
- (KalturaFieldType)getTypeOfFilterExpression;
- (KalturaFieldType)getTypeOfRecommendationEngineId;
- (KalturaFieldType)getTypeOfEnrichments;
- (NSString*)getObjectTypeOfEnrichments;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setIsActiveFromString:(NSString*)aPropVal;
- (void)setRecommendationEngineIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// External channel profiles
@interface KalturaExternalChannelProfileListResponse : KalturaListResponse
// External channel profiles
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaExternalChannelProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// PaymentGW
@interface KalturaRecommendationProfile : KalturaObjectBase
// recommendation engine id
@property (nonatomic,assign,readonly) int id;
// recommendation engine name
@property (nonatomic,copy) NSString* name;
// recommendation engine is active status
@property (nonatomic,assign) KALTURA_BOOL isActive;
// recommendation engine adapter URL
@property (nonatomic,copy) NSString* adapterUrl;
// recommendation engine extra parameters
@property (nonatomic,retain) NSMutableDictionary* recommendationEngineSettings;	// of KalturaStringValue elements
// recommendation engine external identifier
@property (nonatomic,copy) NSString* externalIdentifier;
// Shared Secret
@property (nonatomic,copy,readonly) NSString* sharedSecret;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfIsActive;
- (KalturaFieldType)getTypeOfAdapterUrl;
- (KalturaFieldType)getTypeOfRecommendationEngineSettings;
- (NSString*)getObjectTypeOfRecommendationEngineSettings;
- (KalturaFieldType)getTypeOfExternalIdentifier;
- (KalturaFieldType)getTypeOfSharedSecret;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setIsActiveFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of recommendation profiles.
@interface KalturaRecommendationProfileListResponse : KalturaListResponse
// Recommendation profiles list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaRecommendationProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegistrySettings : KalturaObjectBase
// Permission item identifier
@property (nonatomic,copy) NSString* key;
// Permission item name
@property (nonatomic,copy) NSString* value;
- (KalturaFieldType)getTypeOfKey;
- (KalturaFieldType)getTypeOfValue;
@end

// @package Kaltura
// @subpackage Client
// List of registry settings.
@interface KalturaRegistrySettingsListResponse : KalturaListResponse
// Registry settings list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaRegistrySettings elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdPaymentMethod : KalturaObjectBase
// Household payment method identifier (internal)
@property (nonatomic,assign,readonly) int id;
// Payment-gateway identifier
@property (nonatomic,assign) int paymentGatewayId;
// Payment method name
@property (nonatomic,copy) NSString* name;
// Indicates whether the payment method allow multiple instances
@property (nonatomic,assign) KALTURA_BOOL allowMultiInstance;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPaymentGatewayId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfAllowMultiInstance;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPaymentGatewayIdFromString:(NSString*)aPropVal;
- (void)setAllowMultiInstanceFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of household payment methods.
@interface KalturaHouseholdPaymentMethodListResponse : KalturaListResponse
// Follow data list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaHouseholdPaymentMethod elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPaymentMethodProfile : KalturaObjectBase
// Payment method identifier (internal)
@property (nonatomic,assign,readonly) int id;
// Payment gateway identifier (internal)
@property (nonatomic,assign) int paymentGatewayId;
// Payment method name
@property (nonatomic,copy) NSString* name;
// Indicates whether the payment method allow multiple instances
@property (nonatomic,assign) KALTURA_BOOL allowMultiInstance;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPaymentGatewayId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfAllowMultiInstance;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setPaymentGatewayIdFromString:(NSString*)aPropVal;
- (void)setAllowMultiInstanceFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of payment method profiles.
@interface KalturaPaymentMethodProfileListResponse : KalturaListResponse
// Payment method profiles list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaPaymentMethodProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Price
@interface KalturaPrice : KalturaObjectBase
// Price
@property (nonatomic,assign) double amount;
// Currency
@property (nonatomic,copy) NSString* currency;
// Currency Sign
@property (nonatomic,copy) NSString* currencySign;
- (KalturaFieldType)getTypeOfAmount;
- (KalturaFieldType)getTypeOfCurrency;
- (KalturaFieldType)getTypeOfCurrencySign;
- (void)setAmountFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaProductPrice : KalturaObjectBase
// Product identifier
@property (nonatomic,copy) NSString* productId;
// Product Type
@property (nonatomic,copy) NSString* productType;	// enum KalturaTransactionType
// Product price
@property (nonatomic,retain) KalturaPrice* price;
// Product purchase status
@property (nonatomic,copy) NSString* purchaseStatus;	// enum KalturaPurchaseStatus
- (KalturaFieldType)getTypeOfProductId;
- (KalturaFieldType)getTypeOfProductType;
- (KalturaFieldType)getTypeOfPrice;
- (NSString*)getObjectTypeOfPrice;
- (KalturaFieldType)getTypeOfPurchaseStatus;
@end

// @package Kaltura
// @subpackage Client
// Container for translation
@interface KalturaTranslationToken : KalturaObjectBase
// Language code
@property (nonatomic,copy) NSString* language;
// Translated value
@property (nonatomic,copy) NSString* value;
- (KalturaFieldType)getTypeOfLanguage;
- (KalturaFieldType)getTypeOfValue;
@end

// @package Kaltura
// @subpackage Client
// PPV price details
@interface KalturaPpvPrice : KalturaProductPrice
// Media file identifier
@property (nonatomic,assign) int fileId;
// The associated PPV module identifier
@property (nonatomic,copy) NSString* ppvModuleId;
// Denotes whether this object is available only as part of a subscription or can be sold separately
@property (nonatomic,assign) KALTURA_BOOL isSubscriptionOnly;
// The full price of the item (with no discounts)
@property (nonatomic,retain) KalturaPrice* fullPrice;
// The identifier of the relevant subscription
@property (nonatomic,copy) NSString* subscriptionId;
// The identifier of the relevant collection
@property (nonatomic,copy) NSString* collectionId;
// The identifier of the relevant pre paid
@property (nonatomic,copy) NSString* prePaidId;
// A list of the descriptions of the PPV module on different languages (language code and translation)
@property (nonatomic,retain) NSMutableArray* ppvDescriptions;	// of KalturaTranslationToken elements
// If the item already purchased - the identifier of the user (in the household) who purchased this item
@property (nonatomic,copy) NSString* purchaseUserId;
// If the item already purchased - the identifier of the purchased file
@property (nonatomic,assign) int purchasedMediaFileId;
// Related media files identifiers (different types)
@property (nonatomic,retain) NSMutableArray* relatedMediaFileIds;	// of KalturaIntegerValue elements
// If the item already purchased - since when the user can start watching the item
@property (nonatomic,assign) int startDate;
// If the item already purchased - until when the user can watch the item
@property (nonatomic,assign) int endDate;
// Discount end date
@property (nonatomic,assign) int discountEndDate;
// If the item already purchased and played - the name of the device on which it was first played
@property (nonatomic,copy) NSString* firstDeviceName;
// If waiver period is enabled - donates whether the user is still in the cancelation window
@property (nonatomic,assign) KALTURA_BOOL isInCancelationPeriod;
// The PPV product code
@property (nonatomic,copy) NSString* ppvProductCode;
- (KalturaFieldType)getTypeOfFileId;
- (KalturaFieldType)getTypeOfPpvModuleId;
- (KalturaFieldType)getTypeOfIsSubscriptionOnly;
- (KalturaFieldType)getTypeOfFullPrice;
- (NSString*)getObjectTypeOfFullPrice;
- (KalturaFieldType)getTypeOfSubscriptionId;
- (KalturaFieldType)getTypeOfCollectionId;
- (KalturaFieldType)getTypeOfPrePaidId;
- (KalturaFieldType)getTypeOfPpvDescriptions;
- (NSString*)getObjectTypeOfPpvDescriptions;
- (KalturaFieldType)getTypeOfPurchaseUserId;
- (KalturaFieldType)getTypeOfPurchasedMediaFileId;
- (KalturaFieldType)getTypeOfRelatedMediaFileIds;
- (NSString*)getObjectTypeOfRelatedMediaFileIds;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfDiscountEndDate;
- (KalturaFieldType)getTypeOfFirstDeviceName;
- (KalturaFieldType)getTypeOfIsInCancelationPeriod;
- (KalturaFieldType)getTypeOfPpvProductCode;
- (void)setFileIdFromString:(NSString*)aPropVal;
- (void)setIsSubscriptionOnlyFromString:(NSString*)aPropVal;
- (void)setPurchasedMediaFileIdFromString:(NSString*)aPropVal;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setDiscountEndDateFromString:(NSString*)aPropVal;
- (void)setIsInCancelationPeriodFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// PPV item price details
@interface KalturaPPVItemPriceDetails : KalturaObjectBase
// The associated PPV module identifier
@property (nonatomic,copy) NSString* ppvModuleId;
// Denotes whether this object is available only as part of a subscription or can be sold separately
@property (nonatomic,assign) KALTURA_BOOL isSubscriptionOnly;
// The calculated price of the item after discounts (as part of a purchased subscription by the user or by using a coupon)
@property (nonatomic,retain) KalturaPrice* price;
// The full price of the item (with no discounts)
@property (nonatomic,retain) KalturaPrice* fullPrice;
// Subscription purchase status
@property (nonatomic,copy) NSString* purchaseStatus;	// enum KalturaPurchaseStatus
// The identifier of the relevant subscription
@property (nonatomic,copy) NSString* subscriptionId;
// The identifier of the relevant collection
@property (nonatomic,copy) NSString* collectionId;
// The identifier of the relevant pre paid
@property (nonatomic,copy) NSString* prePaidId;
// A list of the descriptions of the PPV module on different languages (language code and translation)
@property (nonatomic,retain) NSMutableArray* ppvDescriptions;	// of KalturaTranslationToken elements
// If the item already purchased - the identifier of the user (in the household) who purchased this item
@property (nonatomic,copy) NSString* purchaseUserId;
// If the item already purchased - the identifier of the purchased file
@property (nonatomic,assign) int purchasedMediaFileId;
// Related media files identifiers (different types)
@property (nonatomic,retain) NSMutableArray* relatedMediaFileIds;	// of KalturaIntegerValue elements
// If the item already purchased - since when the user can start watching the item
@property (nonatomic,assign) int startDate;
// If the item already purchased - until when the user can watch the item
@property (nonatomic,assign) int endDate;
// Discount end date
@property (nonatomic,assign) int discountEndDate;
// If the item already purchased and played - the name of the device on which it was first played
@property (nonatomic,copy) NSString* firstDeviceName;
// If waiver period is enabled - donates whether the user is still in the cancelation window
@property (nonatomic,assign) KALTURA_BOOL isInCancelationPeriod;
// The PPV product code
@property (nonatomic,copy) NSString* ppvProductCode;
- (KalturaFieldType)getTypeOfPpvModuleId;
- (KalturaFieldType)getTypeOfIsSubscriptionOnly;
- (KalturaFieldType)getTypeOfPrice;
- (NSString*)getObjectTypeOfPrice;
- (KalturaFieldType)getTypeOfFullPrice;
- (NSString*)getObjectTypeOfFullPrice;
- (KalturaFieldType)getTypeOfPurchaseStatus;
- (KalturaFieldType)getTypeOfSubscriptionId;
- (KalturaFieldType)getTypeOfCollectionId;
- (KalturaFieldType)getTypeOfPrePaidId;
- (KalturaFieldType)getTypeOfPpvDescriptions;
- (NSString*)getObjectTypeOfPpvDescriptions;
- (KalturaFieldType)getTypeOfPurchaseUserId;
- (KalturaFieldType)getTypeOfPurchasedMediaFileId;
- (KalturaFieldType)getTypeOfRelatedMediaFileIds;
- (NSString*)getObjectTypeOfRelatedMediaFileIds;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfDiscountEndDate;
- (KalturaFieldType)getTypeOfFirstDeviceName;
- (KalturaFieldType)getTypeOfIsInCancelationPeriod;
- (KalturaFieldType)getTypeOfPpvProductCode;
- (void)setIsSubscriptionOnlyFromString:(NSString*)aPropVal;
- (void)setPurchasedMediaFileIdFromString:(NSString*)aPropVal;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setDiscountEndDateFromString:(NSString*)aPropVal;
- (void)setIsInCancelationPeriodFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// PPV price details
@interface KalturaItemPrice : KalturaProductPrice
// Media file identifier
@property (nonatomic,assign) int fileId;
// PPV price details
@property (nonatomic,retain) NSMutableArray* ppvPriceDetails;	// of KalturaPPVItemPriceDetails elements
- (KalturaFieldType)getTypeOfFileId;
- (KalturaFieldType)getTypeOfPpvPriceDetails;
- (NSString*)getObjectTypeOfPpvPriceDetails;
- (void)setFileIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Subscription price details
@interface KalturaSubscriptionPrice : KalturaProductPrice
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdPaymentGateway : KalturaObjectBase
// payment gateway id
@property (nonatomic,assign,readonly) int id;
// payment gateway name
@property (nonatomic,copy) NSString* name;
// Payment gateway default (true/false)
@property (nonatomic,assign) KALTURA_BOOL isDefault;
// distinction payment gateway selected by account or household
@property (nonatomic,copy) NSString* selectedBy;	// enum KalturaHouseholdPaymentGatewaySelectedBy
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfIsDefault;
- (KalturaFieldType)getTypeOfSelectedBy;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setIsDefaultFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of household payment gateways.
@interface KalturaHouseholdPaymentGatewayListResponse : KalturaListResponse
// Follow data list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaHouseholdPaymentGateway elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Payment gateway base profile
@interface KalturaPaymentGatewayBaseProfile : KalturaObjectBase
// payment gateway id
@property (nonatomic,assign,readonly) int id;
// payment gateway name
@property (nonatomic,copy) NSString* name;
// Payment gateway default (true/false)
@property (nonatomic,assign) KALTURA_BOOL isDefault;
// distinction payment gateway selected by account or household
@property (nonatomic,copy) NSString* selectedBy;	// enum KalturaHouseholdPaymentGatewaySelectedBy
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfIsDefault;
- (KalturaFieldType)getTypeOfSelectedBy;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setIsDefaultFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Payment gateway profile
@interface KalturaPaymentGatewayProfile : KalturaPaymentGatewayBaseProfile
// Payment gateway is active status
@property (nonatomic,assign) int isActive;
// Payment gateway adapter URL
@property (nonatomic,copy) NSString* adapterUrl;
// Payment gateway transact URL
@property (nonatomic,copy) NSString* transactUrl;
// Payment gateway status URL
@property (nonatomic,copy) NSString* statusUrl;
// Payment gateway renew URL
@property (nonatomic,copy) NSString* renewUrl;
// Payment gateway extra parameters
@property (nonatomic,retain) NSMutableDictionary* paymentGatewayeSettings;	// of KalturaStringValue elements
// Payment gateway external identifier
@property (nonatomic,copy) NSString* externalIdentifier;
// Pending Interval in minutes
@property (nonatomic,assign) int pendingInterval;
// Pending Retries
@property (nonatomic,assign) int pendingRetries;
// Shared Secret
@property (nonatomic,copy) NSString* sharedSecret;
// Renew Interval Minutes
@property (nonatomic,assign) int renewIntervalMinutes;
// Renew Start Minutes
@property (nonatomic,assign) int renewStartMinutes;
- (KalturaFieldType)getTypeOfIsActive;
- (KalturaFieldType)getTypeOfAdapterUrl;
- (KalturaFieldType)getTypeOfTransactUrl;
- (KalturaFieldType)getTypeOfStatusUrl;
- (KalturaFieldType)getTypeOfRenewUrl;
- (KalturaFieldType)getTypeOfPaymentGatewayeSettings;
- (NSString*)getObjectTypeOfPaymentGatewayeSettings;
- (KalturaFieldType)getTypeOfExternalIdentifier;
- (KalturaFieldType)getTypeOfPendingInterval;
- (KalturaFieldType)getTypeOfPendingRetries;
- (KalturaFieldType)getTypeOfSharedSecret;
- (KalturaFieldType)getTypeOfRenewIntervalMinutes;
- (KalturaFieldType)getTypeOfRenewStartMinutes;
- (void)setIsActiveFromString:(NSString*)aPropVal;
- (void)setPendingIntervalFromString:(NSString*)aPropVal;
- (void)setPendingRetriesFromString:(NSString*)aPropVal;
- (void)setRenewIntervalMinutesFromString:(NSString*)aPropVal;
- (void)setRenewStartMinutesFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// PaymentGatewayProfile list
@interface KalturaPaymentGatewayProfileListResponse : KalturaListResponse
// A list of payment-gateway profiles
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaPaymentGatewayProfile elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Parental rule
@interface KalturaParentalRule : KalturaObjectBase
// Unique parental rule identifier
@property (nonatomic,assign,readonly) int id;
// Rule display name
@property (nonatomic,copy) NSString* name;
// Explanatory description
@property (nonatomic,copy) NSString* description;
// Rule order within the full list of rules
@property (nonatomic,assign) int order;
// Media asset tag ID to in which to look for corresponding trigger values
@property (nonatomic,assign) int mediaTag;
// EPG asset tag ID to in which to look for corresponding trigger values
@property (nonatomic,assign) int epgTag;
// Content that correspond to this rule is not available for guests
@property (nonatomic,assign) KALTURA_BOOL blockAnonymousAccess;
// Rule type – Movies, TV series or both
@property (nonatomic,copy) NSString* ruleType;	// enum KalturaParentalRuleType
// Media tag values that trigger rule
@property (nonatomic,retain) NSMutableArray* mediaTagValues;	// of KalturaStringValue elements
// EPG tag values that trigger rule
@property (nonatomic,retain) NSMutableArray* epgTagValues;	// of KalturaStringValue elements
// Is the rule the default rule of the account
@property (nonatomic,assign) KALTURA_BOOL isDefault;
// Where was this rule defined account, household or user
@property (nonatomic,copy) NSString* origin;	// enum KalturaRuleLevel
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfOrder;
- (KalturaFieldType)getTypeOfMediaTag;
- (KalturaFieldType)getTypeOfEpgTag;
- (KalturaFieldType)getTypeOfBlockAnonymousAccess;
- (KalturaFieldType)getTypeOfRuleType;
- (KalturaFieldType)getTypeOfMediaTagValues;
- (NSString*)getObjectTypeOfMediaTagValues;
- (KalturaFieldType)getTypeOfEpgTagValues;
- (NSString*)getObjectTypeOfEpgTagValues;
- (KalturaFieldType)getTypeOfIsDefault;
- (KalturaFieldType)getTypeOfOrigin;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setOrderFromString:(NSString*)aPropVal;
- (void)setMediaTagFromString:(NSString*)aPropVal;
- (void)setEpgTagFromString:(NSString*)aPropVal;
- (void)setBlockAnonymousAccessFromString:(NSString*)aPropVal;
- (void)setIsDefaultFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// ParentalRules list
@interface KalturaParentalRuleListResponse : KalturaListResponse
// A list of parental rules
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaParentalRule elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecording : KalturaObjectBase
// Kaltura unique ID representing the recording identifier
@property (nonatomic,assign,readonly) int id;
// Recording state: scheduled/recording/recorded/canceled/failed/does_not_exists/deleted
@property (nonatomic,copy,readonly) NSString* status;	// enum KalturaRecordingStatus
// Kaltura unique ID representing the program identifier
@property (nonatomic,assign) int assetId;
// Recording Type: single/season/series
@property (nonatomic,copy,readonly) NSString* type;	// enum KalturaRecordingType
// Specifies until when the recording is available for viewing. Date and time represented as epoch.
@property (nonatomic,assign,readonly) int viewableUntilDate;
// Specifies whether or not the recording is protected
@property (nonatomic,assign,readonly) KALTURA_BOOL isProtected;
// Specifies when was the recording created. Date and time represented as epoch.
@property (nonatomic,assign,readonly) int createDate;
// Specifies when was the recording last updated. Date and time represented as epoch.
@property (nonatomic,assign,readonly) int updateDate;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfViewableUntilDate;
- (KalturaFieldType)getTypeOfIsProtected;
- (KalturaFieldType)getTypeOfCreateDate;
- (KalturaFieldType)getTypeOfUpdateDate;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setAssetIdFromString:(NSString*)aPropVal;
- (void)setViewableUntilDateFromString:(NSString*)aPropVal;
- (void)setIsProtectedFromString:(NSString*)aPropVal;
- (void)setCreateDateFromString:(NSString*)aPropVal;
- (void)setUpdateDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Recordings info wrapper
@interface KalturaRecordingListResponse : KalturaListResponse
// Recordings
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaRecording elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Billing Transaction
@interface KalturaBillingTransaction : KalturaObjectBase
// Reciept Code
@property (nonatomic,copy,readonly) NSString* recieptCode;
// Purchased Item Name
@property (nonatomic,copy,readonly) NSString* purchasedItemName;
// Purchased Item Code
@property (nonatomic,copy,readonly) NSString* purchasedItemCode;
// Item Type
@property (nonatomic,copy,readonly) NSString* itemType;	// enum KalturaBillingItemsType
// Billing Action
@property (nonatomic,copy,readonly) NSString* billingAction;	// enum KalturaBillingAction
// price
@property (nonatomic,retain,readonly) KalturaPrice* price;
// Action Date
@property (nonatomic,assign,readonly) int actionDate;
// Start Date
@property (nonatomic,assign,readonly) int startDate;
// End Date
@property (nonatomic,assign,readonly) int endDate;
// Payment Method
@property (nonatomic,copy,readonly) NSString* paymentMethod;	// enum KalturaPaymentMethodType
// Payment Method Extra Details
@property (nonatomic,copy,readonly) NSString* paymentMethodExtraDetails;
// Is Recurring
@property (nonatomic,assign,readonly) KALTURA_BOOL isRecurring;
// Billing Provider Ref
@property (nonatomic,assign,readonly) int billingProviderRef;
// Purchase ID
@property (nonatomic,assign,readonly) int purchaseId;
// Remarks
@property (nonatomic,copy,readonly) NSString* remarks;
- (KalturaFieldType)getTypeOfRecieptCode;
- (KalturaFieldType)getTypeOfPurchasedItemName;
- (KalturaFieldType)getTypeOfPurchasedItemCode;
- (KalturaFieldType)getTypeOfItemType;
- (KalturaFieldType)getTypeOfBillingAction;
- (KalturaFieldType)getTypeOfPrice;
- (NSString*)getObjectTypeOfPrice;
- (KalturaFieldType)getTypeOfActionDate;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfPaymentMethod;
- (KalturaFieldType)getTypeOfPaymentMethodExtraDetails;
- (KalturaFieldType)getTypeOfIsRecurring;
- (KalturaFieldType)getTypeOfBillingProviderRef;
- (KalturaFieldType)getTypeOfPurchaseId;
- (KalturaFieldType)getTypeOfRemarks;
- (void)setActionDateFromString:(NSString*)aPropVal;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setIsRecurringFromString:(NSString*)aPropVal;
- (void)setBillingProviderRefFromString:(NSString*)aPropVal;
- (void)setPurchaseIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Billing Transactions
@interface KalturaBillingTransactionListResponse : KalturaListResponse
// Transactions
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaBillingTransaction elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPermissionItem : KalturaObjectBase
// Permission item identifier
@property (nonatomic,assign,readonly) int id;
// Permission item name
@property (nonatomic,copy) NSString* name;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPermission : KalturaObjectBase
// Permission identifier
@property (nonatomic,assign,readonly) int id;
// Permission name
@property (nonatomic,copy) NSString* name;
// List of permission items associated with the permission
@property (nonatomic,retain) NSMutableArray* permissionItems;	// of KalturaPermissionItem elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfPermissionItems;
- (NSString*)getObjectTypeOfPermissionItems;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserRole : KalturaObjectBase
// User role identifier
@property (nonatomic,assign,readonly) int id;
// User role name
@property (nonatomic,copy) NSString* name;
// List of permissions associated with the user role
@property (nonatomic,retain) NSMutableArray* permissions;	// of KalturaPermission elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfPermissions;
- (NSString*)getObjectTypeOfPermissions;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// User-roles list
@interface KalturaUserRoleListResponse : KalturaListResponse
// A list of generic rules
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaUserRole elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaGroupPermission : KalturaPermission
// Permission identifier
@property (nonatomic,copy) NSString* group;
- (KalturaFieldType)getTypeOfGroup;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaApiArgumentPermissionItem : KalturaPermissionItem
// API service name
@property (nonatomic,copy) NSString* service;
// API action name
@property (nonatomic,copy) NSString* action;
// API parameter name
@property (nonatomic,copy) NSString* parameter;
- (KalturaFieldType)getTypeOfService;
- (KalturaFieldType)getTypeOfAction;
- (KalturaFieldType)getTypeOfParameter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaApiParameterPermissionItem : KalturaPermissionItem
// API object name
@property (nonatomic,copy) NSString* object;
// API parameter name
@property (nonatomic,copy) NSString* parameter;
// API action type
@property (nonatomic,copy) NSString* action;	// enum KalturaApiParameterPermissionItemAction
- (KalturaFieldType)getTypeOfObject;
- (KalturaFieldType)getTypeOfParameter;
- (KalturaFieldType)getTypeOfAction;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaApiActionPermissionItem : KalturaPermissionItem
// API service name
@property (nonatomic,copy) NSString* service;
// API action name
@property (nonatomic,copy) NSString* action;
- (KalturaFieldType)getTypeOfService;
- (KalturaFieldType)getTypeOfAction;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaInboxMessage : KalturaObjectBase
// message id
@property (nonatomic,copy,readonly) NSString* id;
// message
@property (nonatomic,copy) NSString* message;
// Status
@property (nonatomic,copy,readonly) NSString* status;	// enum KalturaInboxMessageStatus
// Type
@property (nonatomic,copy) NSString* type;	// enum KalturaInboxMessageType
// Created at
@property (nonatomic,assign,readonly) int createdAt;
// url
@property (nonatomic,copy) NSString* url;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfMessage;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfCreatedAt;
- (KalturaFieldType)getTypeOfUrl;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of inbox message.
@interface KalturaInboxMessageListResponse : KalturaListResponse
// Follow data list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaInboxMessage elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFollowDataBase : KalturaObjectBase
// Announcement Id
@property (nonatomic,assign,readonly) int announcementId;
// Status
@property (nonatomic,assign,readonly) int status;
// Title
@property (nonatomic,copy,readonly) NSString* title;
// Timestamp
@property (nonatomic,assign,readonly) int timestamp;
// Follow Phrase
@property (nonatomic,copy,readonly) NSString* followPhrase;
- (KalturaFieldType)getTypeOfAnnouncementId;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfTitle;
- (KalturaFieldType)getTypeOfTimestamp;
- (KalturaFieldType)getTypeOfFollowPhrase;
- (void)setAnnouncementIdFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
- (void)setTimestampFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFollowTvSeries : KalturaFollowDataBase
// Asset Id
@property (nonatomic,assign,readonly) int assetId;
- (KalturaFieldType)getTypeOfAssetId;
- (void)setAssetIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of message follow data.
@interface KalturaFollowTvSeriesListResponse : KalturaListResponse
// Follow data list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaFollowTvSeries elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// List of message announcements from DB.
@interface KalturaAnnouncementListResponse : KalturaListResponse
// Announcements
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaAnnouncement elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFeed : KalturaObjectBase
@property (nonatomic,assign,readonly) int assetId;
- (KalturaFieldType)getTypeOfAssetId;
- (void)setAssetIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPersonalFeed : KalturaFeed
@end

// @package Kaltura
// @subpackage Client
// List of message follow data.
@interface KalturaPersonalFeedListResponse : KalturaListResponse
// Follow data list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaPersonalFeed elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTopic : KalturaObjectBase
// message id
@property (nonatomic,copy,readonly) NSString* id;
// message
@property (nonatomic,copy) NSString* name;
// message
@property (nonatomic,copy) NSString* subscribersAmount;
// automaticIssueNotification
@property (nonatomic,copy) NSString* automaticIssueNotification;	// enum KalturaTopicAutomaticIssueNotification
// lastMessageSentDateSec
@property (nonatomic,assign) int lastMessageSentDateSec;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfSubscribersAmount;
- (KalturaFieldType)getTypeOfAutomaticIssueNotification;
- (KalturaFieldType)getTypeOfLastMessageSentDateSec;
- (void)setLastMessageSentDateSecFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// List of inbox message.
@interface KalturaTopicListResponse : KalturaListResponse
// Follow data list
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaTopic elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Prices list
@interface KalturaProductPriceListResponse : KalturaListResponse
// A list of prices
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaProductPrice elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// ItemPrice list
@interface KalturaItemPriceListResponse : KalturaListResponse
// A list of item prices
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaItemPrice elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Slim channel
@interface KalturaBaseChannel : KalturaObjectBase
// Unique identifier for the channel
@property (nonatomic,assign,readonly) int id;
// Channel name
@property (nonatomic,copy) NSString* name;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Channel details
@interface KalturaChannel : KalturaBaseChannel
// Cannel description
@property (nonatomic,copy) NSString* description;
// Channel images
@property (nonatomic,retain) NSMutableArray* images;	// of KalturaMediaImage elements
// Asset types in the channel.
//             -26 is EPG
@property (nonatomic,retain) NSMutableArray* assetTypes;	// of KalturaIntegerValue elements
// Filter expression
@property (nonatomic,copy) NSString* filterExpression;
// active status
@property (nonatomic,assign) KALTURA_BOOL isActive;
// Channel order
@property (nonatomic,copy) NSString* order;	// enum KalturaAssetOrderBy
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfImages;
- (NSString*)getObjectTypeOfImages;
- (KalturaFieldType)getTypeOfAssetTypes;
- (NSString*)getObjectTypeOfAssetTypes;
- (KalturaFieldType)getTypeOfFilterExpression;
- (KalturaFieldType)getTypeOfIsActive;
- (KalturaFieldType)getTypeOfOrder;
- (void)setIsActiveFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Price details
@interface KalturaPriceDetails : KalturaObjectBase
// The price code identifier
@property (nonatomic,assign) int id;
// The price code name
@property (nonatomic,copy) NSString* name;
// The price
@property (nonatomic,retain) KalturaPrice* price;
// A list of the descriptions for this price on different languages (language code and translation)
@property (nonatomic,retain) NSMutableArray* descriptions;	// of KalturaTranslationToken elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfPrice;
- (NSString*)getObjectTypeOfPrice;
- (KalturaFieldType)getTypeOfDescriptions;
- (NSString*)getObjectTypeOfDescriptions;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Discount module
@interface KalturaDiscountModule : KalturaObjectBase
// The discount percentage
@property (nonatomic,assign) double percent;
// The first date the discount is available
@property (nonatomic,assign) int startDate;
// The last date the discount is available
@property (nonatomic,assign) int endDate;
- (KalturaFieldType)getTypeOfPercent;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (void)setPercentFromString:(NSString*)aPropVal;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Coupons group details
@interface KalturaCouponsGroup : KalturaObjectBase
// Coupon group identifier
@property (nonatomic,copy,readonly) NSString* id;
// Coupon group name
@property (nonatomic,copy) NSString* name;
// A list of the descriptions of the coupon group on different languages (language code and translation)
@property (nonatomic,retain) NSMutableArray* descriptions;	// of KalturaTranslationToken elements
// The first date the coupons in this coupons group are valid
@property (nonatomic,assign) int startDate;
// The last date the coupons in this coupons group are valid
@property (nonatomic,assign) int endDate;
// Maximum number of uses for each coupon in the group
@property (nonatomic,assign) int maxUsesNumber;
// Maximum number of uses for each coupon in the group on a renewable subscription
@property (nonatomic,assign) int maxUsesNumberOnRenewableSub;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDescriptions;
- (NSString*)getObjectTypeOfDescriptions;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfMaxUsesNumber;
- (KalturaFieldType)getTypeOfMaxUsesNumberOnRenewableSub;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setMaxUsesNumberFromString:(NSString*)aPropVal;
- (void)setMaxUsesNumberOnRenewableSubFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Pricing usage module
@interface KalturaUsageModule : KalturaObjectBase
// Usage module identifier
@property (nonatomic,assign,readonly) int id;
// Usage module name
@property (nonatomic,copy) NSString* name;
// The maximum number of times an item in this usage module can be viewed
@property (nonatomic,assign) int maxViewsNumber;
// The amount time an item is available for viewing since a user started watching the item
@property (nonatomic,assign) int viewLifeCycle;
// The amount time an item is available for viewing
@property (nonatomic,assign) int fullLifeCycle;
// Identifies a specific coupon linked to this object
@property (nonatomic,assign) int couponId;
// Time period during which the end user can waive his rights to cancel a purchase. When the time period is passed, the purchase can no longer be cancelled
@property (nonatomic,assign) int waiverPeriod;
// Indicates whether or not the end user has the right to waive his rights to cancel a purchase
@property (nonatomic,assign) KALTURA_BOOL isWaiverEnabled;
// Indicates that usage is targeted for offline playback
@property (nonatomic,assign) KALTURA_BOOL isOfflinePlayback;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfMaxViewsNumber;
- (KalturaFieldType)getTypeOfViewLifeCycle;
- (KalturaFieldType)getTypeOfFullLifeCycle;
- (KalturaFieldType)getTypeOfCouponId;
- (KalturaFieldType)getTypeOfWaiverPeriod;
- (KalturaFieldType)getTypeOfIsWaiverEnabled;
- (KalturaFieldType)getTypeOfIsOfflinePlayback;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setMaxViewsNumberFromString:(NSString*)aPropVal;
- (void)setViewLifeCycleFromString:(NSString*)aPropVal;
- (void)setFullLifeCycleFromString:(NSString*)aPropVal;
- (void)setCouponIdFromString:(NSString*)aPropVal;
- (void)setWaiverPeriodFromString:(NSString*)aPropVal;
- (void)setIsWaiverEnabledFromString:(NSString*)aPropVal;
- (void)setIsOfflinePlaybackFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Price plan
@interface KalturaPricePlan : KalturaUsageModule
// Denotes whether or not this object can be renewed
@property (nonatomic,assign) KALTURA_BOOL isRenewable;
// Defines the number of times the module will be renewed (for the life_cycle period)
@property (nonatomic,assign) int renewalsNumber;
// Unique identifier associated with this object&#39;s price
@property (nonatomic,assign) int priceId;
// The discount module identifier of the price plan
@property (nonatomic,assign) int discountId;
- (KalturaFieldType)getTypeOfIsRenewable;
- (KalturaFieldType)getTypeOfRenewalsNumber;
- (KalturaFieldType)getTypeOfPriceId;
- (KalturaFieldType)getTypeOfDiscountId;
- (void)setIsRenewableFromString:(NSString*)aPropVal;
- (void)setRenewalsNumberFromString:(NSString*)aPropVal;
- (void)setPriceIdFromString:(NSString*)aPropVal;
- (void)setDiscountIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Preview module
@interface KalturaPreviewModule : KalturaObjectBase
// Preview module identifier
@property (nonatomic,assign,readonly) int id;
// Preview module name
@property (nonatomic,copy) NSString* name;
// Preview module life cycle - for how long the preview module is active
@property (nonatomic,assign) int lifeCycle;
// The time you can&#39;t buy the item to which the preview module is assigned to again
@property (nonatomic,assign) int nonRenewablePeriod;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfLifeCycle;
- (KalturaFieldType)getTypeOfNonRenewablePeriod;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setLifeCycleFromString:(NSString*)aPropVal;
- (void)setNonRenewablePeriodFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Subscription details
@interface KalturaSubscription : KalturaObjectBase
// Subscription identifier
@property (nonatomic,copy) NSString* id;
// A list of channels associated with this subscription
@property (nonatomic,retain) NSMutableArray* channels;	// of KalturaBaseChannel elements
// The first date the subscription is available for purchasing
@property (nonatomic,assign) int startDate;
// The last date the subscription is available for purchasing
@property (nonatomic,assign) int endDate;
// A list of file types identifiers that are supported in this subscription
@property (nonatomic,retain) NSMutableArray* fileTypes;	// of KalturaIntegerValue elements
// Denotes whether or not this subscription can be renewed
@property (nonatomic,assign) KALTURA_BOOL isRenewable;
// Defines the number of times this subscription will be renewed
@property (nonatomic,assign) int renewalsNumber;
// Indicates whether the subscription will renew forever
@property (nonatomic,assign) KALTURA_BOOL isInfiniteRenewal;
// The price of the subscription
@property (nonatomic,retain) KalturaPriceDetails* price;
// The internal discount module for the subscription
@property (nonatomic,retain) KalturaDiscountModule* discountModule;
// Coupons group for the subscription
@property (nonatomic,retain) KalturaCouponsGroup* couponsGroup;
// A list of the name of the subscription on different languages (language code and translation)
@property (nonatomic,retain) NSMutableArray* names;	// of KalturaTranslationToken elements
// A list of the descriptions of the subscriptions on different languages (language code and translation)
@property (nonatomic,retain) NSMutableArray* descriptions;	// of KalturaTranslationToken elements
// Identifier of the media associated with the subscription
@property (nonatomic,assign) int mediaId;
// Subscription order (when returned in methods that retrieve subscriptions)
@property (nonatomic,assign) int prorityInOrder;
// Product code for the subscription
@property (nonatomic,copy) NSString* productCode;
// Subscription price plans
@property (nonatomic,retain) NSMutableArray* pricePlans;	// of KalturaPricePlan elements
// Subscription preview module
@property (nonatomic,retain) KalturaPreviewModule* previewModule;
// The household limitation module identifier associated with this subscription
@property (nonatomic,assign) int householdLimitationsId;
// The subscription grace period in minutes
@property (nonatomic,assign) int gracePeriodMinutes;
// List of premium services included in the subscription
@property (nonatomic,retain) NSMutableArray* premiumServices;	// of KalturaPremiumService elements
// The maximum number of times an item in this usage module can be viewed
@property (nonatomic,assign) int maxViewsNumber;
// The amount time an item is available for viewing since a user started watching the item
@property (nonatomic,assign) int viewLifeCycle;
// Time period during which the end user can waive his rights to cancel a purchase. When the time period is passed, the purchase can no longer be cancelled
@property (nonatomic,assign) int waiverPeriod;
// Indicates whether or not the end user has the right to waive his rights to cancel a purchase
@property (nonatomic,assign) KALTURA_BOOL isWaiverEnabled;
// List of permitted user types for the subscription
@property (nonatomic,retain) NSMutableArray* userTypes;	// of KalturaOTTUserType elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfChannels;
- (NSString*)getObjectTypeOfChannels;
- (KalturaFieldType)getTypeOfStartDate;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfFileTypes;
- (NSString*)getObjectTypeOfFileTypes;
- (KalturaFieldType)getTypeOfIsRenewable;
- (KalturaFieldType)getTypeOfRenewalsNumber;
- (KalturaFieldType)getTypeOfIsInfiniteRenewal;
- (KalturaFieldType)getTypeOfPrice;
- (NSString*)getObjectTypeOfPrice;
- (KalturaFieldType)getTypeOfDiscountModule;
- (NSString*)getObjectTypeOfDiscountModule;
- (KalturaFieldType)getTypeOfCouponsGroup;
- (NSString*)getObjectTypeOfCouponsGroup;
- (KalturaFieldType)getTypeOfNames;
- (NSString*)getObjectTypeOfNames;
- (KalturaFieldType)getTypeOfDescriptions;
- (NSString*)getObjectTypeOfDescriptions;
- (KalturaFieldType)getTypeOfMediaId;
- (KalturaFieldType)getTypeOfProrityInOrder;
- (KalturaFieldType)getTypeOfProductCode;
- (KalturaFieldType)getTypeOfPricePlans;
- (NSString*)getObjectTypeOfPricePlans;
- (KalturaFieldType)getTypeOfPreviewModule;
- (NSString*)getObjectTypeOfPreviewModule;
- (KalturaFieldType)getTypeOfHouseholdLimitationsId;
- (KalturaFieldType)getTypeOfGracePeriodMinutes;
- (KalturaFieldType)getTypeOfPremiumServices;
- (NSString*)getObjectTypeOfPremiumServices;
- (KalturaFieldType)getTypeOfMaxViewsNumber;
- (KalturaFieldType)getTypeOfViewLifeCycle;
- (KalturaFieldType)getTypeOfWaiverPeriod;
- (KalturaFieldType)getTypeOfIsWaiverEnabled;
- (KalturaFieldType)getTypeOfUserTypes;
- (NSString*)getObjectTypeOfUserTypes;
- (void)setStartDateFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setIsRenewableFromString:(NSString*)aPropVal;
- (void)setRenewalsNumberFromString:(NSString*)aPropVal;
- (void)setIsInfiniteRenewalFromString:(NSString*)aPropVal;
- (void)setMediaIdFromString:(NSString*)aPropVal;
- (void)setProrityInOrderFromString:(NSString*)aPropVal;
- (void)setHouseholdLimitationsIdFromString:(NSString*)aPropVal;
- (void)setGracePeriodMinutesFromString:(NSString*)aPropVal;
- (void)setMaxViewsNumberFromString:(NSString*)aPropVal;
- (void)setViewLifeCycleFromString:(NSString*)aPropVal;
- (void)setWaiverPeriodFromString:(NSString*)aPropVal;
- (void)setIsWaiverEnabledFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Subscriptions list
@interface KalturaSubscriptionListResponse : KalturaListResponse
// A list of subscriptions
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaSubscription elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Prices list
@interface KalturaProductsPriceListResponse : KalturaListResponse
// A list of prices
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaProductPrice elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Entitlement
@interface KalturaEntitlement : KalturaObjectBase
// Entitlement type
@property (nonatomic,copy,readonly) NSString* type;	// enum KalturaTransactionType
// Entitlement identifier
@property (nonatomic,copy,readonly) NSString* entitlementId;
// The current number of uses
@property (nonatomic,assign,readonly) int currentUses;
// The end date of the entitlement
@property (nonatomic,assign,readonly) int endDate;
// Current date
@property (nonatomic,assign,readonly) int currentDate;
// The last date the item was viewed
@property (nonatomic,assign,readonly) int lastViewDate;
// Purchase date
@property (nonatomic,assign,readonly) int purchaseDate;
// Purchase identifier (for subscriptions and collections only)
@property (nonatomic,assign,readonly) int purchaseId;
// Payment Method
@property (nonatomic,copy,readonly) NSString* paymentMethod;	// enum KalturaPaymentMethodType
// The UDID of the device from which the purchase was made
@property (nonatomic,copy,readonly) NSString* deviceUdid;
// The name of the device from which the purchase was made
@property (nonatomic,copy,readonly) NSString* deviceName;
// Indicates whether a cancelation window period is enabled
@property (nonatomic,assign,readonly) KALTURA_BOOL isCancelationWindowEnabled;
// The maximum number of uses available for this item (only for subscription and PPV)
@property (nonatomic,assign,readonly) int maxUses;
// The date of the next renewal (only for subscription)
@property (nonatomic,assign,readonly) int nextRenewalDate;
// Indicates whether the subscription is renewable in this purchase (only for subscription)
@property (nonatomic,assign,readonly) KALTURA_BOOL isRenewableForPurchase;
// Indicates whether a subscription is renewable (only for subscription)
@property (nonatomic,assign,readonly) KALTURA_BOOL isRenewable;
// Media file identifier (only for PPV)
@property (nonatomic,assign,readonly) int mediaFileId;
// Media identifier (only for PPV)
@property (nonatomic,assign,readonly) int mediaId;
// Indicates whether the user is currently in his grace period entitlement
@property (nonatomic,assign,readonly) KALTURA_BOOL isInGracePeriod;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfEntitlementId;
- (KalturaFieldType)getTypeOfCurrentUses;
- (KalturaFieldType)getTypeOfEndDate;
- (KalturaFieldType)getTypeOfCurrentDate;
- (KalturaFieldType)getTypeOfLastViewDate;
- (KalturaFieldType)getTypeOfPurchaseDate;
- (KalturaFieldType)getTypeOfPurchaseId;
- (KalturaFieldType)getTypeOfPaymentMethod;
- (KalturaFieldType)getTypeOfDeviceUdid;
- (KalturaFieldType)getTypeOfDeviceName;
- (KalturaFieldType)getTypeOfIsCancelationWindowEnabled;
- (KalturaFieldType)getTypeOfMaxUses;
- (KalturaFieldType)getTypeOfNextRenewalDate;
- (KalturaFieldType)getTypeOfIsRenewableForPurchase;
- (KalturaFieldType)getTypeOfIsRenewable;
- (KalturaFieldType)getTypeOfMediaFileId;
- (KalturaFieldType)getTypeOfMediaId;
- (KalturaFieldType)getTypeOfIsInGracePeriod;
- (void)setCurrentUsesFromString:(NSString*)aPropVal;
- (void)setEndDateFromString:(NSString*)aPropVal;
- (void)setCurrentDateFromString:(NSString*)aPropVal;
- (void)setLastViewDateFromString:(NSString*)aPropVal;
- (void)setPurchaseDateFromString:(NSString*)aPropVal;
- (void)setPurchaseIdFromString:(NSString*)aPropVal;
- (void)setIsCancelationWindowEnabledFromString:(NSString*)aPropVal;
- (void)setMaxUsesFromString:(NSString*)aPropVal;
- (void)setNextRenewalDateFromString:(NSString*)aPropVal;
- (void)setIsRenewableForPurchaseFromString:(NSString*)aPropVal;
- (void)setIsRenewableFromString:(NSString*)aPropVal;
- (void)setMediaFileIdFromString:(NSString*)aPropVal;
- (void)setMediaIdFromString:(NSString*)aPropVal;
- (void)setIsInGracePeriodFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Entitlements list
@interface KalturaEntitlementListResponse : KalturaListResponse
// A list of entitlements
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaEntitlement elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Home network details
@interface KalturaHomeNetwork : KalturaObjectBase
// Home network identifier
@property (nonatomic,copy) NSString* externalId;
// Home network name
@property (nonatomic,copy) NSString* name;
// Home network description
@property (nonatomic,copy) NSString* description;
// Is home network is active
@property (nonatomic,assign) KALTURA_BOOL isActive;
- (KalturaFieldType)getTypeOfExternalId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfIsActive;
- (void)setIsActiveFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Home networks
@interface KalturaHomeNetworkListResponse : KalturaListResponse
// Home networks
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaHomeNetwork elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Favorite details
@interface KalturaFavorite : KalturaObjectBase
// AssetInfo Model
@property (nonatomic,assign) int assetId;
// Extra Value
@property (nonatomic,copy) NSString* extraData;
// Specifies when was the favorite created. Date and time represented as epoch.
@property (nonatomic,assign,readonly) int createDate;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfExtraData;
- (KalturaFieldType)getTypeOfCreateDate;
- (void)setAssetIdFromString:(NSString*)aPropVal;
- (void)setCreateDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Favorite list
@interface KalturaFavoriteListResponse : KalturaListResponse
// A list of favorites
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaFavorite elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Users list
@interface KalturaOTTUserListResponse : KalturaListResponse
// A list of users
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaOTTUser elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// List of assets statistics
@interface KalturaAssetStatisticsListResponse : KalturaListResponse
// Assets
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaAssetStatistics elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Slim assets wrapper
@interface KalturaSlimAssetInfoWrapper : KalturaListResponse
// Assets
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaBaseAssetInfo elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Watch history asset info
@interface KalturaAssetHistory : KalturaObjectBase
// Asset identifier
@property (nonatomic,assign,readonly) int assetId;
// Position in seconds of the relevant asset
@property (nonatomic,assign,readonly) int position;
// Duration in seconds of the relevant asset
@property (nonatomic,assign,readonly) int duration;
// The date when the media was last watched
@property (nonatomic,assign,readonly) int watchedDate;
// Boolean which specifies whether the user finished watching the movie or not
@property (nonatomic,assign,readonly) KALTURA_BOOL finishedWatching;
- (KalturaFieldType)getTypeOfAssetId;
- (KalturaFieldType)getTypeOfPosition;
- (KalturaFieldType)getTypeOfDuration;
- (KalturaFieldType)getTypeOfWatchedDate;
- (KalturaFieldType)getTypeOfFinishedWatching;
- (void)setAssetIdFromString:(NSString*)aPropVal;
- (void)setPositionFromString:(NSString*)aPropVal;
- (void)setDurationFromString:(NSString*)aPropVal;
- (void)setWatchedDateFromString:(NSString*)aPropVal;
- (void)setFinishedWatchingFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Watch history asset wrapper
@interface KalturaAssetHistoryListResponse : KalturaListResponse
// WatchHistoryAssets Models
@property (nonatomic,retain) NSMutableArray* objects;	// of KalturaAssetHistory elements
- (KalturaFieldType)getTypeOfObjects;
- (NSString*)getObjectTypeOfObjects;
@end

// @package Kaltura
// @subpackage Client
// Application token
@interface KalturaAppToken : KalturaObjectBase
// The id of the application token
@property (nonatomic,copy,readonly) NSString* id;
// Expiry time of current token (unix timestamp in seconds)
@property (nonatomic,assign) int expiry;
// Partner identifier
@property (nonatomic,assign) int partnerId;
// Expiry duration of KS (Kaltura Session) that created using the current token (in seconds)
@property (nonatomic,assign) int sessionDuration;
// The hash type of the token
@property (nonatomic,copy) NSString* hashType;	// enum KalturaAppTokenHashType
// Comma separated privileges to be applied on KS (Kaltura Session) that created using the current token
@property (nonatomic,copy) NSString* sessionPrivileges;
// Type of KS (Kaltura Session) that created using the current token
@property (nonatomic,assign) int sessionType;	// enum KalturaSessionType
// Application token status
@property (nonatomic,assign,readonly) int status;	// enum KalturaAppTokenStatus
// The application token
@property (nonatomic,copy) NSString* token;
// User id of KS (Kaltura Session) that created using the current token
@property (nonatomic,copy) NSString* sessionUserId;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfExpiry;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfSessionDuration;
- (KalturaFieldType)getTypeOfHashType;
- (KalturaFieldType)getTypeOfSessionPrivileges;
- (KalturaFieldType)getTypeOfSessionType;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfToken;
- (KalturaFieldType)getTypeOfSessionUserId;
- (void)setExpiryFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setSessionDurationFromString:(NSString*)aPropVal;
- (void)setSessionTypeFromString:(NSString*)aPropVal;
- (void)setStatusFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Kaltura Session
@interface KalturaSession : KalturaObjectBase
// KS
@property (nonatomic,copy) NSString* ks;
// Session type
@property (nonatomic,assign) int sessionType;	// enum KalturaSessionType
// Partner identifier
@property (nonatomic,assign) int partnerId;
// User identifier
@property (nonatomic,copy) NSString* userId;
// Expiry
@property (nonatomic,assign) int expiry;
// Privileges
@property (nonatomic,copy) NSString* privileges;
// udid
@property (nonatomic,copy) NSString* udid;
- (KalturaFieldType)getTypeOfKs;
- (KalturaFieldType)getTypeOfSessionType;
- (KalturaFieldType)getTypeOfPartnerId;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfExpiry;
- (KalturaFieldType)getTypeOfPrivileges;
- (KalturaFieldType)getTypeOfUdid;
- (void)setSessionTypeFromString:(NSString*)aPropVal;
- (void)setPartnerIdFromString:(NSString*)aPropVal;
- (void)setExpiryFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Kaltura Session
@interface KalturaSessionInfo : KalturaSession
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetFilter : KalturaFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBundleFilter : KalturaAssetFilter
// Bundle Id.
@property (nonatomic,assign) int idEqual;
// Comma separated list of asset types to search within. 
//             Possible values: 0 – EPG linear programs entries, any media type ID (according to media type IDs defined dynamically in the system).
//             If omitted – all types should be included.
@property (nonatomic,copy) NSString* typeIn;
// bundleType - possible values: Subscription or Collection
@property (nonatomic,copy) NSString* bundleTypeEqual;	// enum KalturaBundleType
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfTypeIn;
- (KalturaFieldType)getTypeOfBundleTypeEqual;
- (void)setIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaChannelExternalFilter : KalturaAssetFilter
// External Channel Id.
@property (nonatomic,assign) int idEqual;
// UtcOffsetEqual
@property (nonatomic,copy) NSString* utcOffsetEqual;
// FreeTextEqual
@property (nonatomic,copy) NSString* freeText;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfUtcOffsetEqual;
- (KalturaFieldType)getTypeOfFreeText;
- (void)setIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaChannelFilter : KalturaAssetFilter
// Channel Id
@property (nonatomic,assign) int idEqual;
@property (nonatomic,copy) NSString* kSql;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfKSql;
- (void)setIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRelatedFilter : KalturaAssetFilter
// Search assets using dynamic criteria. Provided collection of nested expressions with key, comparison operators, value, and logical conjunction.
//             Possible keys: any Tag or Meta defined in the system and the following reserved keys: start_date, end_date. 
//             epg_id, media_id - for specific asset IDs.
//             geo_block - only valid value is &quot;true&quot;: When enabled, only assets that are not restriced to the user by geo-block rules will return.
//             parental_rules - only valid value is &quot;true&quot;: When enabled, only assets that the user doesn&#39;t need to provide PIN code will return.
//             epg_channel_id – the channel identifier of the EPG program.
//             entitled_assets - valid values: &quot;free&quot;, &quot;entitled&quot;, &quot;both&quot;. free - gets only free to watch assets. entitled - only those that the user is implicitly entitled to watch.
//             Comparison operators: for numerical fields =, &gt;, &gt;=, &lt;, &lt;=, : (in). For alpha-numerical fields =, != (not), ~ (like), !~, ^ (starts with). Logical conjunction: and, or. 
//             Search values are limited to 20 characters each.
//             (maximum length of entire filter is 1024 characters)
@property (nonatomic,copy) NSString* kSql;
// the ID of the asset for which to return related assets
@property (nonatomic,copy) NSString* idEqual;
// Comma separated list of asset types to search within. 
//             Possible values: 0 – EPG linear programs entries, any media type ID (according to media type IDs defined dynamically in the system).
//             If omitted – all types should be included.
@property (nonatomic,copy) NSString* typeIn;
- (KalturaFieldType)getTypeOfKSql;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfTypeIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRelatedExternalFilter : KalturaAssetFilter
// the External ID of the asset for which to return related assets
@property (nonatomic,assign) int idEqual;
// Comma separated list of asset types to search within. 
//             Possible values: 0 – EPG linear programs entries, any media type ID (according to media type IDs defined dynamically in the system).
//             If omitted – all types should be included.
@property (nonatomic,copy) NSString* typeIn;
// UtcOffsetEqual
@property (nonatomic,assign) int utcOffsetEqual;
// FreeText
@property (nonatomic,copy) NSString* freeText;
- (KalturaFieldType)getTypeOfIdEqual;
- (KalturaFieldType)getTypeOfTypeIn;
- (KalturaFieldType)getTypeOfUtcOffsetEqual;
- (KalturaFieldType)getTypeOfFreeText;
- (void)setIdEqualFromString:(NSString*)aPropVal;
- (void)setUtcOffsetEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSearchAssetFilter : KalturaAssetFilter
// Search assets using dynamic criteria. Provided collection of nested expressions with key, comparison operators, value, and logical conjunction.
//             Possible keys: any Tag or Meta defined in the system and the following reserved keys: start_date, end_date. 
//             epg_id, media_id - for specific asset IDs.
//             geo_block - only valid value is &quot;true&quot;: When enabled, only assets that are not restriced to the user by geo-block rules will return.
//             parental_rules - only valid value is &quot;true&quot;: When enabled, only assets that the user doesn&#39;t need to provide PIN code will return.
//             epg_channel_id – the channel identifier of the EPG program.
//             entitled_assets - valid values: &quot;free&quot;, &quot;entitled&quot;, &quot;both&quot;. free - gets only free to watch assets. entitled - only those that the user is implicitly entitled to watch.
//             Comparison operators: for numerical fields =, &gt;, &gt;=, &lt;, &lt;=, : (in). For alpha-numerical fields =, != (not), ~ (like), !~, ^ (starts with). Logical conjunction: and, or. 
//             Search values are limited to 20 characters each.
//             (maximum length of entire filter is 1024 characters)
@property (nonatomic,copy) NSString* kSql;
// Comma separated list of asset types to search within. 
//             Possible values: 0 – EPG linear programs entries, any media type ID (according to media type IDs defined dynamically in the system).
//             If omitted – all types should be included.
@property (nonatomic,copy) NSString* typeIn;
// Comma separated list of EPG channel ids to search within.
@property (nonatomic,copy) NSString* idIn;
- (KalturaFieldType)getTypeOfKSql;
- (KalturaFieldType)getTypeOfTypeIn;
- (KalturaFieldType)getTypeOfIdIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSearchExternalFilter : KalturaAssetFilter
// Query
@property (nonatomic,copy) NSString* query;
// UtcOffsetEqual
@property (nonatomic,assign) int utcOffsetEqual;
// Comma separated list of asset types to search within. 
//             Possible values: 0 – EPG linear programs entries, any media type ID (according to media type IDs defined dynamically in the system).
//             If omitted – all types should be included.
@property (nonatomic,copy) NSString* typeIn;
- (KalturaFieldType)getTypeOfQuery;
- (KalturaFieldType)getTypeOfUtcOffsetEqual;
- (KalturaFieldType)getTypeOfTypeIn;
- (void)setUtcOffsetEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetFileContext : KalturaObjectBase
// viewLifeCycle
@property (nonatomic,copy,readonly) NSString* viewLifeCycle;
// fullLifeCycle
@property (nonatomic,copy,readonly) NSString* fullLifeCycle;
// isOfflinePlayBack
@property (nonatomic,assign,readonly) KALTURA_BOOL isOfflinePlayBack;
- (KalturaFieldType)getTypeOfViewLifeCycle;
- (KalturaFieldType)getTypeOfFullLifeCycle;
- (KalturaFieldType)getTypeOfIsOfflinePlayBack;
- (void)setIsOfflinePlayBackFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetStatisticsQuery : KalturaObjectBase
// Comma separated list of asset identifiers.
@property (nonatomic,copy) NSString* assetIdIn;
// Asset type
@property (nonatomic,copy) NSString* assetTypeEqual;	// enum KalturaAssetType
// The beginning of the time window to get the statistics for (in epoch).
@property (nonatomic,assign) int startDateGreaterThanOrEqual;
// /// The end of the time window to get the statistics for (in epoch).
@property (nonatomic,assign) int endDateGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfAssetIdIn;
- (KalturaFieldType)getTypeOfAssetTypeEqual;
- (KalturaFieldType)getTypeOfStartDateGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfEndDateGreaterThanOrEqual;
- (void)setStartDateGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setEndDateGreaterThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCDNPartnerSettings : KalturaObjectBase
// Default CDN adapter identifier
@property (nonatomic,assign) int defaultAdapterId;
// Default recording CDN adapter identifier
@property (nonatomic,assign) int defaultRecordingAdapterId;
- (KalturaFieldType)getTypeOfDefaultAdapterId;
- (KalturaFieldType)getTypeOfDefaultRecordingAdapterId;
- (void)setDefaultAdapterIdFromString:(NSString*)aPropVal;
- (void)setDefaultRecordingAdapterIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegionFilter : KalturaFilter
// List of comma separated regions external identifiers
@property (nonatomic,copy) NSString* externalIdIn;
- (KalturaFieldType)getTypeOfExternalIdIn;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetCommentFilter : KalturaFilter
// Asset Id
@property (nonatomic,assign) int assetIdEqual;
// Asset Type
@property (nonatomic,copy) NSString* assetTypeEqual;	// enum KalturaAssetType
- (KalturaFieldType)getTypeOfAssetIdEqual;
- (KalturaFieldType)getTypeOfAssetTypeEqual;
- (void)setAssetIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaKeyValue : KalturaObjectBase
@property (nonatomic,copy) NSString* key;
@property (nonatomic,copy) NSString* value;
- (KalturaFieldType)getTypeOfKey;
- (KalturaFieldType)getTypeOfValue;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPaymentGatewayConfiguration : KalturaObjectBase
// Payment gateway configuration
@property (nonatomic,retain) NSMutableArray* paymentGatewayeConfiguration;	// of KalturaKeyValue elements
- (KalturaFieldType)getTypeOfPaymentGatewayeConfiguration;
- (NSString*)getObjectTypeOfPaymentGatewayeConfiguration;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaProductPriceFilter : KalturaFilter
// Comma separated subscriptions identifiers
@property (nonatomic,copy) NSString* subscriptionIdIn;
// Comma separated media files identifiers
@property (nonatomic,copy) NSString* fileIdIn;
// A flag that indicates if only the lowest price of an item should return
@property (nonatomic,assign) KALTURA_BOOL isLowest;
// Discount coupon code
@property (nonatomic,copy) NSString* couponCodeEqual;
- (KalturaFieldType)getTypeOfSubscriptionIdIn;
- (KalturaFieldType)getTypeOfFileIdIn;
- (KalturaFieldType)getTypeOfIsLowest;
- (KalturaFieldType)getTypeOfCouponCodeEqual;
- (void)setIsLowestFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Filtering recordings
@interface KalturaSeriesRecordingFilter : KalturaFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdQuota : KalturaObjectBase
// Household identifier
@property (nonatomic,assign,readonly) int householdId;
// Total quota that is allocated to the household
@property (nonatomic,assign,readonly) int totalQuota;
// Available quota that household has remaining
@property (nonatomic,assign,readonly) int availableQuota;
- (KalturaFieldType)getTypeOfHouseholdId;
- (KalturaFieldType)getTypeOfTotalQuota;
- (KalturaFieldType)getTypeOfAvailableQuota;
- (void)setHouseholdIdFromString:(NSString*)aPropVal;
- (void)setTotalQuotaFromString:(NSString*)aPropVal;
- (void)setAvailableQuotaFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaInboxMessageFilter : KalturaFilter
// List of inbox message types to search within.
@property (nonatomic,copy) NSString* typeIn;
// createdAtGreaterThanOrEqual
@property (nonatomic,assign) int createdAtGreaterThanOrEqual;
// createdAtLessThanOrEqual
@property (nonatomic,assign) int createdAtLessThanOrEqual;
- (KalturaFieldType)getTypeOfTypeIn;
- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual;
- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMessageTemplate : KalturaObjectBase
// The message template with placeholders
@property (nonatomic,copy) NSString* message;
// Default date format for the date &amp; time entries used in the template
@property (nonatomic,copy) NSString* dateFormat;
// Template type. Possible values: Series
@property (nonatomic,assign) int assetType;	// enum KalturaOTTAssetType
// Sound file name to play upon message arrival to the device (if supported by target device)
@property (nonatomic,copy) NSString* sound;
// an optional action
@property (nonatomic,copy) NSString* action;
// URL template for deep linking. Example - /app/location/{mediaId}
@property (nonatomic,copy) NSString* url;
- (KalturaFieldType)getTypeOfMessage;
- (KalturaFieldType)getTypeOfDateFormat;
- (KalturaFieldType)getTypeOfAssetType;
- (KalturaFieldType)getTypeOfSound;
- (KalturaFieldType)getTypeOfAction;
- (KalturaFieldType)getTypeOfUrl;
- (void)setAssetTypeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFollowTvSeriesFilter : KalturaFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPersonalFeedFilter : KalturaFilter
@end

// @package Kaltura
// @subpackage Client
// PPV details
@interface KalturaPpv : KalturaObjectBase
// PPV identifier
@property (nonatomic,copy) NSString* id;
// the name for the ppv
@property (nonatomic,copy) NSString* name;
// The price of the ppv
@property (nonatomic,retain) KalturaPriceDetails* price;
// A list of file types identifiers that are supported in this ppv
@property (nonatomic,retain) NSMutableArray* fileTypes;	// of KalturaIntegerValue elements
// The internal discount module for the ppv
@property (nonatomic,retain) KalturaDiscountModule* discountModules;
// Coupons group for the ppv
@property (nonatomic,retain) KalturaCouponsGroup* couponsGroup;
// A list of the descriptions of the ppv on different languages (language code and translation)
@property (nonatomic,retain) NSMutableArray* descriptions;	// of KalturaTranslationToken elements
// Product code for the ppv
@property (nonatomic,copy) NSString* productCode;
// Indicates whether or not this ppv can be purchased standalone or only as part of a subscription
@property (nonatomic,assign) KALTURA_BOOL isSubscriptionOnly;
// Indicates whether or not this ppv can be consumed only on the first device
@property (nonatomic,assign) KALTURA_BOOL firstDeviceLimitation;
// PPV usage module
@property (nonatomic,retain) KalturaUsageModule* usageModule;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfPrice;
- (NSString*)getObjectTypeOfPrice;
- (KalturaFieldType)getTypeOfFileTypes;
- (NSString*)getObjectTypeOfFileTypes;
- (KalturaFieldType)getTypeOfDiscountModules;
- (NSString*)getObjectTypeOfDiscountModules;
- (KalturaFieldType)getTypeOfCouponsGroup;
- (NSString*)getObjectTypeOfCouponsGroup;
- (KalturaFieldType)getTypeOfDescriptions;
- (NSString*)getObjectTypeOfDescriptions;
- (KalturaFieldType)getTypeOfProductCode;
- (KalturaFieldType)getTypeOfIsSubscriptionOnly;
- (KalturaFieldType)getTypeOfFirstDeviceLimitation;
- (KalturaFieldType)getTypeOfUsageModule;
- (NSString*)getObjectTypeOfUsageModule;
- (void)setIsSubscriptionOnlyFromString:(NSString*)aPropVal;
- (void)setFirstDeviceLimitationFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Filtering recordings
@interface KalturaRecordingFilter : KalturaFilter
// Recording Statuses
@property (nonatomic,copy) NSString* statusIn;
// KSQL expression
@property (nonatomic,copy) NSString* filterExpression;
- (KalturaFieldType)getTypeOfStatusIn;
- (KalturaFieldType)getTypeOfFilterExpression;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLicensedUrl : KalturaObjectBase
// Main licensed URL
@property (nonatomic,copy) NSString* mainUrl;
// An alternate URL to use in case the main fails
@property (nonatomic,copy) NSString* altUrl;
- (KalturaFieldType)getTypeOfMainUrl;
- (KalturaFieldType)getTypeOfAltUrl;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLicensedUrlBaseRequest : KalturaObjectBase
// Asset identifier
@property (nonatomic,copy) NSString* assetId;
- (KalturaFieldType)getTypeOfAssetId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLicensedUrlMediaRequest : KalturaLicensedUrlBaseRequest
// Identifier of the content to get the link for (file identifier)
@property (nonatomic,assign) int contentId;
// Base URL for the licensed URLs
@property (nonatomic,copy) NSString* baseUrl;
- (KalturaFieldType)getTypeOfContentId;
- (KalturaFieldType)getTypeOfBaseUrl;
- (void)setContentIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLicensedUrlEpgRequest : KalturaLicensedUrlMediaRequest
// The stream type to get the URL for
@property (nonatomic,copy) NSString* streamType;	// enum KalturaStreamType
// The start date of the stream (epoch)
@property (nonatomic,assign) int startDate;
- (KalturaFieldType)getTypeOfStreamType;
- (KalturaFieldType)getTypeOfStartDate;
- (void)setStartDateFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLicensedUrlRecordingRequest : KalturaLicensedUrlBaseRequest
// The file type for the URL
@property (nonatomic,copy) NSString* fileType;
- (KalturaFieldType)getTypeOfFileType;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegistryResponse : KalturaObjectBase
// Announcement Id
@property (nonatomic,assign) int announcementId;
// Key
@property (nonatomic,copy) NSString* key;
// URL
@property (nonatomic,copy) NSString* url;
- (KalturaFieldType)getTypeOfAnnouncementId;
- (KalturaFieldType)getTypeOfKey;
- (KalturaFieldType)getTypeOfUrl;
- (void)setAnnouncementIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaNotificationsPartnerSettings : KalturaObjectBase
// Push notification capability is enabled for the account
@property (nonatomic,assign) KALTURA_BOOL pushNotificationEnabled;
// System announcement capability is enabled for the account
@property (nonatomic,assign) KALTURA_BOOL pushSystemAnnouncementsEnabled;
// Window start time (UTC) for send automated push messages
@property (nonatomic,assign) int pushStartHour;
// Window end time (UTC) for send automated push messages
@property (nonatomic,assign) int pushEndHour;
// Inbox enabled
@property (nonatomic,assign) KALTURA_BOOL inboxEnabled;
// Message TTL in days
@property (nonatomic,assign) int messageTTLDays;
// Automatic issue follow notification
@property (nonatomic,assign) KALTURA_BOOL automaticIssueFollowNotification;
// Topic expiration duration in days
@property (nonatomic,assign) int topicExpirationDurationDays;
- (KalturaFieldType)getTypeOfPushNotificationEnabled;
- (KalturaFieldType)getTypeOfPushSystemAnnouncementsEnabled;
- (KalturaFieldType)getTypeOfPushStartHour;
- (KalturaFieldType)getTypeOfPushEndHour;
- (KalturaFieldType)getTypeOfInboxEnabled;
- (KalturaFieldType)getTypeOfMessageTTLDays;
- (KalturaFieldType)getTypeOfAutomaticIssueFollowNotification;
- (KalturaFieldType)getTypeOfTopicExpirationDurationDays;
- (void)setPushNotificationEnabledFromString:(NSString*)aPropVal;
- (void)setPushSystemAnnouncementsEnabledFromString:(NSString*)aPropVal;
- (void)setPushStartHourFromString:(NSString*)aPropVal;
- (void)setPushEndHourFromString:(NSString*)aPropVal;
- (void)setInboxEnabledFromString:(NSString*)aPropVal;
- (void)setMessageTTLDaysFromString:(NSString*)aPropVal;
- (void)setAutomaticIssueFollowNotificationFromString:(NSString*)aPropVal;
- (void)setTopicExpirationDurationDaysFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaNotificationsSettings : KalturaObjectBase
// Specify if the user want to receive push notifications or not
@property (nonatomic,assign) KALTURA_BOOL pushNotificationEnabled;
// Specify if the user will be notified for followed content via push. (requires push_notification_enabled to be enabled)
@property (nonatomic,assign) KALTURA_BOOL pushFollowEnabled;
- (KalturaFieldType)getTypeOfPushNotificationEnabled;
- (KalturaFieldType)getTypeOfPushFollowEnabled;
- (void)setPushNotificationEnabledFromString:(NSString*)aPropVal;
- (void)setPushFollowEnabledFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPaymentMethodProfileFilter : KalturaFilter
// Payment gateway identifier to list the payment methods for
@property (nonatomic,assign) int paymentGatewayIdEqual;
- (KalturaFieldType)getTypeOfPaymentGatewayIdEqual;
- (void)setPaymentGatewayIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTimeShiftedTvPartnerSettings : KalturaObjectBase
// Is catch-up enabled
@property (nonatomic,assign) KALTURA_BOOL catchUpEnabled;
// Is c-dvr enabled
@property (nonatomic,assign) KALTURA_BOOL cdvrEnabled;
// Is start-over enabled
@property (nonatomic,assign) KALTURA_BOOL startOverEnabled;
// Is trick-play enabled
@property (nonatomic,assign) KALTURA_BOOL trickPlayEnabled;
// Is recording schedule window enabled
@property (nonatomic,assign) KALTURA_BOOL recordingScheduleWindowEnabled;
// Is recording protection enabled
@property (nonatomic,assign) KALTURA_BOOL protectionEnabled;
// Catch-up buffer length
@property (nonatomic,assign) int catchUpBufferLength;
// Trick play buffer length
@property (nonatomic,assign) int trickPlayBufferLength;
// Recording schedule window. Indicates how long (in minutes) after the program starts it is allowed to schedule the recording
@property (nonatomic,assign) int recordingScheduleWindow;
// Indicates how long (in seconds) before the program starts the recording will begin
@property (nonatomic,assign) int paddingBeforeProgramStarts;
// Indicates how long (in seconds) after the program ends the recording will end
@property (nonatomic,assign) int paddingAfterProgramEnds;
// Specify the time in days that a recording should be protected. Start time begins at protection request.
@property (nonatomic,assign) int protectionPeriod;
// Indicates how many percent of the quota can be used for protection
@property (nonatomic,assign) int protectionQuotaPercentage;
// Specify the time in days that a recording should be kept for user. Start time begins with the program end date.
@property (nonatomic,assign) int recordingLifetimePeriod;
// The time in days before the recording lifetime is due from which the client should be able to warn user about deletion.
@property (nonatomic,assign) int cleanupNoticePeroid;
// Is recording of series enabled
@property (nonatomic,assign) KALTURA_BOOL seriesRecordingEnabled;
// Is recording playback for non-entitled channel enables
@property (nonatomic,assign) KALTURA_BOOL nonEntitledChannelPlaybackEnabled;
// Is recording playback for non-existing channel enables
@property (nonatomic,assign) KALTURA_BOOL nonExistingChannelPlaybackEnabled;
- (KalturaFieldType)getTypeOfCatchUpEnabled;
- (KalturaFieldType)getTypeOfCdvrEnabled;
- (KalturaFieldType)getTypeOfStartOverEnabled;
- (KalturaFieldType)getTypeOfTrickPlayEnabled;
- (KalturaFieldType)getTypeOfRecordingScheduleWindowEnabled;
- (KalturaFieldType)getTypeOfProtectionEnabled;
- (KalturaFieldType)getTypeOfCatchUpBufferLength;
- (KalturaFieldType)getTypeOfTrickPlayBufferLength;
- (KalturaFieldType)getTypeOfRecordingScheduleWindow;
- (KalturaFieldType)getTypeOfPaddingBeforeProgramStarts;
- (KalturaFieldType)getTypeOfPaddingAfterProgramEnds;
- (KalturaFieldType)getTypeOfProtectionPeriod;
- (KalturaFieldType)getTypeOfProtectionQuotaPercentage;
- (KalturaFieldType)getTypeOfRecordingLifetimePeriod;
- (KalturaFieldType)getTypeOfCleanupNoticePeroid;
- (KalturaFieldType)getTypeOfSeriesRecordingEnabled;
- (KalturaFieldType)getTypeOfNonEntitledChannelPlaybackEnabled;
- (KalturaFieldType)getTypeOfNonExistingChannelPlaybackEnabled;
- (void)setCatchUpEnabledFromString:(NSString*)aPropVal;
- (void)setCdvrEnabledFromString:(NSString*)aPropVal;
- (void)setStartOverEnabledFromString:(NSString*)aPropVal;
- (void)setTrickPlayEnabledFromString:(NSString*)aPropVal;
- (void)setRecordingScheduleWindowEnabledFromString:(NSString*)aPropVal;
- (void)setProtectionEnabledFromString:(NSString*)aPropVal;
- (void)setCatchUpBufferLengthFromString:(NSString*)aPropVal;
- (void)setTrickPlayBufferLengthFromString:(NSString*)aPropVal;
- (void)setRecordingScheduleWindowFromString:(NSString*)aPropVal;
- (void)setPaddingBeforeProgramStartsFromString:(NSString*)aPropVal;
- (void)setPaddingAfterProgramEndsFromString:(NSString*)aPropVal;
- (void)setProtectionPeriodFromString:(NSString*)aPropVal;
- (void)setProtectionQuotaPercentageFromString:(NSString*)aPropVal;
- (void)setRecordingLifetimePeriodFromString:(NSString*)aPropVal;
- (void)setCleanupNoticePeroidFromString:(NSString*)aPropVal;
- (void)setSeriesRecordingEnabledFromString:(NSString*)aPropVal;
- (void)setNonEntitledChannelPlaybackEnabledFromString:(NSString*)aPropVal;
- (void)setNonExistingChannelPlaybackEnabledFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTopicFilter : KalturaFilter
@end

// @package Kaltura
// @subpackage Client
// An item of user asset list
@interface KalturaUserAssetsListItem : KalturaObjectBase
// Asset identifier
@property (nonatomic,copy) NSString* id;
// The order index of the asset in the list
@property (nonatomic,assign) int orderIndex;
// The type of the asset
@property (nonatomic,copy) NSString* type;	// enum KalturaUserAssetsListItemType
// The identifier of the user who added the item to the list
@property (nonatomic,copy,readonly) NSString* userId;
// The type of the list
@property (nonatomic,copy) NSString* listType;	// enum KalturaUserAssetsListType
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfOrderIndex;
- (KalturaFieldType)getTypeOfType;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfListType;
- (void)setOrderIndexFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Device family details
@interface KalturaDeviceFamilyBase : KalturaObjectBase
// Device family identifier
@property (nonatomic,assign,readonly) int id;
// Device family name
@property (nonatomic,copy) NSString* name;
// Max number of devices allowed for this family
@property (nonatomic,assign) int deviceLimit;
// Max number of streams allowed for this family
@property (nonatomic,assign) int concurrentLimit;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDeviceLimit;
- (KalturaFieldType)getTypeOfConcurrentLimit;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setDeviceLimitFromString:(NSString*)aPropVal;
- (void)setConcurrentLimitFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Device details
@interface KalturaHouseholdDevice : KalturaObjectBase
// Household identifier
@property (nonatomic,assign) int householdId;
// Device UDID
@property (nonatomic,copy) NSString* udid;
// Device name
@property (nonatomic,copy) NSString* name;
// Device brand name
@property (nonatomic,copy) NSString* brand;
// Device brand identifier
@property (nonatomic,assign) int brandId;
// Device activation date (epoch)
@property (nonatomic,assign) int activatedOn;
// Device state
@property (nonatomic,copy,readonly) NSString* status;	// enum KalturaDeviceStatus
- (KalturaFieldType)getTypeOfHouseholdId;
- (KalturaFieldType)getTypeOfUdid;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfBrand;
- (KalturaFieldType)getTypeOfBrandId;
- (KalturaFieldType)getTypeOfActivatedOn;
- (KalturaFieldType)getTypeOfStatus;
- (void)setHouseholdIdFromString:(NSString*)aPropVal;
- (void)setBrandIdFromString:(NSString*)aPropVal;
- (void)setActivatedOnFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Device family limitations details
@interface KalturaHouseholdDeviceFamilyLimitations : KalturaDeviceFamilyBase
// Allowed device change frequency code
@property (nonatomic,assign) int frequency;
- (KalturaFieldType)getTypeOfFrequency;
- (void)setFrequencyFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Household limitations details
@interface KalturaHouseholdLimitations : KalturaObjectBase
// Household limitation module identifier
@property (nonatomic,assign,readonly) int id;
// Household limitation module name
@property (nonatomic,copy) NSString* name;
// Max number of streams allowed for the household
@property (nonatomic,assign) int concurrentLimit;
// Max number of devices allowed for the household
@property (nonatomic,assign) int deviceLimit;
// Allowed device change frequency code
@property (nonatomic,assign) int deviceFrequency;
// Allowed device change frequency description
@property (nonatomic,copy) NSString* deviceFrequencyDescription;
// Allowed user change frequency code
@property (nonatomic,assign) int userFrequency;
// Allowed user change frequency description
@property (nonatomic,copy) NSString* userFrequencyDescription;
// Allowed NPVR Quota in Seconds
@property (nonatomic,assign) int npvrQuotaInSeconds;
// Max number of users allowed for the household
@property (nonatomic,assign) int usersLimit;
// Device families limitations
@property (nonatomic,retain) NSMutableArray* deviceFamiliesLimitations;	// of KalturaHouseholdDeviceFamilyLimitations elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfConcurrentLimit;
- (KalturaFieldType)getTypeOfDeviceLimit;
- (KalturaFieldType)getTypeOfDeviceFrequency;
- (KalturaFieldType)getTypeOfDeviceFrequencyDescription;
- (KalturaFieldType)getTypeOfUserFrequency;
- (KalturaFieldType)getTypeOfUserFrequencyDescription;
- (KalturaFieldType)getTypeOfNpvrQuotaInSeconds;
- (KalturaFieldType)getTypeOfUsersLimit;
- (KalturaFieldType)getTypeOfDeviceFamiliesLimitations;
- (NSString*)getObjectTypeOfDeviceFamiliesLimitations;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setConcurrentLimitFromString:(NSString*)aPropVal;
- (void)setDeviceLimitFromString:(NSString*)aPropVal;
- (void)setDeviceFrequencyFromString:(NSString*)aPropVal;
- (void)setUserFrequencyFromString:(NSString*)aPropVal;
- (void)setNpvrQuotaInSecondsFromString:(NSString*)aPropVal;
- (void)setUsersLimitFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Bulk export tasks filter
@interface KalturaExportTaskFilter : KalturaFilter
// Comma separated tasks identifiers
@property (nonatomic,copy) NSString* idIn;
- (KalturaFieldType)getTypeOfIdIn;
@end

// @package Kaltura
// @subpackage Client
// Partner  base configuration
@interface KalturaPartnerConfiguration : KalturaObjectBase
@end

// @package Kaltura
// @subpackage Client
// Partner billing configuration
@interface KalturaBillingPartnerConfig : KalturaPartnerConfiguration
// configuration value
@property (nonatomic,copy) NSString* value;
// partner configuration type
@property (nonatomic,copy) NSString* type;	// enum KalturaPartnerConfigurationType
- (KalturaFieldType)getTypeOfValue;
- (KalturaFieldType)getTypeOfType;
@end

// @package Kaltura
// @subpackage Client
// OSS adapter basic
@interface KalturaOSSAdapterBaseProfile : KalturaObjectBase
// OSS adapter id
@property (nonatomic,assign,readonly) int id;
// OSS adapter name
@property (nonatomic,copy) NSString* name;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (void)setIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// OSS Adapter
@interface KalturaOSSAdapterProfile : KalturaOSSAdapterBaseProfile
// OSS adapter active status
@property (nonatomic,assign) KALTURA_BOOL isActive;
// OSS adapter adapter URL
@property (nonatomic,copy) NSString* adapterUrl;
// OSS adapter extra parameters
@property (nonatomic,retain) NSMutableDictionary* ossAdapterSettings;	// of KalturaStringValue elements
// OSS adapter external identifier
@property (nonatomic,copy) NSString* externalIdentifier;
// Shared Secret
@property (nonatomic,copy,readonly) NSString* sharedSecret;
- (KalturaFieldType)getTypeOfIsActive;
- (KalturaFieldType)getTypeOfAdapterUrl;
- (KalturaFieldType)getTypeOfOssAdapterSettings;
- (NSString*)getObjectTypeOfOssAdapterSettings;
- (KalturaFieldType)getTypeOfExternalIdentifier;
- (KalturaFieldType)getTypeOfSharedSecret;
- (void)setIsActiveFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Login response
@interface KalturaLoginSession : KalturaObjectBase
// Access token in a KS format
@property (nonatomic,copy) NSString* ks;
// Refresh Token
@property (nonatomic,copy) NSString* refreshToken;
- (KalturaFieldType)getTypeOfKs;
- (KalturaFieldType)getTypeOfRefreshToken;
@end

// @package Kaltura
// @subpackage Client
// User asset rule filter
@interface KalturaUserAssetRuleFilter : KalturaFilter
// Asset identifier to filter by
@property (nonatomic,assign) int assetIdEqual;
// Asset type to filter by - 0 = EPG, 1 = media
@property (nonatomic,assign) int assetTypeEqual;
- (KalturaFieldType)getTypeOfAssetIdEqual;
- (KalturaFieldType)getTypeOfAssetTypeEqual;
- (void)setAssetIdEqualFromString:(NSString*)aPropVal;
- (void)setAssetTypeEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetHistoryFilter : KalturaFilter
// Comma separated list of asset types to search within.
//             Possible values: 0 – EPG linear programs entries, any media type ID (according to media type IDs defined dynamically in the system).
//             If omitted – all types should be included.
@property (nonatomic,copy) NSString* typeIn;
// Comma separated list of asset identifiers.
@property (nonatomic,copy) NSString* assetIdIn;
// Which type of recently watched media to include in the result – those that finished watching, those that are in progress or both.
//             If omitted or specified filter = all – return all types.
//             Allowed values: progress – return medias that are in-progress, done – return medias that finished watching.
@property (nonatomic,copy) NSString* statusEqual;	// enum KalturaWatchStatus
- (KalturaFieldType)getTypeOfTypeIn;
- (KalturaFieldType)getTypeOfAssetIdIn;
- (KalturaFieldType)getTypeOfStatusEqual;
@end

// @package Kaltura
// @subpackage Client
// Household details
@interface KalturaHousehold : KalturaObjectBase
// Household identifier
@property (nonatomic,assign,readonly) int id;
// Household name
@property (nonatomic,copy) NSString* name;
// Household description
@property (nonatomic,copy) NSString* description;
// Household external identifier
@property (nonatomic,copy) NSString* externalId;
// Household limitation module identifier
@property (nonatomic,assign) int householdLimitationsId;
// The max number of the devices that can be added to the household
@property (nonatomic,assign) int devicesLimit;
// The max number of the users that can be added to the household
@property (nonatomic,assign) int usersLimit;
// The max number of concurrent streams in the household
@property (nonatomic,assign) int concurrentLimit;
// The households region identifier
@property (nonatomic,assign) int regionId;
// Household state
@property (nonatomic,copy,readonly) NSString* state;	// enum KalturaHouseholdState
// Is household frequency enabled
@property (nonatomic,assign) KALTURA_BOOL isFrequencyEnabled;
// The next time a device is allowed to be removed from the household (epoch)
@property (nonatomic,assign) int frequencyNextDeviceAction;
// The next time a user is allowed to be removed from the household (epoch)
@property (nonatomic,assign) int frequencyNextUserAction;
// Household restriction
@property (nonatomic,copy) NSString* restriction;	// enum KalturaHouseholdRestriction
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfDescription;
- (KalturaFieldType)getTypeOfExternalId;
- (KalturaFieldType)getTypeOfHouseholdLimitationsId;
- (KalturaFieldType)getTypeOfDevicesLimit;
- (KalturaFieldType)getTypeOfUsersLimit;
- (KalturaFieldType)getTypeOfConcurrentLimit;
- (KalturaFieldType)getTypeOfRegionId;
- (KalturaFieldType)getTypeOfState;
- (KalturaFieldType)getTypeOfIsFrequencyEnabled;
- (KalturaFieldType)getTypeOfFrequencyNextDeviceAction;
- (KalturaFieldType)getTypeOfFrequencyNextUserAction;
- (KalturaFieldType)getTypeOfRestriction;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setHouseholdLimitationsIdFromString:(NSString*)aPropVal;
- (void)setDevicesLimitFromString:(NSString*)aPropVal;
- (void)setUsersLimitFromString:(NSString*)aPropVal;
- (void)setConcurrentLimitFromString:(NSString*)aPropVal;
- (void)setRegionIdFromString:(NSString*)aPropVal;
- (void)setIsFrequencyEnabledFromString:(NSString*)aPropVal;
- (void)setFrequencyNextDeviceActionFromString:(NSString*)aPropVal;
- (void)setFrequencyNextUserActionFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Device pin
@interface KalturaDevicePin : KalturaObjectBase
// Device pin
@property (nonatomic,copy) NSString* pin;
- (KalturaFieldType)getTypeOfPin;
@end

// @package Kaltura
// @subpackage Client
// Filtering Assets requests
@interface KalturaBookmarkFilter : KalturaFilter
// Comma separated list of assets identifiers
@property (nonatomic,copy) NSString* assetIdIn;
// Asset type
@property (nonatomic,copy) NSString* assetTypeEqual;	// enum KalturaAssetType
- (KalturaFieldType)getTypeOfAssetIdIn;
- (KalturaFieldType)getTypeOfAssetTypeEqual;
@end

// @package Kaltura
// @subpackage Client
// PIN and its origin of definition
@interface KalturaPin : KalturaObjectBase
// PIN code
@property (nonatomic,copy) NSString* pin;
// Where the PIN was defined at – account, household or user
@property (nonatomic,copy) NSString* origin;	// enum KalturaRuleLevel
// PIN type
@property (nonatomic,copy) NSString* type;	// enum KalturaPinType
- (KalturaFieldType)getTypeOfPin;
- (KalturaFieldType)getTypeOfOrigin;
- (KalturaFieldType)getTypeOfType;
@end

// @package Kaltura
// @subpackage Client
// Purchase settings and PIN
@interface KalturaPurchaseSettings : KalturaPin
// Purchase permission - block, ask or allow
@property (nonatomic,copy) NSString* permission;	// enum KalturaPurchaseSettingsType
- (KalturaFieldType)getTypeOfPermission;
@end

// @package Kaltura
// @subpackage Client
// Household details
@interface KalturaHouseholdUser : KalturaObjectBase
// The identifier of the household
@property (nonatomic,assign) int householdId;
// The identifier of the user
@property (nonatomic,copy) NSString* userId;
// True if the user added as master use
@property (nonatomic,assign) KALTURA_BOOL isMaster;
// The username of the household master for adding a user in status pending for the household master to approve
@property (nonatomic,copy) NSString* householdMasterUsername;	// insertonly
// The status of the user in the household
@property (nonatomic,copy,readonly) NSString* status;	// enum KalturaHouseholdUserStatus
- (KalturaFieldType)getTypeOfHouseholdId;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfIsMaster;
- (KalturaFieldType)getTypeOfHouseholdMasterUsername;
- (KalturaFieldType)getTypeOfStatus;
- (void)setHouseholdIdFromString:(NSString*)aPropVal;
- (void)setIsMasterFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSubscriptionFilter : KalturaFilter
// Comma separated subscription identifiers or file identifier (only 1) to get the subscriptions by
@property (nonatomic,copy) NSString* subscriptionIdIn;
// Media-file identifier to get the subscriptions by
@property (nonatomic,assign) int mediaFileIdEqual;
- (KalturaFieldType)getTypeOfSubscriptionIdIn;
- (KalturaFieldType)getTypeOfMediaFileIdEqual;
- (void)setMediaFileIdEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Category details
@interface KalturaOTTCategory : KalturaObjectBase
// Unique identifier for the category
@property (nonatomic,assign,readonly) int id;
// Category name
@property (nonatomic,copy) NSString* name;
// Category parent identifier
@property (nonatomic,assign) int parentCategoryId;
// Child categories
@property (nonatomic,retain) NSMutableArray* childCategories;	// of KalturaOTTCategory elements
// Category channels
@property (nonatomic,retain) NSMutableArray* channels;	// of KalturaChannel elements
// Category images
@property (nonatomic,retain) NSMutableArray* images;	// of KalturaMediaImage elements
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfParentCategoryId;
- (KalturaFieldType)getTypeOfChildCategories;
- (NSString*)getObjectTypeOfChildCategories;
- (KalturaFieldType)getTypeOfChannels;
- (NSString*)getObjectTypeOfChannels;
- (KalturaFieldType)getTypeOfImages;
- (NSString*)getObjectTypeOfImages;
- (void)setIdFromString:(NSString*)aPropVal;
- (void)setParentCategoryIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Coupon details container
@interface KalturaCoupon : KalturaObjectBase
// Coupons group details
@property (nonatomic,retain,readonly) KalturaCouponsGroup* couponsGroup;
// Coupon status
@property (nonatomic,copy,readonly) NSString* status;	// enum KalturaCouponStatus
- (KalturaFieldType)getTypeOfCouponsGroup;
- (NSString*)getObjectTypeOfCouponsGroup;
- (KalturaFieldType)getTypeOfStatus;
@end

// @package Kaltura
// @subpackage Client
// Entitlements filter
@interface KalturaEntitlementFilter : KalturaFilter
// The type of the entitlements to return
@property (nonatomic,copy) NSString* entitlementTypeEqual;	// enum KalturaTransactionType
// Reference type to filter by
@property (nonatomic,copy) NSString* entityReferenceEqual;	// enum KalturaEntityReferenceBy
// Is expired
@property (nonatomic,assign) KALTURA_BOOL isExpiredEqual;
- (KalturaFieldType)getTypeOfEntitlementTypeEqual;
- (KalturaFieldType)getTypeOfEntityReferenceEqual;
- (KalturaFieldType)getTypeOfIsExpiredEqual;
- (void)setIsExpiredEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Favorite request filter
@interface KalturaFavoriteFilter : KalturaFilter
// Media type to filter by the favorite assets
@property (nonatomic,assign) int mediaTypeIn;
// Media identifiers from which to filter the favorite assets
@property (nonatomic,copy) NSString* mediaIdIn;
- (KalturaFieldType)getTypeOfMediaTypeIn;
- (KalturaFieldType)getTypeOfMediaIdIn;
- (void)setMediaTypeInFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSocial : KalturaObjectBase
// Facebook identifier
@property (nonatomic,copy,readonly) NSString* id;
// Full name
@property (nonatomic,copy) NSString* name;
// First name
@property (nonatomic,copy) NSString* firstName;
// Last name
@property (nonatomic,copy) NSString* lastName;
// User email
@property (nonatomic,copy) NSString* email;
// Gender
@property (nonatomic,copy) NSString* gender;
// User identifier
@property (nonatomic,copy,readonly) NSString* userId;
// User birthday
@property (nonatomic,copy) NSString* birthday;
// User model status
//             Possible values: UNKNOWN, OK, ERROR, NOACTION, NOTEXIST, CONFLICT, MERGE, MERGEOK, NEWUSER, MINFRIENDS, INVITEOK, INVITEERROR, ACCESSDENIED, WRONGPASSWORDORUSERNAME, UNMERGEOK
@property (nonatomic,copy,readonly) NSString* status;
// Profile picture URL
@property (nonatomic,copy) NSString* pictureUrl;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfName;
- (KalturaFieldType)getTypeOfFirstName;
- (KalturaFieldType)getTypeOfLastName;
- (KalturaFieldType)getTypeOfEmail;
- (KalturaFieldType)getTypeOfGender;
- (KalturaFieldType)getTypeOfUserId;
- (KalturaFieldType)getTypeOfBirthday;
- (KalturaFieldType)getTypeOfStatus;
- (KalturaFieldType)getTypeOfPictureUrl;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFacebookSocial : KalturaSocial
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLoginResponse : KalturaObjectBase
// User
@property (nonatomic,retain) KalturaOTTUser* user;
// Kaltura login session details
@property (nonatomic,retain) KalturaLoginSession* loginSession;
- (KalturaFieldType)getTypeOfUser;
- (NSString*)getObjectTypeOfUser;
- (KalturaFieldType)getTypeOfLoginSession;
- (NSString*)getObjectTypeOfLoginSession;
@end

// @package Kaltura
// @subpackage Client
// Returns social configuration for the partner
@interface KalturaSocialConfig : KalturaObjectBase
// The application identifier
@property (nonatomic,copy) NSString* appId;
// List of application permissions
@property (nonatomic,copy) NSString* permissions;
- (KalturaFieldType)getTypeOfAppId;
- (KalturaFieldType)getTypeOfPermissions;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPurchaseBase : KalturaObjectBase
// Identifier for the package from which this content is offered
@property (nonatomic,assign) int productId;
// Identifier for the content to purchase. Relevant only if Product type = PPV
@property (nonatomic,assign) int contentId;
// Package type. Possible values: PPV, Subscription, Collection
@property (nonatomic,copy) NSString* productType;	// enum KalturaTransactionType
- (KalturaFieldType)getTypeOfProductId;
- (KalturaFieldType)getTypeOfContentId;
- (KalturaFieldType)getTypeOfProductType;
- (void)setProductIdFromString:(NSString*)aPropVal;
- (void)setContentIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPurchase : KalturaPurchaseBase
// Identifier for paying currency, according to ISO 4217
@property (nonatomic,copy) NSString* currency;
// Net sum to charge – as a one-time transaction. Price must match the previously provided price for the specified content.
@property (nonatomic,assign) double price;
// Identifier for a pre-entered payment method. If not provided – the household’s default payment method is used
@property (nonatomic,assign) int paymentMethodId;
// Identifier for a pre-associated payment gateway. If not provided – the account’s default payment gateway is used
@property (nonatomic,assign) int paymentGatewayId;
// Coupon code
@property (nonatomic,copy) NSString* coupon;
- (KalturaFieldType)getTypeOfCurrency;
- (KalturaFieldType)getTypeOfPrice;
- (KalturaFieldType)getTypeOfPaymentMethodId;
- (KalturaFieldType)getTypeOfPaymentGatewayId;
- (KalturaFieldType)getTypeOfCoupon;
- (void)setPriceFromString:(NSString*)aPropVal;
- (void)setPaymentMethodIdFromString:(NSString*)aPropVal;
- (void)setPaymentGatewayIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPurchaseSession : KalturaPurchase
// Preview module identifier (relevant only for subscription)
@property (nonatomic,assign) int previewModuleId;
- (KalturaFieldType)getTypeOfPreviewModuleId;
- (void)setPreviewModuleIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExternalReceipt : KalturaPurchaseBase
// A unique identifier that was provided by the In-App billing service to validate the purchase
@property (nonatomic,copy) NSString* receiptId;
// The payment gateway name for the In-App billing service to be used. Possible values: Google/Apple
@property (nonatomic,copy) NSString* paymentGatewayName;
- (KalturaFieldType)getTypeOfReceiptId;
- (KalturaFieldType)getTypeOfPaymentGatewayName;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransaction : KalturaObjectBase
// Kaltura unique ID representing the transaction
@property (nonatomic,copy) NSString* id;
// Transaction reference ID received from the payment gateway. 
//             Value is available only if the payment gateway provides this information.
@property (nonatomic,copy) NSString* paymentGatewayReferenceId;
// Response ID received from by the payment gateway. 
//             Value is available only if the payment gateway provides this information.
@property (nonatomic,copy) NSString* paymentGatewayResponseId;
// Transaction state: OK/Pending/Failed
@property (nonatomic,copy) NSString* state;
// Adapter failure reason code
//             Insufficient funds = 20, Invalid account = 21, User unknown = 22, Reason unknown = 23, Unknown payment gateway response = 24,
//             No response from payment gateway = 25, Exceeded retry limit = 26, Illegal client request = 27, Expired = 28
@property (nonatomic,assign) int failReasonCode;
// Entitlement creation date
@property (nonatomic,assign) int createdAt;
- (KalturaFieldType)getTypeOfId;
- (KalturaFieldType)getTypeOfPaymentGatewayReferenceId;
- (KalturaFieldType)getTypeOfPaymentGatewayResponseId;
- (KalturaFieldType)getTypeOfState;
- (KalturaFieldType)getTypeOfFailReasonCode;
- (KalturaFieldType)getTypeOfCreatedAt;
- (void)setFailReasonCodeFromString:(NSString*)aPropVal;
- (void)setCreatedAtFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransactionStatus : KalturaObjectBase
// Payment gateway adapter application state for the transaction to update
@property (nonatomic,copy) NSString* adapterTransactionStatus;	// enum KalturaTransactionAdapterStatus
// External transaction identifier
@property (nonatomic,copy) NSString* externalId;
// Payment gateway transaction status
@property (nonatomic,copy) NSString* externalStatus;
// Payment gateway message
@property (nonatomic,copy) NSString* externalMessage;
// The reason the transaction failed
@property (nonatomic,assign) int failReason;
- (KalturaFieldType)getTypeOfAdapterTransactionStatus;
- (KalturaFieldType)getTypeOfExternalId;
- (KalturaFieldType)getTypeOfExternalStatus;
- (KalturaFieldType)getTypeOfExternalMessage;
- (KalturaFieldType)getTypeOfFailReason;
- (void)setFailReasonFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// Log in pin code details
@interface KalturaUserLoginPin : KalturaObjectBase
// Generated login pin code
@property (nonatomic,copy) NSString* pinCode;
// Login pin expiration time (epoch)
@property (nonatomic,assign) int expirationTime;
// User Identifier
@property (nonatomic,copy,readonly) NSString* userId;
- (KalturaFieldType)getTypeOfPinCode;
- (KalturaFieldType)getTypeOfExpirationTime;
- (KalturaFieldType)getTypeOfUserId;
- (void)setExpirationTimeFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaParentalRuleFilter : KalturaFilter
// Reference type to filter by
@property (nonatomic,copy) NSString* entityReferenceEqual;	// enum KalturaEntityReferenceBy
- (KalturaFieldType)getTypeOfEntityReferenceEqual;
@end

// @package Kaltura
// @subpackage Client
// Transactions filter
@interface KalturaTransactionHistoryFilter : KalturaFilter
// Reference type to filter by
@property (nonatomic,copy) NSString* entityReferenceEqual;	// enum KalturaEntityReferenceBy
// Filter transactions later than specific date
@property (nonatomic,assign) int startDateGreaterThanOrEqual;
// Filter transactions earlier than specific date
@property (nonatomic,assign) int endDateLessThanOrEqual;
- (KalturaFieldType)getTypeOfEntityReferenceEqual;
- (KalturaFieldType)getTypeOfStartDateGreaterThanOrEqual;
- (KalturaFieldType)getTypeOfEndDateLessThanOrEqual;
- (void)setStartDateGreaterThanOrEqualFromString:(NSString*)aPropVal;
- (void)setEndDateLessThanOrEqualFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
// User roles filter
@interface KalturaUserRoleFilter : KalturaFilter
// Comma separated roles identifiers
@property (nonatomic,copy) NSString* idIn;
- (KalturaFieldType)getTypeOfIdIn;
@end

// @package Kaltura
// @subpackage Client
// OTT User filter
@interface KalturaOTTUserFilter : KalturaFilter
// User Filter By
@property (nonatomic,copy) NSString* userByEqual;	// enum KalturaOTTUserBy
// The User identifiers
@property (nonatomic,copy) NSString* valueEqual;
- (KalturaFieldType)getTypeOfUserByEqual;
- (KalturaFieldType)getTypeOfValueEqual;
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaAnnouncementService : KalturaServiceBase
// Add a new future scheduled system announcement push notification
- (KalturaAnnouncement*)addWithAnnouncement:(KalturaAnnouncement*)aAnnouncement;
// Delete an existing announcing. Announcement cannot be delete while being sent.
- (KALTURA_BOOL)deleteWithId:(int)aId;
// Enable system announcements
- (KALTURA_BOOL)enableSystemAnnouncements;
// Lists all announcements in the system.
- (KalturaAnnouncementListResponse*)listWithFilter:(KalturaAnnouncementFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaAnnouncementListResponse*)listWithFilter:(KalturaAnnouncementFilter*)aFilter;
// Update an existing future system announcement push notification. Announcement can only be updated only before sending
- (KalturaAnnouncement*)updateWithAnnouncementId:(int)aAnnouncementId withAnnouncement:(KalturaAnnouncement*)aAnnouncement;
// Update a system announcement status
- (KALTURA_BOOL)updateStatusWithId:(int)aId withStatus:(KALTURA_BOOL)aStatus;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAppTokenService : KalturaServiceBase
// Add new application authentication token
- (KalturaAppToken*)addWithAppToken:(KalturaAppToken*)aAppToken;
// Delete application authentication token by id
- (KALTURA_BOOL)deleteWithId:(NSString*)aId;
// Get application authentication token by id
- (KalturaAppToken*)getWithId:(NSString*)aId;
// Starts a new KS (Kaltura Session) based on application authentication token id
- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId withType:(int)aType withExpiry:(int)aExpiry withUdid:(NSString*)aUdid;
- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId withType:(int)aType withExpiry:(int)aExpiry;
- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId withType:(int)aType;
- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId;
- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetCommentService : KalturaServiceBase
// Add asset comments by asset id
- (KalturaAssetComment*)addWithComment:(KalturaAssetComment*)aComment;
// Returns asset comments by asset id
- (KalturaAssetCommentListResponse*)listWithFilter:(KalturaAssetCommentFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaAssetCommentListResponse*)listWithFilter:(KalturaAssetCommentFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetService : KalturaServiceBase
// Returns media or EPG asset by media / EPG internal or external identifier
- (KalturaAsset*)getWithId:(NSString*)aId withAssetReferenceType:(NSString*)aAssetReferenceType;
// Returns media or EPG assets. Filters by media identifiers or by EPG internal or external identifier.
- (KalturaAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter;
- (KalturaAssetListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetFileService : KalturaServiceBase
// get KalturaAssetFileContext
- (KalturaAssetFileContext*)getContextWithId:(NSString*)aId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetHistoryService : KalturaServiceBase
// Get recently watched media for user, ordered by recently watched first.
- (KalturaAssetHistoryListResponse*)listWithFilter:(KalturaAssetHistoryFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaAssetHistoryListResponse*)listWithFilter:(KalturaAssetHistoryFilter*)aFilter;
- (KalturaAssetHistoryListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaAssetStatisticsService : KalturaServiceBase
// Returns statistics for given list of assets by type and / or time period
- (KalturaAssetStatisticsListResponse*)queryWithQuery:(KalturaAssetStatisticsQuery*)aQuery;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaBookmarkService : KalturaServiceBase
// Report player position and action for the user on the watched asset. Player position is used to later allow resume watching.
- (KALTURA_BOOL)addWithBookmark:(KalturaBookmark*)aBookmark;
// Returns player position record/s for the requested asset and the requesting user. 
//             If default user makes the request – player position records are provided for all of the users in the household.
//             If non-default user makes the request - player position records are provided for the requesting user and the default user of the household.
- (KalturaBookmarkListResponse*)listWithFilter:(KalturaBookmarkFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCdnAdapterProfileService : KalturaServiceBase
// Insert new CDN adapter for partner
- (KalturaCDNAdapterProfile*)addWithAdapter:(KalturaCDNAdapterProfile*)aAdapter;
// Delete CDN adapter by CDN adapter id
- (KALTURA_BOOL)deleteWithAdapterId:(int)aAdapterId;
// Generate CDN adapter shared secret
- (KalturaCDNAdapterProfile*)generateSharedSecretWithAdapterId:(int)aAdapterId;
// Returns all CDN adapters for partner
- (KalturaCDNAdapterProfileListResponse*)list;
// Update CDN adapter details
- (KalturaCDNAdapterProfile*)updateWithAdapterId:(int)aAdapterId withAdapter:(KalturaCDNAdapterProfile*)aAdapter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCdnPartnerSettingsService : KalturaServiceBase
// Retrieve the partner’s CDN settings (default adapters)
- (KalturaCDNPartnerSettings*)get;
// Configure the partner’s CDN settings (default adapters)
- (KalturaCDNPartnerSettings*)updateWithSettings:(KalturaCDNPartnerSettings*)aSettings;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCDVRAdapterProfileService : KalturaServiceBase
// Insert new C-DVR adapter for partner
- (KalturaCDVRAdapterProfile*)addWithAdapter:(KalturaCDVRAdapterProfile*)aAdapter;
// Delete C-DVR adapter by C-DVR adapter id
- (KALTURA_BOOL)deleteWithAdapterId:(int)aAdapterId;
// Generate C-DVR adapter shared secret
- (KalturaCDVRAdapterProfile*)generateSharedSecretWithAdapterId:(int)aAdapterId;
// Returns all C-DVR adapters for partner
- (KalturaCDVRAdapterProfileListResponse*)list;
// Update C-DVR adapter details
- (KalturaCDVRAdapterProfile*)updateWithAdapterId:(int)aAdapterId withAdapter:(KalturaCDVRAdapterProfile*)aAdapter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaChannelService : KalturaServiceBase
// Insert new channel for partner. Currently supports only KSQL channel
- (KalturaChannel*)addWithChannel:(KalturaChannel*)aChannel;
// Delete channel by its channel id
- (KALTURA_BOOL)deleteWithChannelId:(int)aChannelId;
// Returns channel info
- (KalturaChannel*)getWithId:(int)aId;
// Update channel details. Currently supports only KSQL channel
- (KalturaChannel*)updateWithChannelId:(int)aChannelId withChannel:(KalturaChannel*)aChannel;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaCouponService : KalturaServiceBase
// Returns information about a coupon
- (KalturaCoupon*)getWithCode:(NSString*)aCode;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaEntitlementService : KalturaServiceBase
// Immediately cancel a subscription, PPV or collection. Cancel is possible only if within cancellation window and content not already consumed
- (KALTURA_BOOL)cancelWithAssetId:(int)aAssetId withTransactionType:(NSString*)aTransactionType;
// Cancel a household service subscription at the next renewal. The subscription stays valid till the next renewal.
- (void)cancelRenewalWithSubscriptionId:(NSString*)aSubscriptionId;
// Reconcile the user household&#39;s entitlements with an external entitlements source. This request is frequency protected to avoid too frequent calls per household.
- (KALTURA_BOOL)externalReconcile;
// Immediately cancel a subscription, PPV or collection. Cancel applies regardless of cancellation window and content consumption status
- (KALTURA_BOOL)forceCancelWithAssetId:(int)aAssetId withTransactionType:(NSString*)aTransactionType;
// Grant household for an entitlement for a PPV or Subscription.
- (KALTURA_BOOL)grantWithProductId:(int)aProductId withProductType:(NSString*)aProductType withHistory:(KALTURA_BOOL)aHistory withContentId:(int)aContentId;
- (KALTURA_BOOL)grantWithProductId:(int)aProductId withProductType:(NSString*)aProductType withHistory:(KALTURA_BOOL)aHistory;
// Gets all the entitled media items for a household
- (KalturaEntitlementListResponse*)listWithFilter:(KalturaEntitlementFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaEntitlementListResponse*)listWithFilter:(KalturaEntitlementFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExportTaskService : KalturaServiceBase
// Adds a new bulk export task
- (KalturaExportTask*)addWithTask:(KalturaExportTask*)aTask;
// Deletes an existing bulk export task by task identifier
- (KALTURA_BOOL)deleteWithId:(int)aId;
// Gets an existing bulk export task by task identifier
- (KalturaExportTask*)getWithId:(int)aId;
// Returns bulk export tasks by tasks identifiers
- (KalturaExportTaskListResponse*)listWithFilter:(KalturaExportTaskFilter*)aFilter;
- (KalturaExportTaskListResponse*)list;
// Updates an existing bulk export task by task identifier
- (KalturaExportTask*)updateWithId:(int)aId withTask:(KalturaExportTask*)aTask;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaExternalChannelProfileService : KalturaServiceBase
// Insert new External channel for partner
- (KalturaExternalChannelProfile*)addWithExternalChannel:(KalturaExternalChannelProfile*)aExternalChannel;
// Delete External channel by External channel id
- (KALTURA_BOOL)deleteWithExternalChannelId:(int)aExternalChannelId;
// Returns all External channels for partner
- (KalturaExternalChannelProfileListResponse*)list;
// Update External channel details
- (KalturaExternalChannelProfile*)updateWithExternalChannelId:(int)aExternalChannelId withExternalChannel:(KalturaExternalChannelProfile*)aExternalChannel;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFavoriteService : KalturaServiceBase
// Add media to user&#39;s favorite list
- (KalturaFavorite*)addWithFavorite:(KalturaFavorite*)aFavorite;
// Remove media from user&#39;s favorite list
- (KALTURA_BOOL)deleteWithId:(int)aId;
// Retrieving users&#39; favorites
- (KalturaFavoriteListResponse*)listWithFilter:(KalturaFavoriteFilter*)aFilter;
- (KalturaFavoriteListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFollowTvSeriesService : KalturaServiceBase
// Add a user&#39;s tv series follow.
//             Possible status codes: UserAlreadyFollowing = 8013, NotFound = 500007, InvalidAssetId = 4024
- (KalturaFollowTvSeries*)addWithFollowTvSeries:(KalturaFollowTvSeries*)aFollowTvSeries;
// Delete a user&#39;s tv series follow.
//             Possible status codes: UserNotFollowing = 8012, NotFound = 500007, InvalidAssetId = 4024, AnnouncementNotFound = 8006
- (KALTURA_BOOL)deleteWithAssetId:(int)aAssetId;
// List user&#39;s tv series follows.
//             Possible status codes:
- (KalturaFollowTvSeriesListResponse*)listWithFilter:(KalturaFollowTvSeriesFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaFollowTvSeriesListResponse*)listWithFilter:(KalturaFollowTvSeriesFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHomeNetworkService : KalturaServiceBase
// Add a new home network to a household
- (KalturaHomeNetwork*)addWithHomeNetwork:(KalturaHomeNetwork*)aHomeNetwork;
// Delete household’s existing home network
- (KALTURA_BOOL)deleteWithExternalId:(NSString*)aExternalId;
// Retrieve the household’s home networks
- (KalturaHomeNetworkListResponse*)list;
// Update and existing home network for a household
- (KalturaHomeNetwork*)updateWithExternalId:(NSString*)aExternalId withHomeNetwork:(KalturaHomeNetwork*)aHomeNetwork;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdService : KalturaServiceBase
// Creates a household for the user
- (KalturaHousehold*)addWithHousehold:(KalturaHousehold*)aHousehold;
// Fully delete a household. Delete all of the household information, including users, devices, transactions and assets.
- (KALTURA_BOOL)deleteWithId:(int)aId;
// Returns the household model
- (KalturaHousehold*)getWithId:(int)aId;
- (KalturaHousehold*)get;
// Reset a household’s time limitation for removing user or device
- (KalturaHousehold*)resetFrequencyWithFrequencyType:(NSString*)aFrequencyType;
// Resumed a given household service to its previous service settings
- (KALTURA_BOOL)resume;
// Suspend a given household service. Sets the household status to “suspended&quot;.The household service settings are maintained for later resume
- (KALTURA_BOOL)suspend;
// Update the household name and description
- (KalturaHousehold*)updateWithHousehold:(KalturaHousehold*)aHousehold;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdDeviceService : KalturaServiceBase
// Registers a device to a household using pin code
- (KalturaHouseholdDevice*)addWithDevice:(KalturaHouseholdDevice*)aDevice;
// Registers a device to a household using pin code
- (KalturaHouseholdDevice*)addByPinWithDeviceName:(NSString*)aDeviceName withPin:(NSString*)aPin;
// Removes a device from household
- (KALTURA_BOOL)deleteWithUdid:(NSString*)aUdid;
// Generates device pin to use when adding a device to household by pin
- (KalturaDevicePin*)generatePinWithUdid:(NSString*)aUdid withBrandId:(int)aBrandId;
// Returns device registration status to the supplied household
- (KalturaHouseholdDevice*)get;
// Update the name of the device by UDID
- (KalturaHouseholdDevice*)updateWithUdid:(NSString*)aUdid withDevice:(KalturaHouseholdDevice*)aDevice;
// Update the name of the device by UDID
- (KALTURA_BOOL)updateStatusWithUdid:(NSString*)aUdid withStatus:(NSString*)aStatus;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdLimitationsService : KalturaServiceBase
// Get the limitation module by id
- (KalturaHouseholdLimitations*)getWithId:(int)aId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdPaymentGatewayService : KalturaServiceBase
// Disable payment-gateway on the household
- (KALTURA_BOOL)deleteWithPaymentGatewayId:(int)aPaymentGatewayId;
// Enable a payment-gateway provider for the household.
- (KALTURA_BOOL)setWithPaymentGatewayId:(int)aPaymentGatewayId;
// Get a household’s billing account identifier (charge ID) for a given payment gateway
- (NSString*)getChargeIDWithPaymentGatewayExternalId:(NSString*)aPaymentGatewayExternalId;
// Gets the Payment Gateway Configuration for the payment gateway identifier given
- (KalturaPaymentGatewayConfiguration*)invokeWithPaymentGatewayId:(int)aPaymentGatewayId withIntent:(NSString*)aIntent withExtraParameters:(NSArray*)aExtraParameters;
// Get a list of all configured Payment Gateways providers available for the account. For each payment is provided with the household associated payment methods.
- (KalturaHouseholdPaymentGatewayListResponse*)list;
// Set user billing account identifier (charge ID), for a specific household and a specific payment gateway
- (KALTURA_BOOL)setChargeIDWithPaymentGatewayExternalId:(NSString*)aPaymentGatewayExternalId withChargeId:(NSString*)aChargeId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdPaymentMethodService : KalturaServiceBase
// Force remove of a payment method of the household.
- (KALTURA_BOOL)forceRemoveWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentMethodId:(int)aPaymentMethodId;
// Get a list of all configured Payment Gateways providers available for the account. For each payment is provided with the household associated payment methods.
- (KalturaHouseholdPaymentMethodListResponse*)list;
// Removes a payment method of the household.
- (KALTURA_BOOL)removeWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentMethodId:(int)aPaymentMethodId;
// Set a payment method as default for the household.
- (KALTURA_BOOL)setAsDefaultWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentMethodId:(int)aPaymentMethodId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdPremiumServiceService : KalturaServiceBase
// Returns all the premium services allowed for the household
- (KalturaHouseholdPremiumServiceListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdQuotaService : KalturaServiceBase
// Returns the household&#39;s quota data
- (KalturaHouseholdQuota*)get;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaHouseholdUserService : KalturaServiceBase
// Adds a user to household
- (KalturaHouseholdUser*)addWithHouseholdUser:(KalturaHouseholdUser*)aHouseholdUser;
// Removes a user from household
- (KALTURA_BOOL)deleteWithUserId:(NSString*)aUserId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaInboxMessageService : KalturaServiceBase
// TBD
- (KalturaInboxMessage*)getWithId:(NSString*)aId;
// List inbox messages
- (KalturaInboxMessageListResponse*)listWithFilter:(KalturaInboxMessageFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaInboxMessageListResponse*)listWithFilter:(KalturaInboxMessageFilter*)aFilter;
- (KalturaInboxMessageListResponse*)list;
// TBD
- (KALTURA_BOOL)updateStatusWithId:(NSString*)aId withStatus:(NSString*)aStatus;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaLicensedUrlService : KalturaServiceBase
// Get the URL for playing an asset - EPG or media (not available for recording for now).
- (KalturaLicensedUrl*)getWithRequest:(KalturaLicensedUrlBaseRequest*)aRequest;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaMessageTemplateService : KalturaServiceBase
// Retrieve a message template used in push notifications and inbox
- (KalturaMessageTemplate*)getWithAssetType:(int)aAssetType;
// Set the account’s push notifications and inbox messages templates
- (KalturaMessageTemplate*)updateWithAssetType:(int)aAssetType withTemplate:(KalturaMessageTemplate*)aTemplate;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaNotificationService : KalturaServiceBase
// TBD
- (KALTURA_BOOL)initiateCleanup;
// TBD
- (KalturaRegistryResponse*)registerWithIdentifier:(NSString*)aIdentifier withType:(NSString*)aType;
// Registers the device push token to the push service
- (KALTURA_BOOL)setDevicePushTokenWithPushToken:(NSString*)aPushToken;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaNotificationsPartnerSettingsService : KalturaServiceBase
// Retrieve the partner notification settings.
- (KalturaNotificationsPartnerSettings*)get;
// Update the account notification settings
- (KALTURA_BOOL)updateWithSettings:(KalturaNotificationsPartnerSettings*)aSettings;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaNotificationsSettingsService : KalturaServiceBase
// Retrieve the user’s notification settings.
- (KalturaNotificationsSettings*)get;
// Update the user’s notification settings.
- (KALTURA_BOOL)updateWithSettings:(KalturaNotificationsSettings*)aSettings;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaOssAdapterProfileService : KalturaServiceBase
// Insert new OSS adapter for partner
- (KalturaOSSAdapterProfile*)addWithOssAdapter:(KalturaOSSAdapterProfile*)aOssAdapter;
// Delete OSS adapter by OSS adapter id
- (KALTURA_BOOL)deleteWithOssAdapterId:(int)aOssAdapterId;
// Generate oss adapter shared secret
- (KalturaOSSAdapterProfile*)generateSharedSecretWithOssAdapterId:(int)aOssAdapterId;
// Update OSS adapter details
- (KalturaOSSAdapterProfile*)updateWithOssAdapterId:(int)aOssAdapterId withOssAdapter:(KalturaOSSAdapterProfile*)aOssAdapter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaOttCategoryService : KalturaServiceBase
// Retrieve the list of categories (hierarchical) and their associated channels
- (KalturaOTTCategory*)getWithId:(int)aId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaOttUserService : KalturaServiceBase
// Activate the account by activation token
- (KalturaOTTUser*)activateWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withActivationToken:(NSString*)aActivationToken;
// Edit user details.
- (KALTURA_BOOL)addRoleWithRoleId:(int)aRoleId;
// Returns tokens (KS and refresh token) for anonymous access
- (KalturaLoginSession*)anonymousLoginWithPartnerId:(int)aPartnerId withUdid:(NSString*)aUdid;
- (KalturaLoginSession*)anonymousLoginWithPartnerId:(int)aPartnerId;
// Permanently delete a user. User to delete cannot be an exclusive household master, and cannot be default user.
- (KALTURA_BOOL)delete;
// Retrieving users&#39; data
- (KalturaOTTUser*)get;
// Resend the activation token to a user
- (KalturaStringValue*)getEncryptedUserId;
// Retrieve user by external identifier or username
- (KalturaOTTUserListResponse*)listWithFilter:(KalturaOTTUserFilter*)aFilter;
// User sign-in via a time-expired sign-in PIN.
- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withPassword:(NSString*)aPassword withExtraParams:(NSDictionary*)aExtraParams withUdid:(NSString*)aUdid;
- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withPassword:(NSString*)aPassword withExtraParams:(NSDictionary*)aExtraParams;
- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withPassword:(NSString*)aPassword;
- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername;
- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId;
// User sign-in via a time-expired sign-in PIN.
- (KalturaLoginResponse*)loginWithPinWithPartnerId:(int)aPartnerId withPin:(NSString*)aPin withUdid:(NSString*)aUdid withSecret:(NSString*)aSecret;
- (KalturaLoginResponse*)loginWithPinWithPartnerId:(int)aPartnerId withPin:(NSString*)aPin withUdid:(NSString*)aUdid;
- (KalturaLoginResponse*)loginWithPinWithPartnerId:(int)aPartnerId withPin:(NSString*)aPin;
// Logout the calling user.
- (KALTURA_BOOL)logout;
// Returns new Kaltura session (ks) for the user, using the supplied refresh_token (only if it&#39;s valid and not expired)
- (KalturaLoginSession*)refreshSessionWithRefreshToken:(NSString*)aRefreshToken withUdid:(NSString*)aUdid;
- (KalturaLoginSession*)refreshSessionWithRefreshToken:(NSString*)aRefreshToken;
// Sign up a new user.
- (KalturaOTTUser*)registerWithPartnerId:(int)aPartnerId withUser:(KalturaOTTUser*)aUser withPassword:(NSString*)aPassword;
// Resend the activation token to a user
- (KALTURA_BOOL)resendActivationTokenWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername;
// Send an e-mail with URL to enable the user to set new password.
- (KALTURA_BOOL)resetPasswordWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername;
// Renew the user&#39;s password after validating the token that sent as part of URL in e-mail.
- (KalturaOTTUser*)setInitialPasswordWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withPassword:(NSString*)aPassword;
// Given a user name and existing password, change to a new password.
- (KalturaOTTUser*)updateWithUser:(KalturaOTTUser*)aUser;
// Given a user name and existing password, change to a new password.
- (KALTURA_BOOL)updateLoginDataWithUsername:(NSString*)aUsername withOldPassword:(NSString*)aOldPassword withNewPassword:(NSString*)aNewPassword;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaParentalRuleService : KalturaServiceBase
// Disables a parental rule that was previously defined by the household master. Disable can be at specific user or household level.
- (KALTURA_BOOL)disableWithRuleId:(int)aRuleId withEntityReference:(NSString*)aEntityReference;
// Disables a parental rule that was defined at account level. Disable can be at specific user or household level.
- (KALTURA_BOOL)disableDefaultWithEntityReference:(NSString*)aEntityReference;
// Enable a parental rules for a user
- (KALTURA_BOOL)enableWithRuleId:(int)aRuleId withEntityReference:(NSString*)aEntityReference;
// Return the parental rules that applies for the user or household. Can include rules that have been associated in account, household, or user level.
//             Association level is also specified in the response.
- (KalturaParentalRuleListResponse*)listWithFilter:(KalturaParentalRuleFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPartnerConfigurationService : KalturaServiceBase
// Update Partner Configuration
- (KALTURA_BOOL)updateWithConfiguration:(KalturaPartnerConfiguration*)aConfiguration;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPaymentGatewayProfileService : KalturaServiceBase
// Insert new payment gateway for partner
- (KalturaPaymentGatewayProfile*)addWithPaymentGateway:(KalturaPaymentGatewayProfile*)aPaymentGateway;
// Delete payment gateway by payment gateway id
- (KALTURA_BOOL)deleteWithPaymentGatewayId:(int)aPaymentGatewayId;
// Generate payment gateway shared secret
- (KalturaPaymentGatewayProfile*)generateSharedSecretWithPaymentGatewayId:(int)aPaymentGatewayId;
// Gets the Payment Gateway Configuration for the payment gateway identifier given
- (KalturaPaymentGatewayConfiguration*)getConfigurationWithAlias:(NSString*)aAlias withIntent:(NSString*)aIntent withExtraParameters:(NSArray*)aExtraParameters;
// Returns all payment gateways for partner : id + name
- (KalturaPaymentGatewayProfileListResponse*)list;
// Update payment gateway details
- (KalturaPaymentGatewayProfile*)updateWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentGateway:(KalturaPaymentGatewayProfile*)aPaymentGateway;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPaymentMethodProfileService : KalturaServiceBase
// TBD
- (KalturaPaymentMethodProfile*)addWithPaymentMethod:(KalturaPaymentMethodProfile*)aPaymentMethod;
// Delete payment method profile
- (KALTURA_BOOL)deleteWithPaymentMethodId:(int)aPaymentMethodId;
// TBD
- (KalturaPaymentMethodProfileListResponse*)listWithFilter:(KalturaPaymentMethodProfileFilter*)aFilter;
// Update payment method
- (KalturaPaymentMethodProfile*)updateWithPaymentMethodId:(int)aPaymentMethodId withPaymentMethod:(KalturaPaymentMethodProfile*)aPaymentMethod;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPersonalFeedService : KalturaServiceBase
// List user&#39;s feeds.
//             Possible status codes:
- (KalturaPersonalFeedListResponse*)listWithFilter:(KalturaPersonalFeedFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaPersonalFeedListResponse*)listWithFilter:(KalturaPersonalFeedFilter*)aFilter;
- (KalturaPersonalFeedListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPinService : KalturaServiceBase
// Retrieve the parental or purchase PIN that applies for the household or user. Includes specification of where the PIN was defined at – account, household or user  level
- (KalturaPin*)getWithBy:(NSString*)aBy withType:(NSString*)aType withRuleId:(int)aRuleId;
- (KalturaPin*)getWithBy:(NSString*)aBy withType:(NSString*)aType;
// Set the parental or purchase PIN that applies for the user or the household.
- (KalturaPin*)updateWithBy:(NSString*)aBy withType:(NSString*)aType withPin:(KalturaPin*)aPin withRuleId:(int)aRuleId;
- (KalturaPin*)updateWithBy:(NSString*)aBy withType:(NSString*)aType withPin:(KalturaPin*)aPin;
// Validate a purchase or parental PIN for a user.
- (KALTURA_BOOL)validateWithPin:(NSString*)aPin withType:(NSString*)aType withRuleId:(int)aRuleId;
- (KALTURA_BOOL)validateWithPin:(NSString*)aPin withType:(NSString*)aType;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPpvService : KalturaServiceBase
// Returns ppv object by internal identifier
- (KalturaPpv*)getWithId:(int)aId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaProductPriceService : KalturaServiceBase
// Returns a price and a purchase status for each subscription or/and media file, for a given user (if passed) and with the consideration of a coupon code (if passed).
- (KalturaProductPriceListResponse*)listWithFilter:(KalturaProductPriceFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaPurchaseSettingsService : KalturaServiceBase
// Retrieve the purchase settings.
//             Includes specification of where these settings were defined – account, household or user
- (KalturaPurchaseSettings*)getWithBy:(NSString*)aBy;
// Set a purchase PIN for the household or user
- (KalturaPurchaseSettings*)updateWithEntityReference:(NSString*)aEntityReference withSettings:(KalturaPurchaseSettings*)aSettings;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecommendationProfileService : KalturaServiceBase
// Insert new recommendation engine for partner
- (KalturaRecommendationProfile*)addWithRecommendationEngine:(KalturaRecommendationProfile*)aRecommendationEngine;
// Delete recommendation engine by recommendation engine id
- (KALTURA_BOOL)deleteWithId:(int)aId;
// Generate recommendation engine  shared secret
- (KalturaRecommendationProfile*)generateSharedSecretWithRecommendationEngineId:(int)aRecommendationEngineId;
// Returns all recommendation engines for partner
- (KalturaRecommendationProfileListResponse*)list;
// Update recommendation engine details
- (KalturaRecommendationProfile*)updateWithRecommendationEngineId:(int)aRecommendationEngineId withRecommendationEngine:(KalturaRecommendationProfile*)aRecommendationEngine;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRecordingService : KalturaServiceBase
// Issue a record request for a program
- (KalturaRecording*)addWithRecording:(KalturaRecording*)aRecording;
// Cancel a previously requested recording. Cancel recording can be called for recording in status Scheduled or Recording Only
- (KalturaRecording*)cancelWithId:(int)aId;
// Delete one or more user recording(s). Delete recording can be called only for recordings in status Recorded
- (KalturaRecording*)deleteWithId:(int)aId;
// Returns recording object by internal identifier
- (KalturaRecording*)getWithId:(int)aId;
// Return a list of recordings for the household with optional filter by status and KSQL.
- (KalturaRecordingListResponse*)listWithFilter:(KalturaRecordingFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaRecordingListResponse*)listWithFilter:(KalturaRecordingFilter*)aFilter;
- (KalturaRecordingListResponse*)list;
// Protects an existing recording from the cleanup process for the defined protection period
- (KalturaRecording*)protectWithId:(int)aId;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegionService : KalturaServiceBase
// Returns all regions for the partner
- (KalturaRegionListResponse*)listWithFilter:(KalturaRegionFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaRegistrySettingsService : KalturaServiceBase
// Retrieve the registry settings.
- (KalturaRegistrySettingsListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSeriesRecordingService : KalturaServiceBase
// Issue a record request for a complete season or series
- (KalturaSeriesRecording*)addWithRecording:(KalturaSeriesRecording*)aRecording;
// Cancel a previously requested series recording. Cancel series recording can be called for recording in status Scheduled or Recording Only
- (KalturaSeriesRecording*)cancelWithId:(int)aId;
// Cancel EPG recording that was recorded as part of series
- (KalturaSeriesRecording*)cancelByEpgIdWithId:(int)aId withEpgId:(int)aEpgId;
// Cancel Season recording epgs that was recorded as part of series
- (KalturaSeriesRecording*)cancelBySeasonNumberWithId:(int)aId withSeasonNumber:(int)aSeasonNumber;
// Delete series recording(s). Delete series recording can be called recordings in any status
- (KalturaSeriesRecording*)deleteWithId:(int)aId;
// Delete Season recording epgs that was recorded as part of series
- (KalturaSeriesRecording*)deleteBySeasonNumberWithId:(int)aId withSeasonNumber:(int)aSeasonNumber;
// Return a list of series recordings for the household with optional filter by status and KSQL.
- (KalturaSeriesRecordingListResponse*)listWithFilter:(KalturaSeriesRecordingFilter*)aFilter;
- (KalturaSeriesRecordingListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSessionService : KalturaServiceBase
// Parses KS
- (KalturaSession*)getWithSession:(NSString*)aSession;
- (KalturaSession*)get;
// Switching the user in the session by generating a new session for a new user within the same household
- (KalturaLoginSession*)switchUserWithUserIdToSwitch:(NSString*)aUserIdToSwitch;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSocialService : KalturaServiceBase
// Return the user object with social information according to a provided external social token
- (KalturaSocial*)getWithType:(NSString*)aType;
// Return the user object with social information according to a provided external social token
- (KalturaSocial*)getByTokenWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType;
// Retrieve the social network’s configuration information
- (KalturaSocialConfig*)getConfigurationWithPartnerId:(int)aPartnerId withType:(NSString*)aType;
// Login using social token
- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType withUdid:(NSString*)aUdid;
- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType;
// Connect an existing user in the system to an external social network user
- (KalturaSocial*)mergeWithToken:(NSString*)aToken withType:(NSString*)aType;
// Create a new user in the system using a provided external social token
- (KalturaSocial*)registerWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType;
// Disconnect an existing user in the system from its external social network user
- (KalturaSocial*)unmergeWithType:(NSString*)aType;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSubscriptionService : KalturaServiceBase
// Returns a list of subscriptions requested by Subscription ID or file ID
- (KalturaSubscriptionListResponse*)listWithFilter:(KalturaSubscriptionFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaSystemService : KalturaServiceBase
// Returns country details by the provided IP, if not provided - by the client IP
- (KalturaCountry*)getCountryWithIp:(NSString*)aIp;
- (KalturaCountry*)getCountry;
// Returns current server timestamp
- (int)getTime;
// Returns current server version
- (NSString*)getVersion;
// Returns true
- (KALTURA_BOOL)ping;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTimeShiftedTvPartnerSettingsService : KalturaServiceBase
// Retrieve the account’s time-shifted TV settings (catch-up and C-DVR, Trick-play, Start-over)
- (KalturaTimeShiftedTvPartnerSettings*)get;
// Configure the account’s time-shifted TV settings (catch-up and C-DVR, Trick-play, Start-over)
- (KALTURA_BOOL)updateWithSettings:(KalturaTimeShiftedTvPartnerSettings*)aSettings;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTopicService : KalturaServiceBase
// TBD
- (KALTURA_BOOL)deleteWithId:(int)aId;
// TBD
- (KalturaTopic*)getWithId:(int)aId;
// TBD
- (KalturaTopicListResponse*)listWithFilter:(KalturaTopicFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaTopicListResponse*)listWithFilter:(KalturaTopicFilter*)aFilter;
- (KalturaTopicListResponse*)list;
// TBD
- (KALTURA_BOOL)updateStatusWithId:(int)aId withAutomaticIssueNotification:(NSString*)aAutomaticIssueNotification;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransactionService : KalturaServiceBase
// Retrieve the purchase session identifier
- (int)getPurchaseSessionIdWithPurchaseSession:(KalturaPurchaseSession*)aPurchaseSession;
// Purchase specific product or subscription for a household. Upon successful charge entitlements to use the requested product or subscription are granted.
- (KalturaTransaction*)purchaseWithPurchase:(KalturaPurchase*)aPurchase;
// This method shall set the waiver flag on the user entitlement table and the waiver date field to the current date.
- (KALTURA_BOOL)setWaiverWithAssetId:(int)aAssetId withTransactionType:(NSString*)aTransactionType;
// Updates a pending purchase transaction state.
- (void)updateStatusWithPaymentGatewayId:(NSString*)aPaymentGatewayId withExternalTransactionId:(NSString*)aExternalTransactionId withSignature:(NSString*)aSignature withStatus:(KalturaTransactionStatus*)aStatus;
// Verifies PPV/Subscription/Collection client purchase (such as InApp) and entitles the user.
- (KalturaTransaction*)validateReceiptWithExternalReceipt:(KalturaExternalReceipt*)aExternalReceipt;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaTransactionHistoryService : KalturaServiceBase
// Gets user or household transaction history.
- (KalturaBillingTransactionListResponse*)listWithFilter:(KalturaTransactionHistoryFilter*)aFilter withPager:(KalturaFilterPager*)aPager;
- (KalturaBillingTransactionListResponse*)listWithFilter:(KalturaTransactionHistoryFilter*)aFilter;
- (KalturaBillingTransactionListResponse*)list;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserAssetRuleService : KalturaServiceBase
// Retrieve all the rules (parental, geo, device or user-type) that applies for this user and asset.
- (KalturaUserAssetRuleListResponse*)listWithFilter:(KalturaUserAssetRuleFilter*)aFilter;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserAssetsListItemService : KalturaServiceBase
// Adds a new item to user’s private asset list
- (KalturaUserAssetsListItem*)addWithUserAssetsListItem:(KalturaUserAssetsListItem*)aUserAssetsListItem;
// Deletes an item from user’s private asset list
- (KALTURA_BOOL)deleteWithAssetId:(NSString*)aAssetId withListType:(NSString*)aListType;
// Get an item from user’s private asset list
- (KalturaUserAssetsListItem*)getWithAssetId:(NSString*)aAssetId withListType:(NSString*)aListType withItemType:(NSString*)aItemType;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserLoginPinService : KalturaServiceBase
// Generate a time and usage expiry login-PIN that can allow a single login per PIN. If an active login-PIN already exists. Calling this API again for same user will add another login-PIN
- (KalturaUserLoginPin*)addWithSecret:(NSString*)aSecret;
- (KalturaUserLoginPin*)add;
// Immediately expire all active login-PINs for a user
- (KALTURA_BOOL)deleteWithPinCode:(NSString*)aPinCode;
// Immediately expire all active login-PINs for a user
- (KALTURA_BOOL)deleteAll;
// Set a time and usage expiry login-PIN that can allow a single login per PIN. If an active login-PIN already exists. Calling this API again for same user will add another login-PIN
- (KalturaUserLoginPin*)updateWithPinCode:(NSString*)aPinCode withSecret:(NSString*)aSecret;
- (KalturaUserLoginPin*)updateWithPinCode:(NSString*)aPinCode;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUserRoleService : KalturaServiceBase
// Retrieving user roles by identifiers, if filter is empty, returns all partner roles
- (KalturaUserRoleListResponse*)listWithFilter:(KalturaUserRoleFilter*)aFilter;
- (KalturaUserRoleListResponse*)list;
@end

@interface KalturaClient : KalturaClientBase
{
	KalturaAnnouncementService* _announcement;
	KalturaAppTokenService* _appToken;
	KalturaAssetCommentService* _assetComment;
	KalturaAssetService* _asset;
	KalturaAssetFileService* _assetFile;
	KalturaAssetHistoryService* _assetHistory;
	KalturaAssetStatisticsService* _assetStatistics;
	KalturaBookmarkService* _bookmark;
	KalturaCdnAdapterProfileService* _cdnAdapterProfile;
	KalturaCdnPartnerSettingsService* _cdnPartnerSettings;
	KalturaCDVRAdapterProfileService* _cDVRAdapterProfile;
	KalturaChannelService* _channel;
	KalturaCouponService* _coupon;
	KalturaEntitlementService* _entitlement;
	KalturaExportTaskService* _exportTask;
	KalturaExternalChannelProfileService* _externalChannelProfile;
	KalturaFavoriteService* _favorite;
	KalturaFollowTvSeriesService* _followTvSeries;
	KalturaHomeNetworkService* _homeNetwork;
	KalturaHouseholdService* _household;
	KalturaHouseholdDeviceService* _householdDevice;
	KalturaHouseholdLimitationsService* _householdLimitations;
	KalturaHouseholdPaymentGatewayService* _householdPaymentGateway;
	KalturaHouseholdPaymentMethodService* _householdPaymentMethod;
	KalturaHouseholdPremiumServiceService* _householdPremiumService;
	KalturaHouseholdQuotaService* _householdQuota;
	KalturaHouseholdUserService* _householdUser;
	KalturaInboxMessageService* _inboxMessage;
	KalturaLicensedUrlService* _licensedUrl;
	KalturaMessageTemplateService* _messageTemplate;
	KalturaNotificationService* _notification;
	KalturaNotificationsPartnerSettingsService* _notificationsPartnerSettings;
	KalturaNotificationsSettingsService* _notificationsSettings;
	KalturaOssAdapterProfileService* _ossAdapterProfile;
	KalturaOttCategoryService* _ottCategory;
	KalturaOttUserService* _ottUser;
	KalturaParentalRuleService* _parentalRule;
	KalturaPartnerConfigurationService* _partnerConfiguration;
	KalturaPaymentGatewayProfileService* _paymentGatewayProfile;
	KalturaPaymentMethodProfileService* _paymentMethodProfile;
	KalturaPersonalFeedService* _personalFeed;
	KalturaPinService* _pin;
	KalturaPpvService* _ppv;
	KalturaProductPriceService* _productPrice;
	KalturaPurchaseSettingsService* _purchaseSettings;
	KalturaRecommendationProfileService* _recommendationProfile;
	KalturaRecordingService* _recording;
	KalturaRegionService* _region;
	KalturaRegistrySettingsService* _registrySettings;
	KalturaSeriesRecordingService* _seriesRecording;
	KalturaSessionService* _session;
	KalturaSocialService* _social;
	KalturaSubscriptionService* _subscription;
	KalturaSystemService* _system;
	KalturaTimeShiftedTvPartnerSettingsService* _timeShiftedTvPartnerSettings;
	KalturaTopicService* _topic;
	KalturaTransactionService* _transaction;
	KalturaTransactionHistoryService* _transactionHistory;
	KalturaUserAssetRuleService* _userAssetRule;
	KalturaUserAssetsListItemService* _userAssetsListItem;
	KalturaUserLoginPinService* _userLoginPin;
	KalturaUserRoleService* _userRole;
}

@property (nonatomic, readonly) KalturaAnnouncementService* announcement;
@property (nonatomic, readonly) KalturaAppTokenService* appToken;
@property (nonatomic, readonly) KalturaAssetCommentService* assetComment;
@property (nonatomic, readonly) KalturaAssetService* asset;
@property (nonatomic, readonly) KalturaAssetFileService* assetFile;
@property (nonatomic, readonly) KalturaAssetHistoryService* assetHistory;
@property (nonatomic, readonly) KalturaAssetStatisticsService* assetStatistics;
@property (nonatomic, readonly) KalturaBookmarkService* bookmark;
@property (nonatomic, readonly) KalturaCdnAdapterProfileService* cdnAdapterProfile;
@property (nonatomic, readonly) KalturaCdnPartnerSettingsService* cdnPartnerSettings;
@property (nonatomic, readonly) KalturaCDVRAdapterProfileService* cDVRAdapterProfile;
@property (nonatomic, readonly) KalturaChannelService* channel;
@property (nonatomic, readonly) KalturaCouponService* coupon;
@property (nonatomic, readonly) KalturaEntitlementService* entitlement;
@property (nonatomic, readonly) KalturaExportTaskService* exportTask;
@property (nonatomic, readonly) KalturaExternalChannelProfileService* externalChannelProfile;
@property (nonatomic, readonly) KalturaFavoriteService* favorite;
@property (nonatomic, readonly) KalturaFollowTvSeriesService* followTvSeries;
@property (nonatomic, readonly) KalturaHomeNetworkService* homeNetwork;
@property (nonatomic, readonly) KalturaHouseholdService* household;
@property (nonatomic, readonly) KalturaHouseholdDeviceService* householdDevice;
@property (nonatomic, readonly) KalturaHouseholdLimitationsService* householdLimitations;
@property (nonatomic, readonly) KalturaHouseholdPaymentGatewayService* householdPaymentGateway;
@property (nonatomic, readonly) KalturaHouseholdPaymentMethodService* householdPaymentMethod;
@property (nonatomic, readonly) KalturaHouseholdPremiumServiceService* householdPremiumService;
@property (nonatomic, readonly) KalturaHouseholdQuotaService* householdQuota;
@property (nonatomic, readonly) KalturaHouseholdUserService* householdUser;
@property (nonatomic, readonly) KalturaInboxMessageService* inboxMessage;
@property (nonatomic, readonly) KalturaLicensedUrlService* licensedUrl;
@property (nonatomic, readonly) KalturaMessageTemplateService* messageTemplate;
@property (nonatomic, readonly) KalturaNotificationService* notification;
@property (nonatomic, readonly) KalturaNotificationsPartnerSettingsService* notificationsPartnerSettings;
@property (nonatomic, readonly) KalturaNotificationsSettingsService* notificationsSettings;
@property (nonatomic, readonly) KalturaOssAdapterProfileService* ossAdapterProfile;
@property (nonatomic, readonly) KalturaOttCategoryService* ottCategory;
@property (nonatomic, readonly) KalturaOttUserService* ottUser;
@property (nonatomic, readonly) KalturaParentalRuleService* parentalRule;
@property (nonatomic, readonly) KalturaPartnerConfigurationService* partnerConfiguration;
@property (nonatomic, readonly) KalturaPaymentGatewayProfileService* paymentGatewayProfile;
@property (nonatomic, readonly) KalturaPaymentMethodProfileService* paymentMethodProfile;
@property (nonatomic, readonly) KalturaPersonalFeedService* personalFeed;
@property (nonatomic, readonly) KalturaPinService* pin;
@property (nonatomic, readonly) KalturaPpvService* ppv;
@property (nonatomic, readonly) KalturaProductPriceService* productPrice;
@property (nonatomic, readonly) KalturaPurchaseSettingsService* purchaseSettings;
@property (nonatomic, readonly) KalturaRecommendationProfileService* recommendationProfile;
@property (nonatomic, readonly) KalturaRecordingService* recording;
@property (nonatomic, readonly) KalturaRegionService* region;
@property (nonatomic, readonly) KalturaRegistrySettingsService* registrySettings;
@property (nonatomic, readonly) KalturaSeriesRecordingService* seriesRecording;
@property (nonatomic, readonly) KalturaSessionService* session;
@property (nonatomic, readonly) KalturaSocialService* social;
@property (nonatomic, readonly) KalturaSubscriptionService* subscription;
@property (nonatomic, readonly) KalturaSystemService* system;
@property (nonatomic, readonly) KalturaTimeShiftedTvPartnerSettingsService* timeShiftedTvPartnerSettings;
@property (nonatomic, readonly) KalturaTopicService* topic;
@property (nonatomic, readonly) KalturaTransactionService* transaction;
@property (nonatomic, readonly) KalturaTransactionHistoryService* transactionHistory;
@property (nonatomic, readonly) KalturaUserAssetRuleService* userAssetRule;
@property (nonatomic, readonly) KalturaUserAssetsListItemService* userAssetsListItem;
@property (nonatomic, readonly) KalturaUserLoginPinService* userLoginPin;
@property (nonatomic, readonly) KalturaUserRoleService* userRole;
@end

