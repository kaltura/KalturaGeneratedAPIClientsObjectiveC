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
#import "KalturaClient.h"

///////////////////////// enums /////////////////////////
@implementation KalturaAnnouncementOrderBy
+ (NSString*)NONE
{
    return @"NONE";
}
@end

@implementation KalturaAnnouncementRecipientsType
+ (NSString*)ALL
{
    return @"All";
}
+ (NSString*)LOGGEDIN
{
    return @"LoggedIn";
}
+ (NSString*)GUESTS
{
    return @"Guests";
}
+ (NSString*)OTHER
{
    return @"Other";
}
@end

@implementation KalturaAnnouncementStatus
+ (NSString*)NOTSENT
{
    return @"NotSent";
}
+ (NSString*)SENDING
{
    return @"Sending";
}
+ (NSString*)SENT
{
    return @"Sent";
}
+ (NSString*)ABORTED
{
    return @"Aborted";
}
@end

@implementation KalturaApiParameterPermissionItemAction
+ (NSString*)READ
{
    return @"READ";
}
+ (NSString*)INSERT
{
    return @"INSERT";
}
+ (NSString*)UPDATE
{
    return @"UPDATE";
}
+ (NSString*)USAGE
{
    return @"USAGE";
}
@end

@implementation KalturaAppTokenHashType
+ (NSString*)SHA1
{
    return @"SHA1";
}
+ (NSString*)SHA256
{
    return @"SHA256";
}
+ (NSString*)SHA512
{
    return @"SHA512";
}
+ (NSString*)MD5
{
    return @"MD5";
}
@end

@implementation KalturaAppTokenStatus
+ (int)DELETED
{
    return 0;
}
+ (int)DISABLED
{
    return 1;
}
+ (int)ACTIVE
{
    return 2;
}
@end

@implementation KalturaAssetCommentOrderBy
+ (NSString*)CREATE_DATE_DESC
{
    return @"CREATE_DATE_DESC";
}
@end

@implementation KalturaAssetHistoryOrderBy
+ (NSString*)NONE
{
    return @"NONE";
}
@end

@implementation KalturaAssetOrderBy
+ (NSString*)RELEVANCY_DESC
{
    return @"RELEVANCY_DESC";
}
+ (NSString*)NAME_ASC
{
    return @"NAME_ASC";
}
+ (NSString*)NAME_DESC
{
    return @"NAME_DESC";
}
+ (NSString*)VIEWS_DESC
{
    return @"VIEWS_DESC";
}
+ (NSString*)RATINGS_DESC
{
    return @"RATINGS_DESC";
}
+ (NSString*)VOTES_DESC
{
    return @"VOTES_DESC";
}
+ (NSString*)START_DATE_DESC
{
    return @"START_DATE_DESC";
}
+ (NSString*)START_DATE_ASC
{
    return @"START_DATE_ASC";
}
+ (NSString*)LIKES_DESC
{
    return @"LIKES_DESC";
}
@end

@implementation KalturaAssetReferenceType
+ (NSString*)MEDIA
{
    return @"media";
}
+ (NSString*)EPG_INTERNAL
{
    return @"epg_internal";
}
+ (NSString*)EPG_EXTERNAL
{
    return @"epg_external";
}
@end

@implementation KalturaAssetType
+ (NSString*)MEDIA
{
    return @"media";
}
+ (NSString*)RECORDING
{
    return @"recording";
}
+ (NSString*)EPG
{
    return @"epg";
}
@end

@implementation KalturaBillingAction
+ (NSString*)UNKNOWN
{
    return @"unknown";
}
+ (NSString*)PURCHASE
{
    return @"purchase";
}
+ (NSString*)RENEW_PAYMENT
{
    return @"renew_payment";
}
+ (NSString*)RENEW_CANCELED_SUBSCRIPTION
{
    return @"renew_canceled_subscription";
}
+ (NSString*)CANCEL_SUBSCRIPTION_ORDER
{
    return @"cancel_subscription_order";
}
+ (NSString*)SUBSCRIPTION_DATE_CHANGED
{
    return @"subscription_date_changed";
}
@end

@implementation KalturaBillingItemsType
+ (NSString*)UNKNOWN
{
    return @"unknown";
}
+ (NSString*)PPV
{
    return @"ppv";
}
+ (NSString*)SUBSCRIPTION
{
    return @"subscription";
}
+ (NSString*)PRE_PAID
{
    return @"pre_paid";
}
+ (NSString*)PRE_PAID_EXPIRED
{
    return @"pre_paid_expired";
}
+ (NSString*)COLLECTION
{
    return @"collection";
}
@end

@implementation KalturaBookmarkActionType
+ (NSString*)HIT
{
    return @"HIT";
}
+ (NSString*)PLAY
{
    return @"PLAY";
}
+ (NSString*)STOP
{
    return @"STOP";
}
+ (NSString*)PAUSE
{
    return @"PAUSE";
}
+ (NSString*)FIRST_PLAY
{
    return @"FIRST_PLAY";
}
+ (NSString*)SWOOSH
{
    return @"SWOOSH";
}
+ (NSString*)FULL_SCREEN
{
    return @"FULL_SCREEN";
}
+ (NSString*)SEND_TO_FRIEND
{
    return @"SEND_TO_FRIEND";
}
+ (NSString*)LOAD
{
    return @"LOAD";
}
+ (NSString*)FULL_SCREEN_EXIT
{
    return @"FULL_SCREEN_EXIT";
}
+ (NSString*)FINISH
{
    return @"FINISH";
}
+ (NSString*)ERROR
{
    return @"ERROR";
}
+ (NSString*)BITRATE_CHANGE
{
    return @"BITRATE_CHANGE";
}
+ (NSString*)NONE
{
    return @"NONE";
}
@end

@implementation KalturaBookmarkOrderBy
+ (NSString*)POSITION_ASC
{
    return @"POSITION_ASC";
}
+ (NSString*)POSITION_DESC
{
    return @"POSITION_DESC";
}
@end

@implementation KalturaBundleType
+ (NSString*)SUBSCRIPTION
{
    return @"subscription";
}
+ (NSString*)COLLECTION
{
    return @"collection";
}
@end

@implementation KalturaChannelEnrichment
+ (NSString*)CLIENTLOCATION
{
    return @"ClientLocation";
}
+ (NSString*)USERID
{
    return @"UserId";
}
+ (NSString*)HOUSEHOLDID
{
    return @"HouseholdId";
}
+ (NSString*)DEVICEID
{
    return @"DeviceId";
}
+ (NSString*)DEVICETYPE
{
    return @"DeviceType";
}
+ (NSString*)UTCOFFSET
{
    return @"UTCOffset";
}
+ (NSString*)LANGUAGE
{
    return @"Language";
}
+ (NSString*)NPVRSUPPORT
{
    return @"NPVRSupport";
}
+ (NSString*)CATCHUP
{
    return @"Catchup";
}
+ (NSString*)PARENTAL
{
    return @"Parental";
}
+ (NSString*)DTTREGION
{
    return @"DTTRegion";
}
+ (NSString*)ATHOME
{
    return @"AtHome";
}
@end

@implementation KalturaCouponStatus
+ (NSString*)VALID
{
    return @"VALID";
}
+ (NSString*)NOT_EXISTS
{
    return @"NOT_EXISTS";
}
+ (NSString*)ALREADY_USED
{
    return @"ALREADY_USED";
}
+ (NSString*)EXPIRED
{
    return @"EXPIRED";
}
+ (NSString*)INACTIVE
{
    return @"INACTIVE";
}
@end

@implementation KalturaDeviceStatus
+ (NSString*)PENDING
{
    return @"PENDING";
}
+ (NSString*)ACTIVATED
{
    return @"ACTIVATED";
}
+ (NSString*)NOT_ACTIVATED
{
    return @"NOT_ACTIVATED";
}
@end

@implementation KalturaEntitlementOrderBy
+ (NSString*)PURCHASE_DATE_ASC
{
    return @"PURCHASE_DATE_ASC";
}
+ (NSString*)PURCHASE_DATE_DESC
{
    return @"PURCHASE_DATE_DESC";
}
@end

@implementation KalturaEntityReferenceBy
+ (NSString*)USER
{
    return @"user";
}
+ (NSString*)HOUSEHOLD
{
    return @"household";
}
@end

@implementation KalturaExportDataType
+ (NSString*)VOD
{
    return @"vod";
}
+ (NSString*)EPG
{
    return @"epg";
}
+ (NSString*)USERS
{
    return @"users";
}
@end

@implementation KalturaExportTaskOrderBy
+ (NSString*)CREATE_DATE_ASC
{
    return @"CREATE_DATE_ASC";
}
+ (NSString*)CREATE_DATE_DESC
{
    return @"CREATE_DATE_DESC";
}
@end

@implementation KalturaExportType
+ (NSString*)FULL
{
    return @"full";
}
+ (NSString*)INCREMENTAL
{
    return @"incremental";
}
@end

@implementation KalturaFavoriteOrderBy
+ (NSString*)CREATE_DATE_ASC
{
    return @"CREATE_DATE_ASC";
}
+ (NSString*)CREATE_DATE_DESC
{
    return @"CREATE_DATE_DESC";
}
@end

@implementation KalturaFollowTvSeriesOrderBy
+ (NSString*)START_DATE_DESC
{
    return @"START_DATE_DESC";
}
+ (NSString*)START_DATE_ASC
{
    return @"START_DATE_ASC";
}
@end

@implementation KalturaHouseholdFrequencyType
+ (NSString*)DEVICES
{
    return @"devices";
}
+ (NSString*)USERS
{
    return @"users";
}
@end

@implementation KalturaHouseholdPaymentGatewaySelectedBy
+ (NSString*)NONE
{
    return @"none";
}
+ (NSString*)ACCOUNT
{
    return @"account";
}
+ (NSString*)HOUSEHOLD
{
    return @"household";
}
@end

@implementation KalturaHouseholdRestriction
+ (NSString*)NOT_RESTRICTED
{
    return @"not_restricted";
}
+ (NSString*)USER_MASTER_RESTRICTED
{
    return @"user_master_restricted";
}
+ (NSString*)DEVICE_MASTER_RESTRICTED
{
    return @"device_master_restricted";
}
+ (NSString*)DEVICE_USER_MASTER_RESTRICTED
{
    return @"device_user_master_restricted";
}
@end

@implementation KalturaHouseholdState
+ (NSString*)OK
{
    return @"ok";
}
+ (NSString*)CREATED_WITHOUT_NPVR_ACCOUNT
{
    return @"created_without_npvr_account";
}
+ (NSString*)SUSPENDED
{
    return @"suspended";
}
+ (NSString*)NO_USERS_IN_HOUSEHOLD
{
    return @"no_users_in_household";
}
@end

@implementation KalturaHouseholdSuspentionState
+ (NSString*)NOT_SUSPENDED
{
    return @"not_suspended";
}
+ (NSString*)SUSPENDED
{
    return @"suspended";
}
@end

@implementation KalturaHouseholdUserStatus
+ (NSString*)OK
{
    return @"OK";
}
+ (NSString*)PENDING
{
    return @"PENDING";
}
@end

@implementation KalturaInboxMessageOrderBy
+ (NSString*)NONE
{
    return @"NONE";
}
@end

@implementation KalturaInboxMessageStatus
+ (NSString*)UNREAD
{
    return @"Unread";
}
+ (NSString*)READ
{
    return @"Read";
}
+ (NSString*)DELETED
{
    return @"Deleted";
}
@end

@implementation KalturaInboxMessageType
+ (NSString*)SYSTEMANNOUNCEMENT
{
    return @"SystemAnnouncement";
}
+ (NSString*)FOLLOWED
{
    return @"Followed";
}
@end

@implementation KalturaNotificationType
+ (NSString*)ANNOUNCEMENT
{
    return @"announcement";
}
+ (NSString*)SYSTEM
{
    return @"system";
}
@end

@implementation KalturaOTTAssetType
+ (int)SERIES
{
    return 0;
}
@end

@implementation KalturaOTTUserBy
+ (NSString*)USER_NAME
{
    return @"USER_NAME";
}
+ (NSString*)EXTERNAL_ID
{
    return @"EXTERNAL_ID";
}
@end

@implementation KalturaOTTUserOrderBy
+ (NSString*)ID_ASC
{
    return @"ID_ASC";
}
@end

@implementation KalturaParentalRuleOrderBy
+ (NSString*)PARTNER_SORT_VALUE
{
    return @"PARTNER_SORT_VALUE";
}
@end

@implementation KalturaParentalRuleType
+ (NSString*)ALL
{
    return @"ALL";
}
+ (NSString*)MOVIES
{
    return @"MOVIES";
}
+ (NSString*)TV_SERIES
{
    return @"TV_SERIES";
}
@end

@implementation KalturaPartnerConfigurationType
+ (NSString*)DEFAULTPAYMENTGATEWAY
{
    return @"DefaultPaymentGateway";
}
+ (NSString*)ENABLEPAYMENTGATEWAYSELECTION
{
    return @"EnablePaymentGatewaySelection";
}
+ (NSString*)OSSADAPTER
{
    return @"OSSAdapter";
}
@end

@implementation KalturaPaymentMethodProfileOrderBy
+ (NSString*)NONE
{
    return @"NONE";
}
@end

@implementation KalturaPaymentMethodType
+ (NSString*)UNKNOWN
{
    return @"unknown";
}
+ (NSString*)CREDIT_CARD
{
    return @"credit_card";
}
+ (NSString*)SMS
{
    return @"sms";
}
+ (NSString*)PAY_PAL
{
    return @"pay_pal";
}
+ (NSString*)DEBIT_CARD
{
    return @"debit_card";
}
+ (NSString*)IDEAL
{
    return @"ideal";
}
+ (NSString*)INCASO
{
    return @"incaso";
}
+ (NSString*)GIFT
{
    return @"gift";
}
+ (NSString*)VISA
{
    return @"visa";
}
+ (NSString*)MASTER_CARD
{
    return @"master_card";
}
+ (NSString*)IN_APP
{
    return @"in_app";
}
+ (NSString*)M1
{
    return @"m1";
}
+ (NSString*)CHANGE_SUBSCRIPTION
{
    return @"change_subscription";
}
+ (NSString*)OFFLINE
{
    return @"offline";
}
@end

@implementation KalturaPersonalFeedOrderBy
+ (NSString*)RELEVANCY_DESC
{
    return @"RELEVANCY_DESC";
}
+ (NSString*)NAME_ASC
{
    return @"NAME_ASC";
}
+ (NSString*)NAME_DESC
{
    return @"NAME_DESC";
}
+ (NSString*)VIEWS_DESC
{
    return @"VIEWS_DESC";
}
+ (NSString*)RATINGS_DESC
{
    return @"RATINGS_DESC";
}
+ (NSString*)VOTES_DESC
{
    return @"VOTES_DESC";
}
+ (NSString*)START_DATE_DESC
{
    return @"START_DATE_DESC";
}
+ (NSString*)START_DATE_ASC
{
    return @"START_DATE_ASC";
}
@end

@implementation KalturaPinType
+ (NSString*)PURCHASE
{
    return @"purchase";
}
+ (NSString*)PARENTAL
{
    return @"parental";
}
@end

@implementation KalturaPositionOwner
+ (NSString*)HOUSEHOLD
{
    return @"household";
}
+ (NSString*)USER
{
    return @"user";
}
@end

@implementation KalturaProductPriceOrderBy
+ (NSString*)PRODUCT_ID_ASC
{
    return @"PRODUCT_ID_ASC";
}
+ (NSString*)PRODUCT_ID_DESC
{
    return @"PRODUCT_ID_DESC";
}
@end

@implementation KalturaPurchaseSettingsType
+ (NSString*)BLOCK
{
    return @"block";
}
+ (NSString*)ASK
{
    return @"ask";
}
+ (NSString*)ALLOW
{
    return @"allow";
}
@end

@implementation KalturaPurchaseStatus
+ (NSString*)PPV_PURCHASED
{
    return @"ppv_purchased";
}
+ (NSString*)FREE
{
    return @"free";
}
+ (NSString*)FOR_PURCHASE_SUBSCRIPTION_ONLY
{
    return @"for_purchase_subscription_only";
}
+ (NSString*)SUBSCRIPTION_PURCHASED
{
    return @"subscription_purchased";
}
+ (NSString*)FOR_PURCHASE
{
    return @"for_purchase";
}
+ (NSString*)SUBSCRIPTION_PURCHASED_WRONG_CURRENCY
{
    return @"subscription_purchased_wrong_currency";
}
+ (NSString*)PRE_PAID_PURCHASED
{
    return @"pre_paid_purchased";
}
+ (NSString*)GEO_COMMERCE_BLOCKED
{
    return @"geo_commerce_blocked";
}
+ (NSString*)ENTITLED_TO_PREVIEW_MODULE
{
    return @"entitled_to_preview_module";
}
+ (NSString*)FIRST_DEVICE_LIMITATION
{
    return @"first_device_limitation";
}
+ (NSString*)COLLECTION_PURCHASED
{
    return @"collection_purchased";
}
+ (NSString*)USER_SUSPENDED
{
    return @"user_suspended";
}
+ (NSString*)NOT_FOR_PURCHASE
{
    return @"not_for_purchase";
}
@end

@implementation KalturaRecordingOrderBy
+ (NSString*)TITLE_ASC
{
    return @"TITLE_ASC";
}
+ (NSString*)TITLE_DESC
{
    return @"TITLE_DESC";
}
+ (NSString*)START_DATE_ASC
{
    return @"START_DATE_ASC";
}
+ (NSString*)START_DATE_DESC
{
    return @"START_DATE_DESC";
}
@end

@implementation KalturaRecordingStatus
+ (NSString*)SCHEDULED
{
    return @"SCHEDULED";
}
+ (NSString*)RECORDING
{
    return @"RECORDING";
}
+ (NSString*)RECORDED
{
    return @"RECORDED";
}
+ (NSString*)CANCELED
{
    return @"CANCELED";
}
+ (NSString*)FAILED
{
    return @"FAILED";
}
+ (NSString*)DELETED
{
    return @"DELETED";
}
@end

@implementation KalturaRecordingType
+ (NSString*)SINGLE
{
    return @"SINGLE";
}
+ (NSString*)SEASON
{
    return @"SEASON";
}
+ (NSString*)SERIES
{
    return @"SERIES";
}
@end

@implementation KalturaRegionOrderBy
+ (NSString*)CREATE_DATE_ASC
{
    return @"CREATE_DATE_ASC";
}
+ (NSString*)CREATE_DATE_DESC
{
    return @"CREATE_DATE_DESC";
}
@end

@implementation KalturaRuleLevel
+ (NSString*)INVALID
{
    return @"invalid";
}
+ (NSString*)USER
{
    return @"user";
}
+ (NSString*)HOUSEHOLD
{
    return @"household";
}
+ (NSString*)ACCOUNT
{
    return @"account";
}
@end

@implementation KalturaRuleType
+ (NSString*)PARENTAL
{
    return @"parental";
}
+ (NSString*)GEO
{
    return @"geo";
}
+ (NSString*)USER_TYPE
{
    return @"user_type";
}
+ (NSString*)DEVICE
{
    return @"device";
}
@end

@implementation KalturaSeriesRecordingOrderBy
+ (NSString*)START_DATE_ASC
{
    return @"START_DATE_ASC";
}
+ (NSString*)START_DATE_DESC
{
    return @"START_DATE_DESC";
}
+ (NSString*)ID_ASC
{
    return @"ID_ASC";
}
+ (NSString*)ID_DESC
{
    return @"ID_DESC";
}
+ (NSString*)SERIES_ID_ASC
{
    return @"SERIES_ID_ASC";
}
+ (NSString*)SERIES_ID_DESC
{
    return @"SERIES_ID_DESC";
}
@end

@implementation KalturaSessionType
+ (int)USER
{
    return 0;
}
+ (int)ADMIN
{
    return 2;
}
@end

@implementation KalturaSocialNetwork
+ (NSString*)FACEBOOK
{
    return @"facebook";
}
@end

@implementation KalturaStreamType
+ (NSString*)CATCHUP
{
    return @"catchup";
}
+ (NSString*)START_OVER
{
    return @"start_over";
}
+ (NSString*)TRICK_PLAY
{
    return @"trick_play";
}
@end

@implementation KalturaSubscriptionOrderBy
+ (NSString*)START_DATE_ASC
{
    return @"START_DATE_ASC";
}
+ (NSString*)START_DATE_DESC
{
    return @"START_DATE_DESC";
}
@end

@implementation KalturaTopicAutomaticIssueNotification
+ (NSString*)INHERIT
{
    return @"Inherit";
}
+ (NSString*)YES_
{
    return @"Yes";
}
+ (NSString*)NO_
{
    return @"No";
}
@end

@implementation KalturaTopicOrderBy
+ (NSString*)NONE
{
    return @"NONE";
}
@end

@implementation KalturaTransactionAdapterStatus
+ (NSString*)OK
{
    return @"OK";
}
+ (NSString*)PENDING
{
    return @"PENDING";
}
+ (NSString*)FAILED
{
    return @"FAILED";
}
@end

@implementation KalturaTransactionHistoryOrderBy
+ (NSString*)CREATE_DATE_ASC
{
    return @"CREATE_DATE_ASC";
}
+ (NSString*)CREATE_DATE_DESC
{
    return @"CREATE_DATE_DESC";
}
@end

@implementation KalturaTransactionType
+ (NSString*)PPV
{
    return @"ppv";
}
+ (NSString*)SUBSCRIPTION
{
    return @"subscription";
}
+ (NSString*)COLLECTION
{
    return @"collection";
}
@end

@implementation KalturaUserAssetRuleOrderBy
+ (NSString*)NAME_ASC
{
    return @"NAME_ASC";
}
+ (NSString*)NAME_DESC
{
    return @"NAME_DESC";
}
@end

@implementation KalturaUserAssetsListItemType
+ (NSString*)ALL
{
    return @"all";
}
+ (NSString*)MEDIA
{
    return @"media";
}
@end

@implementation KalturaUserAssetsListType
+ (NSString*)ALL
{
    return @"all";
}
+ (NSString*)WATCH
{
    return @"watch";
}
+ (NSString*)PURCHASE
{
    return @"purchase";
}
+ (NSString*)LIBRARY
{
    return @"library";
}
@end

@implementation KalturaUserRoleOrderBy
+ (NSString*)NONE
{
    return @"NONE";
}
@end

@implementation KalturaUserState
+ (NSString*)OK
{
    return @"ok";
}
+ (NSString*)USER_WITH_NO_HOUSEHOLD
{
    return @"user_with_no_household";
}
+ (NSString*)USER_CREATED_WITH_NO_ROLE
{
    return @"user_created_with_no_role";
}
+ (NSString*)USER_NOT_ACTIVATED
{
    return @"user_not_activated";
}
@end

@implementation KalturaWatchStatus
+ (NSString*)PROGRESS
{
    return @"progress";
}
+ (NSString*)DONE
{
    return @"done";
}
+ (NSString*)ALL
{
    return @"all";
}
@end

///////////////////////// classes /////////////////////////
@interface KalturaAnnouncement()
@property (nonatomic,copy) NSString* status;
@property (nonatomic,assign) int id;
@end

@implementation KalturaAnnouncement
@synthesize name = _name;
@synthesize message = _message;
@synthesize enabled = _enabled;
@synthesize startTime = _startTime;
@synthesize timezone = _timezone;
@synthesize status = _status;
@synthesize recipients = _recipients;
@synthesize id = _id;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_enabled = KALTURA_UNDEF_BOOL;
    self->_startTime = KALTURA_UNDEF_INT;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMessage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfStartTime
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTimezone
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRecipients
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (void)setEnabledFromString:(NSString*)aPropVal
{
    self.enabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setStartTimeFromString:(NSString*)aPropVal
{
    self.startTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAnnouncement"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"message" withString:self.message];
    [aParams addIfDefinedKey:@"enabled" withBool:self.enabled];
    [aParams addIfDefinedKey:@"startTime" withInt:self.startTime];
    [aParams addIfDefinedKey:@"timezone" withString:self.timezone];
    [aParams addIfDefinedKey:@"recipients" withString:self.recipients];
}

- (void)dealloc
{
    [self->_name release];
    [self->_message release];
    [self->_timezone release];
    [self->_status release];
    [self->_recipients release];
    [super dealloc];
}

@end

@implementation KalturaFilter
@synthesize orderBy = _orderBy;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_orderBy = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfOrderBy
{
    return KFT_Int;
}

- (void)setOrderByFromString:(NSString*)aPropVal
{
    self.orderBy = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFilter"];
    [aParams addIfDefinedKey:@"orderBy" withInt:self.orderBy];
}

@end

@implementation KalturaAnnouncementFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAnnouncementFilter"];
}

@end

@implementation KalturaFilterPager
@synthesize pageSize = _pageSize;
@synthesize pageIndex = _pageIndex;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_pageSize = KALTURA_UNDEF_INT;
    self->_pageIndex = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPageSize
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPageIndex
{
    return KFT_Int;
}

- (void)setPageSizeFromString:(NSString*)aPropVal
{
    self.pageSize = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPageIndexFromString:(NSString*)aPropVal
{
    self.pageIndex = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFilterPager"];
    [aParams addIfDefinedKey:@"pageSize" withInt:self.pageSize];
    [aParams addIfDefinedKey:@"pageIndex" withInt:self.pageIndex];
}

@end

@implementation KalturaListResponse
@synthesize totalCount = _totalCount;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_totalCount = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfTotalCount
{
    return KFT_Int;
}

- (void)setTotalCountFromString:(NSString*)aPropVal
{
    self.totalCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaListResponse"];
    [aParams addIfDefinedKey:@"totalCount" withInt:self.totalCount];
}

@end

@implementation KalturaRegionalChannel
@synthesize linearChannelId = _linearChannelId;
@synthesize channelNumber = _channelNumber;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_linearChannelId = KALTURA_UNDEF_INT;
    self->_channelNumber = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfLinearChannelId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfChannelNumber
{
    return KFT_Int;
}

- (void)setLinearChannelIdFromString:(NSString*)aPropVal
{
    self.linearChannelId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setChannelNumberFromString:(NSString*)aPropVal
{
    self.channelNumber = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRegionalChannel"];
    [aParams addIfDefinedKey:@"linearChannelId" withInt:self.linearChannelId];
    [aParams addIfDefinedKey:@"channelNumber" withInt:self.channelNumber];
}

@end

@implementation KalturaRegion
@synthesize id = _id;
@synthesize name = _name;
@synthesize externalId = _externalId;
@synthesize isDefault = _isDefault;
@synthesize linearChannels = _linearChannels;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_isDefault = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExternalId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsDefault
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfLinearChannels
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfLinearChannels
{
    return @"KalturaRegionalChannel";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsDefaultFromString:(NSString*)aPropVal
{
    self.isDefault = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRegion"];
    [aParams addIfDefinedKey:@"id" withInt:self.id];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"externalId" withString:self.externalId];
    [aParams addIfDefinedKey:@"isDefault" withBool:self.isDefault];
    [aParams addIfDefinedKey:@"linearChannels" withArray:self.linearChannels];
}

- (void)dealloc
{
    [self->_name release];
    [self->_externalId release];
    [self->_linearChannels release];
    [super dealloc];
}

@end

@implementation KalturaRegionListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaRegion";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRegionListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaUserAssetRule()
@property (nonatomic,assign) int id;
@end

@implementation KalturaUserAssetRule
@synthesize id = _id;
@synthesize ruleType = _ruleType;
@synthesize name = _name;
@synthesize description = _description;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRuleType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserAssetRule"];
    [aParams addIfDefinedKey:@"ruleType" withString:self.ruleType];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"description" withString:self.description];
}

- (void)dealloc
{
    [self->_ruleType release];
    [self->_name release];
    [self->_description release];
    [super dealloc];
}

@end

@implementation KalturaUserAssetRuleListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaUserAssetRule";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserAssetRuleListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaValue
@synthesize description = _description;

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaValue"];
    [aParams addIfDefinedKey:@"description" withString:self.description];
}

- (void)dealloc
{
    [self->_description release];
    [super dealloc];
}

@end

@implementation KalturaLongValue
@synthesize value = _value;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_value = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_Int;
}

- (void)setValueFromString:(NSString*)aPropVal
{
    self.value = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLongValue"];
    [aParams addIfDefinedKey:@"value" withInt:self.value];
}

@end

@implementation KalturaDoubleValue
@synthesize value = _value;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_value = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_Float;
}

- (void)setValueFromString:(NSString*)aPropVal
{
    self.value = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDoubleValue"];
    [aParams addIfDefinedKey:@"value" withFloat:self.value];
}

@end

@implementation KalturaBooleanValue
@synthesize value = _value;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_value = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_Bool;
}

- (void)setValueFromString:(NSString*)aPropVal
{
    self.value = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBooleanValue"];
    [aParams addIfDefinedKey:@"value" withBool:self.value];
}

@end

@implementation KalturaIntegerValue
@synthesize value = _value;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_value = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_Int;
}

- (void)setValueFromString:(NSString*)aPropVal
{
    self.value = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaIntegerValue"];
    [aParams addIfDefinedKey:@"value" withInt:self.value];
}

@end

@implementation KalturaStringValue
@synthesize value = _value;

- (KalturaFieldType)getTypeOfValue
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaStringValue"];
    [aParams addIfDefinedKey:@"value" withString:self.value];
}

- (void)dealloc
{
    [self->_value release];
    [super dealloc];
}

@end

@interface KalturaCDNAdapterProfile()
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString* sharedSecret;
@end

@implementation KalturaCDNAdapterProfile
@synthesize id = _id;
@synthesize name = _name;
@synthesize isActive = _isActive;
@synthesize adapterUrl = _adapterUrl;
@synthesize baseUrl = _baseUrl;
@synthesize settings = _settings;
@synthesize systemName = _systemName;
@synthesize sharedSecret = _sharedSecret;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_isActive = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAdapterUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBaseUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSettings
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfSettings
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfSystemName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSharedSecret
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCDNAdapterProfile"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
    [aParams addIfDefinedKey:@"adapterUrl" withString:self.adapterUrl];
    [aParams addIfDefinedKey:@"baseUrl" withString:self.baseUrl];
    [aParams addIfDefinedKey:@"settings" withDictionary:self.settings];
    [aParams addIfDefinedKey:@"systemName" withString:self.systemName];
}

- (void)dealloc
{
    [self->_name release];
    [self->_adapterUrl release];
    [self->_baseUrl release];
    [self->_settings release];
    [self->_systemName release];
    [self->_sharedSecret release];
    [super dealloc];
}

@end

@implementation KalturaCDNAdapterProfileListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaCDNAdapterProfile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCDNAdapterProfileListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaSlimAsset
@synthesize id = _id;
@synthesize type = _type;

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSlimAsset"];
    [aParams addIfDefinedKey:@"id" withString:self.id];
    [aParams addIfDefinedKey:@"type" withString:self.type];
}

- (void)dealloc
{
    [self->_id release];
    [self->_type release];
    [super dealloc];
}

@end

@interface KalturaBaseOTTUser()
@property (nonatomic,copy) NSString* id;
@end

@implementation KalturaBaseOTTUser
@synthesize id = _id;
@synthesize username = _username;
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFirstName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLastName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBaseOTTUser"];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"firstName" withString:self.firstName];
    [aParams addIfDefinedKey:@"lastName" withString:self.lastName];
}

- (void)dealloc
{
    [self->_id release];
    [self->_username release];
    [self->_firstName release];
    [self->_lastName release];
    [super dealloc];
}

@end

@interface KalturaCountry()
@property (nonatomic,assign) int id;
@end

@implementation KalturaCountry
@synthesize id = _id;
@synthesize name = _name;
@synthesize code = _code;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCode
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCountry"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"code" withString:self.code];
}

- (void)dealloc
{
    [self->_name release];
    [self->_code release];
    [super dealloc];
}

@end

@interface KalturaOTTUserType()
@property (nonatomic,assign) int id;
@end

@implementation KalturaOTTUserType
@synthesize id = _id;
@synthesize description = _description;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOTTUserType"];
    [aParams addIfDefinedKey:@"description" withString:self.description];
}

- (void)dealloc
{
    [self->_description release];
    [super dealloc];
}

@end

@interface KalturaOTTUser()
@property (nonatomic,assign) int householdId;
@property (nonatomic,assign) KALTURA_BOOL isHouseholdMaster;
@property (nonatomic,copy) NSString* suspentionState;
@property (nonatomic,copy) NSString* userState;
@end

@implementation KalturaOTTUser
@synthesize householdId = _householdId;
@synthesize email = _email;
@synthesize address = _address;
@synthesize city = _city;
@synthesize country = _country;
@synthesize zip = _zip;
@synthesize phone = _phone;
@synthesize affiliateCode = _affiliateCode;
@synthesize externalId = _externalId;
@synthesize userType = _userType;
@synthesize dynamicData = _dynamicData;
@synthesize isHouseholdMaster = _isHouseholdMaster;
@synthesize suspentionState = _suspentionState;
@synthesize userState = _userState;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_householdId = KALTURA_UNDEF_INT;
    self->_isHouseholdMaster = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfHouseholdId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEmail
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAddress
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCity
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCountry
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfCountry
{
    return @"KalturaCountry";
}

- (KalturaFieldType)getTypeOfZip
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPhone
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAffiliateCode
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExternalId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserType
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfUserType
{
    return @"KalturaOTTUserType";
}

- (KalturaFieldType)getTypeOfDynamicData
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfDynamicData
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfIsHouseholdMaster
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfSuspentionState
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserState
{
    return KFT_String;
}

- (void)setHouseholdIdFromString:(NSString*)aPropVal
{
    self.householdId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsHouseholdMasterFromString:(NSString*)aPropVal
{
    self.isHouseholdMaster = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOTTUser"];
    [aParams addIfDefinedKey:@"email" withString:self.email];
    [aParams addIfDefinedKey:@"address" withString:self.address];
    [aParams addIfDefinedKey:@"city" withString:self.city];
    [aParams addIfDefinedKey:@"country" withObject:self.country];
    [aParams addIfDefinedKey:@"zip" withString:self.zip];
    [aParams addIfDefinedKey:@"phone" withString:self.phone];
    [aParams addIfDefinedKey:@"affiliateCode" withString:self.affiliateCode];
    [aParams addIfDefinedKey:@"externalId" withString:self.externalId];
    [aParams addIfDefinedKey:@"userType" withObject:self.userType];
    [aParams addIfDefinedKey:@"dynamicData" withDictionary:self.dynamicData];
}

- (void)dealloc
{
    [self->_email release];
    [self->_address release];
    [self->_city release];
    [self->_country release];
    [self->_zip release];
    [self->_phone release];
    [self->_affiliateCode release];
    [self->_externalId release];
    [self->_userType release];
    [self->_dynamicData release];
    [self->_suspentionState release];
    [self->_userState release];
    [super dealloc];
}

@end

@implementation KalturaBookmarkPlayerData
@synthesize action = _action;
@synthesize averageBitrate = _averageBitrate;
@synthesize totalBitrate = _totalBitrate;
@synthesize currentBitrate = _currentBitrate;
@synthesize fileId = _fileId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_averageBitrate = KALTURA_UNDEF_INT;
    self->_totalBitrate = KALTURA_UNDEF_INT;
    self->_currentBitrate = KALTURA_UNDEF_INT;
    self->_fileId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAction
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAverageBitrate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTotalBitrate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCurrentBitrate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileId
{
    return KFT_Int;
}

- (void)setAverageBitrateFromString:(NSString*)aPropVal
{
    self.averageBitrate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTotalBitrateFromString:(NSString*)aPropVal
{
    self.totalBitrate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCurrentBitrateFromString:(NSString*)aPropVal
{
    self.currentBitrate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFileIdFromString:(NSString*)aPropVal
{
    self.fileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBookmarkPlayerData"];
    [aParams addIfDefinedKey:@"action" withString:self.action];
    [aParams addIfDefinedKey:@"averageBitrate" withInt:self.averageBitrate];
    [aParams addIfDefinedKey:@"totalBitrate" withInt:self.totalBitrate];
    [aParams addIfDefinedKey:@"currentBitrate" withInt:self.currentBitrate];
    [aParams addIfDefinedKey:@"fileId" withInt:self.fileId];
}

- (void)dealloc
{
    [self->_action release];
    [super dealloc];
}

@end

@interface KalturaBookmark()
@property (nonatomic,copy) NSString* userId;
@end

@implementation KalturaBookmark
@synthesize userId = _userId;
@synthesize position = _position;
@synthesize positionOwner = _positionOwner;
@synthesize finishedWatching = _finishedWatching;
@synthesize playerData = _playerData;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_position = KALTURA_UNDEF_INT;
    self->_finishedWatching = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPosition
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPositionOwner
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFinishedWatching
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPlayerData
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPlayerData
{
    return @"KalturaBookmarkPlayerData";
}

- (void)setPositionFromString:(NSString*)aPropVal
{
    self.position = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFinishedWatchingFromString:(NSString*)aPropVal
{
    self.finishedWatching = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBookmark"];
    [aParams addIfDefinedKey:@"position" withInt:self.position];
    [aParams addIfDefinedKey:@"positionOwner" withString:self.positionOwner];
    [aParams addIfDefinedKey:@"finishedWatching" withBool:self.finishedWatching];
    [aParams addIfDefinedKey:@"playerData" withObject:self.playerData];
}

- (void)dealloc
{
    [self->_userId release];
    [self->_positionOwner release];
    [self->_playerData release];
    [super dealloc];
}

@end

@implementation KalturaBookmarkListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaBookmark";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBookmarkListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaStringValueArray
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaStringValue";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaStringValueArray"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaMediaImage()
@property (nonatomic,copy) NSString* id;
@end

@implementation KalturaMediaImage
@synthesize ratio = _ratio;
@synthesize width = _width;
@synthesize height = _height;
@synthesize url = _url;
@synthesize version = _version;
@synthesize id = _id;
@synthesize isDefault = _isDefault;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_width = KALTURA_UNDEF_INT;
    self->_height = KALTURA_UNDEF_INT;
    self->_version = KALTURA_UNDEF_INT;
    self->_isDefault = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfRatio
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWidth
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfHeight
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsDefault
{
    return KFT_Bool;
}

- (void)setWidthFromString:(NSString*)aPropVal
{
    self.width = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setHeightFromString:(NSString*)aPropVal
{
    self.height = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setVersionFromString:(NSString*)aPropVal
{
    self.version = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsDefaultFromString:(NSString*)aPropVal
{
    self.isDefault = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMediaImage"];
    [aParams addIfDefinedKey:@"ratio" withString:self.ratio];
    [aParams addIfDefinedKey:@"width" withInt:self.width];
    [aParams addIfDefinedKey:@"height" withInt:self.height];
    [aParams addIfDefinedKey:@"url" withString:self.url];
    [aParams addIfDefinedKey:@"version" withInt:self.version];
    [aParams addIfDefinedKey:@"isDefault" withBool:self.isDefault];
}

- (void)dealloc
{
    [self->_ratio release];
    [self->_url release];
    [self->_id release];
    [super dealloc];
}

@end

@interface KalturaMediaFile()
@property (nonatomic,assign) int id;
@end

@implementation KalturaMediaFile
@synthesize assetId = _assetId;
@synthesize id = _id;
@synthesize type = _type;
@synthesize url = _url;
@synthesize duration = _duration;
@synthesize externalId = _externalId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetId = KALTURA_UNDEF_INT;
    self->_id = KALTURA_UNDEF_INT;
    self->_duration = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDuration
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfExternalId
{
    return KFT_String;
}

- (void)setAssetIdFromString:(NSString*)aPropVal
{
    self.assetId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDurationFromString:(NSString*)aPropVal
{
    self.duration = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMediaFile"];
    [aParams addIfDefinedKey:@"assetId" withInt:self.assetId];
    [aParams addIfDefinedKey:@"type" withString:self.type];
    [aParams addIfDefinedKey:@"url" withString:self.url];
    [aParams addIfDefinedKey:@"duration" withInt:self.duration];
    [aParams addIfDefinedKey:@"externalId" withString:self.externalId];
}

- (void)dealloc
{
    [self->_type release];
    [self->_url release];
    [self->_externalId release];
    [super dealloc];
}

@end

@implementation KalturaBuzzScore
@synthesize normalizedAvgScore = _normalizedAvgScore;
@synthesize updateDate = _updateDate;
@synthesize avgScore = _avgScore;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_normalizedAvgScore = KALTURA_UNDEF_FLOAT;
    self->_updateDate = KALTURA_UNDEF_INT;
    self->_avgScore = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfNormalizedAvgScore
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfUpdateDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAvgScore
{
    return KFT_Float;
}

- (void)setNormalizedAvgScoreFromString:(NSString*)aPropVal
{
    self.normalizedAvgScore = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setUpdateDateFromString:(NSString*)aPropVal
{
    self.updateDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAvgScoreFromString:(NSString*)aPropVal
{
    self.avgScore = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBuzzScore"];
    [aParams addIfDefinedKey:@"normalizedAvgScore" withFloat:self.normalizedAvgScore];
    [aParams addIfDefinedKey:@"updateDate" withInt:self.updateDate];
    [aParams addIfDefinedKey:@"avgScore" withFloat:self.avgScore];
}

@end

@implementation KalturaAssetStatistics
@synthesize assetId = _assetId;
@synthesize likes = _likes;
@synthesize views = _views;
@synthesize ratingCount = _ratingCount;
@synthesize rating = _rating;
@synthesize buzzScore = _buzzScore;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetId = KALTURA_UNDEF_INT;
    self->_likes = KALTURA_UNDEF_INT;
    self->_views = KALTURA_UNDEF_INT;
    self->_ratingCount = KALTURA_UNDEF_INT;
    self->_rating = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLikes
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfViews
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRatingCount
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRating
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfBuzzScore
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfBuzzScore
{
    return @"KalturaBuzzScore";
}

- (void)setAssetIdFromString:(NSString*)aPropVal
{
    self.assetId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLikesFromString:(NSString*)aPropVal
{
    self.likes = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setViewsFromString:(NSString*)aPropVal
{
    self.views = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRatingCountFromString:(NSString*)aPropVal
{
    self.ratingCount = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRatingFromString:(NSString*)aPropVal
{
    self.rating = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetStatistics"];
    [aParams addIfDefinedKey:@"assetId" withInt:self.assetId];
    [aParams addIfDefinedKey:@"likes" withInt:self.likes];
    [aParams addIfDefinedKey:@"views" withInt:self.views];
    [aParams addIfDefinedKey:@"ratingCount" withInt:self.ratingCount];
    [aParams addIfDefinedKey:@"rating" withFloat:self.rating];
    [aParams addIfDefinedKey:@"buzzScore" withObject:self.buzzScore];
}

- (void)dealloc
{
    [self->_buzzScore release];
    [super dealloc];
}

@end

@interface KalturaBaseAssetInfo()
@property (nonatomic,assign) int id;
@end

@implementation KalturaBaseAssetInfo
@synthesize id = _id;
@synthesize type = _type;
@synthesize name = _name;
@synthesize description = _description;
@synthesize images = _images;
@synthesize mediaFiles = _mediaFiles;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_type = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfImages
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfImages
{
    return @"KalturaMediaImage";
}

- (KalturaFieldType)getTypeOfMediaFiles
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMediaFiles
{
    return @"KalturaMediaFile";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTypeFromString:(NSString*)aPropVal
{
    self.type = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBaseAssetInfo"];
    [aParams addIfDefinedKey:@"type" withInt:self.type];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"images" withArray:self.images];
    [aParams addIfDefinedKey:@"mediaFiles" withArray:self.mediaFiles];
}

- (void)dealloc
{
    [self->_name release];
    [self->_description release];
    [self->_images release];
    [self->_mediaFiles release];
    [super dealloc];
}

@end

@implementation KalturaAsset
@synthesize metas = _metas;
@synthesize tags = _tags;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize enableCdvr = _enableCdvr;
@synthesize enableCatchUp = _enableCatchUp;
@synthesize enableStartOver = _enableStartOver;
@synthesize enableTrickPlay = _enableTrickPlay;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_enableCdvr = KALTURA_UNDEF_BOOL;
    self->_enableCatchUp = KALTURA_UNDEF_BOOL;
    self->_enableStartOver = KALTURA_UNDEF_BOOL;
    self->_enableTrickPlay = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfMetas
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfMetas
{
    return @"KalturaValue";
}

- (KalturaFieldType)getTypeOfTags
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfTags
{
    return @"KalturaStringValueArray";
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableCdvr
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfEnableCatchUp
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfEnableStartOver
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfEnableTrickPlay
{
    return KFT_Bool;
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableCdvrFromString:(NSString*)aPropVal
{
    self.enableCdvr = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setEnableCatchUpFromString:(NSString*)aPropVal
{
    self.enableCatchUp = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setEnableStartOverFromString:(NSString*)aPropVal
{
    self.enableStartOver = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setEnableTrickPlayFromString:(NSString*)aPropVal
{
    self.enableTrickPlay = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAsset"];
    [aParams addIfDefinedKey:@"metas" withDictionary:self.metas];
    [aParams addIfDefinedKey:@"tags" withDictionary:self.tags];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
    [aParams addIfDefinedKey:@"endDate" withInt:self.endDate];
    [aParams addIfDefinedKey:@"enableCdvr" withBool:self.enableCdvr];
    [aParams addIfDefinedKey:@"enableCatchUp" withBool:self.enableCatchUp];
    [aParams addIfDefinedKey:@"enableStartOver" withBool:self.enableStartOver];
    [aParams addIfDefinedKey:@"enableTrickPlay" withBool:self.enableTrickPlay];
}

- (void)dealloc
{
    [self->_metas release];
    [self->_tags release];
    [super dealloc];
}

@end

@implementation KalturaAssetListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaAsset";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaProgramAsset
@synthesize epgChannelId = _epgChannelId;
@synthesize epgId = _epgId;
@synthesize relatedMediaId = _relatedMediaId;
@synthesize crid = _crid;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_epgChannelId = KALTURA_UNDEF_INT;
    self->_relatedMediaId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfEpgChannelId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEpgId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRelatedMediaId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCrid
{
    return KFT_String;
}

- (void)setEpgChannelIdFromString:(NSString*)aPropVal
{
    self.epgChannelId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRelatedMediaIdFromString:(NSString*)aPropVal
{
    self.relatedMediaId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaProgramAsset"];
    [aParams addIfDefinedKey:@"epgChannelId" withInt:self.epgChannelId];
    [aParams addIfDefinedKey:@"epgId" withString:self.epgId];
    [aParams addIfDefinedKey:@"relatedMediaId" withInt:self.relatedMediaId];
    [aParams addIfDefinedKey:@"crid" withString:self.crid];
}

- (void)dealloc
{
    [self->_epgId release];
    [self->_crid release];
    [super dealloc];
}

@end

@interface KalturaMediaAsset()
@property (nonatomic,assign) KALTURA_BOOL enableRecordingPlaybackNonEntitledChannel;
@property (nonatomic,assign) KALTURA_BOOL enableRecordingPlaybackNonExistingChannel;
@end

@implementation KalturaMediaAsset
@synthesize systemStartDate = _systemStartDate;
@synthesize systemFinalDate = _systemFinalDate;
@synthesize externalIds = _externalIds;
@synthesize catchUpBuffer = _catchUpBuffer;
@synthesize trickPlayBuffer = _trickPlayBuffer;
@synthesize enableRecordingPlaybackNonEntitledChannel = _enableRecordingPlaybackNonEntitledChannel;
@synthesize enableRecordingPlaybackNonExistingChannel = _enableRecordingPlaybackNonExistingChannel;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_systemStartDate = KALTURA_UNDEF_INT;
    self->_systemFinalDate = KALTURA_UNDEF_INT;
    self->_catchUpBuffer = KALTURA_UNDEF_INT;
    self->_trickPlayBuffer = KALTURA_UNDEF_INT;
    self->_enableRecordingPlaybackNonEntitledChannel = KALTURA_UNDEF_BOOL;
    self->_enableRecordingPlaybackNonExistingChannel = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfSystemStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSystemFinalDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfExternalIds
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCatchUpBuffer
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTrickPlayBuffer
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnableRecordingPlaybackNonEntitledChannel
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfEnableRecordingPlaybackNonExistingChannel
{
    return KFT_Bool;
}

- (void)setSystemStartDateFromString:(NSString*)aPropVal
{
    self.systemStartDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSystemFinalDateFromString:(NSString*)aPropVal
{
    self.systemFinalDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCatchUpBufferFromString:(NSString*)aPropVal
{
    self.catchUpBuffer = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTrickPlayBufferFromString:(NSString*)aPropVal
{
    self.trickPlayBuffer = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEnableRecordingPlaybackNonEntitledChannelFromString:(NSString*)aPropVal
{
    self.enableRecordingPlaybackNonEntitledChannel = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setEnableRecordingPlaybackNonExistingChannelFromString:(NSString*)aPropVal
{
    self.enableRecordingPlaybackNonExistingChannel = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMediaAsset"];
    [aParams addIfDefinedKey:@"systemStartDate" withInt:self.systemStartDate];
    [aParams addIfDefinedKey:@"systemFinalDate" withInt:self.systemFinalDate];
    [aParams addIfDefinedKey:@"externalIds" withString:self.externalIds];
    [aParams addIfDefinedKey:@"catchUpBuffer" withInt:self.catchUpBuffer];
    [aParams addIfDefinedKey:@"trickPlayBuffer" withInt:self.trickPlayBuffer];
}

- (void)dealloc
{
    [self->_externalIds release];
    [super dealloc];
}

@end

@implementation KalturaAssetComment
@synthesize id = _id;
@synthesize assetId = _assetId;
@synthesize assetType = _assetType;
@synthesize header = _header;
@synthesize subHeader = _subHeader;
@synthesize text = _text;
@synthesize createDate = _createDate;
@synthesize writer = _writer;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_createDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfHeader
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSubHeader
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfText
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreateDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfWriter
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreateDateFromString:(NSString*)aPropVal
{
    self.createDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetComment"];
    [aParams addIfDefinedKey:@"id" withInt:self.id];
    [aParams addIfDefinedKey:@"assetId" withString:self.assetId];
    [aParams addIfDefinedKey:@"assetType" withString:self.assetType];
    [aParams addIfDefinedKey:@"header" withString:self.header];
    [aParams addIfDefinedKey:@"subHeader" withString:self.subHeader];
    [aParams addIfDefinedKey:@"text" withString:self.text];
    [aParams addIfDefinedKey:@"createDate" withInt:self.createDate];
    [aParams addIfDefinedKey:@"writer" withString:self.writer];
}

- (void)dealloc
{
    [self->_assetId release];
    [self->_assetType release];
    [self->_header release];
    [self->_subHeader release];
    [self->_text release];
    [self->_writer release];
    [super dealloc];
}

@end

@implementation KalturaAssetCommentListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaAssetComment";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetCommentListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaSeriesRecording()
@property (nonatomic,assign) int id;
@property (nonatomic,assign) int createDate;
@property (nonatomic,assign) int updateDate;
@property (nonatomic,retain) NSMutableArray* excludedSeasons;
@end

@implementation KalturaSeriesRecording
@synthesize id = _id;
@synthesize epgId = _epgId;
@synthesize channelId = _channelId;
@synthesize seriesId = _seriesId;
@synthesize seasonNumber = _seasonNumber;
@synthesize type = _type;
@synthesize createDate = _createDate;
@synthesize updateDate = _updateDate;
@synthesize excludedSeasons = _excludedSeasons;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_epgId = KALTURA_UNDEF_INT;
    self->_channelId = KALTURA_UNDEF_INT;
    self->_seasonNumber = KALTURA_UNDEF_INT;
    self->_createDate = KALTURA_UNDEF_INT;
    self->_updateDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEpgId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfChannelId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSeriesId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSeasonNumber
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreateDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdateDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfExcludedSeasons
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfExcludedSeasons
{
    return @"KalturaIntegerValue";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEpgIdFromString:(NSString*)aPropVal
{
    self.epgId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setChannelIdFromString:(NSString*)aPropVal
{
    self.channelId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSeasonNumberFromString:(NSString*)aPropVal
{
    self.seasonNumber = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreateDateFromString:(NSString*)aPropVal
{
    self.createDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdateDateFromString:(NSString*)aPropVal
{
    self.updateDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSeriesRecording"];
    [aParams addIfDefinedKey:@"epgId" withInt:self.epgId];
    [aParams addIfDefinedKey:@"channelId" withInt:self.channelId];
    [aParams addIfDefinedKey:@"seriesId" withString:self.seriesId];
    [aParams addIfDefinedKey:@"seasonNumber" withInt:self.seasonNumber];
    [aParams addIfDefinedKey:@"type" withString:self.type];
}

- (void)dealloc
{
    [self->_seriesId release];
    [self->_type release];
    [self->_excludedSeasons release];
    [super dealloc];
}

@end

@implementation KalturaSeriesRecordingListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaSeriesRecording";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSeriesRecordingListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaPremiumService()
@property (nonatomic,assign) int id;
@end

@implementation KalturaPremiumService
@synthesize id = _id;
@synthesize name = _name;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPremiumService"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@implementation KalturaHouseholdPremiumService
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdPremiumService"];
}

@end

@implementation KalturaHouseholdPremiumServiceListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaHouseholdPremiumService";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdPremiumServiceListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaCDVRAdapterProfile()
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString* sharedSecret;
@end

@implementation KalturaCDVRAdapterProfile
@synthesize id = _id;
@synthesize name = _name;
@synthesize isActive = _isActive;
@synthesize adapterUrl = _adapterUrl;
@synthesize settings = _settings;
@synthesize externalIdentifier = _externalIdentifier;
@synthesize sharedSecret = _sharedSecret;
@synthesize dynamicLinksSupport = _dynamicLinksSupport;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_isActive = KALTURA_UNDEF_BOOL;
    self->_dynamicLinksSupport = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAdapterUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSettings
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfSettings
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfExternalIdentifier
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSharedSecret
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDynamicLinksSupport
{
    return KFT_Bool;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setDynamicLinksSupportFromString:(NSString*)aPropVal
{
    self.dynamicLinksSupport = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCDVRAdapterProfile"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
    [aParams addIfDefinedKey:@"adapterUrl" withString:self.adapterUrl];
    [aParams addIfDefinedKey:@"settings" withDictionary:self.settings];
    [aParams addIfDefinedKey:@"externalIdentifier" withString:self.externalIdentifier];
    [aParams addIfDefinedKey:@"dynamicLinksSupport" withBool:self.dynamicLinksSupport];
}

- (void)dealloc
{
    [self->_name release];
    [self->_adapterUrl release];
    [self->_settings release];
    [self->_externalIdentifier release];
    [self->_sharedSecret release];
    [super dealloc];
}

@end

@implementation KalturaCDVRAdapterProfileListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaCDVRAdapterProfile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCDVRAdapterProfileListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaExportTask()
@property (nonatomic,assign) int id;
@end

@implementation KalturaExportTask
@synthesize id = _id;
@synthesize alias = _alias;
@synthesize name = _name;
@synthesize dataType = _dataType;
@synthesize filter = _filter;
@synthesize exportType = _exportType;
@synthesize frequency = _frequency;
@synthesize notificationUrl = _notificationUrl;
@synthesize vodTypes = _vodTypes;
@synthesize isActive = _isActive;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_frequency = KALTURA_UNDEF_INT;
    self->_isActive = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAlias
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDataType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilter
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExportType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFrequency
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfNotificationUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfVodTypes
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfVodTypes
{
    return @"KalturaIntegerValue";
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFrequencyFromString:(NSString*)aPropVal
{
    self.frequency = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaExportTask"];
    [aParams addIfDefinedKey:@"alias" withString:self.alias];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"dataType" withString:self.dataType];
    [aParams addIfDefinedKey:@"filter" withString:self.filter];
    [aParams addIfDefinedKey:@"exportType" withString:self.exportType];
    [aParams addIfDefinedKey:@"frequency" withInt:self.frequency];
    [aParams addIfDefinedKey:@"notificationUrl" withString:self.notificationUrl];
    [aParams addIfDefinedKey:@"vodTypes" withArray:self.vodTypes];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
}

- (void)dealloc
{
    [self->_alias release];
    [self->_name release];
    [self->_dataType release];
    [self->_filter release];
    [self->_exportType release];
    [self->_notificationUrl release];
    [self->_vodTypes release];
    [super dealloc];
}

@end

@implementation KalturaExportTaskListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaExportTask";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaExportTaskListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaChannelEnrichmentHolder
@synthesize type = _type;

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaChannelEnrichmentHolder"];
    [aParams addIfDefinedKey:@"type" withString:self.type];
}

- (void)dealloc
{
    [self->_type release];
    [super dealloc];
}

@end

@interface KalturaExternalChannelProfile()
@property (nonatomic,assign) int id;
@end

@implementation KalturaExternalChannelProfile
@synthesize id = _id;
@synthesize name = _name;
@synthesize isActive = _isActive;
@synthesize externalIdentifier = _externalIdentifier;
@synthesize filterExpression = _filterExpression;
@synthesize recommendationEngineId = _recommendationEngineId;
@synthesize enrichments = _enrichments;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_isActive = KALTURA_UNDEF_BOOL;
    self->_recommendationEngineId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfExternalIdentifier
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilterExpression
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRecommendationEngineId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEnrichments
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfEnrichments
{
    return @"KalturaChannelEnrichmentHolder";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setRecommendationEngineIdFromString:(NSString*)aPropVal
{
    self.recommendationEngineId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaExternalChannelProfile"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
    [aParams addIfDefinedKey:@"externalIdentifier" withString:self.externalIdentifier];
    [aParams addIfDefinedKey:@"filterExpression" withString:self.filterExpression];
    [aParams addIfDefinedKey:@"recommendationEngineId" withInt:self.recommendationEngineId];
    [aParams addIfDefinedKey:@"enrichments" withArray:self.enrichments];
}

- (void)dealloc
{
    [self->_name release];
    [self->_externalIdentifier release];
    [self->_filterExpression release];
    [self->_enrichments release];
    [super dealloc];
}

@end

@implementation KalturaExternalChannelProfileListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaExternalChannelProfile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaExternalChannelProfileListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaRecommendationProfile()
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString* sharedSecret;
@end

@implementation KalturaRecommendationProfile
@synthesize id = _id;
@synthesize name = _name;
@synthesize isActive = _isActive;
@synthesize adapterUrl = _adapterUrl;
@synthesize recommendationEngineSettings = _recommendationEngineSettings;
@synthesize externalIdentifier = _externalIdentifier;
@synthesize sharedSecret = _sharedSecret;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_isActive = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAdapterUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRecommendationEngineSettings
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfRecommendationEngineSettings
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfExternalIdentifier
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSharedSecret
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRecommendationProfile"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
    [aParams addIfDefinedKey:@"adapterUrl" withString:self.adapterUrl];
    [aParams addIfDefinedKey:@"recommendationEngineSettings" withDictionary:self.recommendationEngineSettings];
    [aParams addIfDefinedKey:@"externalIdentifier" withString:self.externalIdentifier];
}

- (void)dealloc
{
    [self->_name release];
    [self->_adapterUrl release];
    [self->_recommendationEngineSettings release];
    [self->_externalIdentifier release];
    [self->_sharedSecret release];
    [super dealloc];
}

@end

@implementation KalturaRecommendationProfileListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaRecommendationProfile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRecommendationProfileListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaRegistrySettings
@synthesize key = _key;
@synthesize value = _value;

- (KalturaFieldType)getTypeOfKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRegistrySettings"];
    [aParams addIfDefinedKey:@"key" withString:self.key];
    [aParams addIfDefinedKey:@"value" withString:self.value];
}

- (void)dealloc
{
    [self->_key release];
    [self->_value release];
    [super dealloc];
}

@end

@implementation KalturaRegistrySettingsListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaRegistrySettings";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRegistrySettingsListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaHouseholdPaymentMethod()
@property (nonatomic,assign) int id;
@end

@implementation KalturaHouseholdPaymentMethod
@synthesize id = _id;
@synthesize paymentGatewayId = _paymentGatewayId;
@synthesize name = _name;
@synthesize allowMultiInstance = _allowMultiInstance;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_paymentGatewayId = KALTURA_UNDEF_INT;
    self->_allowMultiInstance = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPaymentGatewayId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowMultiInstance
{
    return KFT_Bool;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPaymentGatewayIdFromString:(NSString*)aPropVal
{
    self.paymentGatewayId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAllowMultiInstanceFromString:(NSString*)aPropVal
{
    self.allowMultiInstance = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdPaymentMethod"];
    [aParams addIfDefinedKey:@"paymentGatewayId" withInt:self.paymentGatewayId];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"allowMultiInstance" withBool:self.allowMultiInstance];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@implementation KalturaHouseholdPaymentMethodListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaHouseholdPaymentMethod";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdPaymentMethodListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaPaymentMethodProfile()
@property (nonatomic,assign) int id;
@end

@implementation KalturaPaymentMethodProfile
@synthesize id = _id;
@synthesize paymentGatewayId = _paymentGatewayId;
@synthesize name = _name;
@synthesize allowMultiInstance = _allowMultiInstance;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_paymentGatewayId = KALTURA_UNDEF_INT;
    self->_allowMultiInstance = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPaymentGatewayId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAllowMultiInstance
{
    return KFT_Bool;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPaymentGatewayIdFromString:(NSString*)aPropVal
{
    self.paymentGatewayId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAllowMultiInstanceFromString:(NSString*)aPropVal
{
    self.allowMultiInstance = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPaymentMethodProfile"];
    [aParams addIfDefinedKey:@"paymentGatewayId" withInt:self.paymentGatewayId];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"allowMultiInstance" withBool:self.allowMultiInstance];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@implementation KalturaPaymentMethodProfileListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaPaymentMethodProfile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPaymentMethodProfileListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaPrice
@synthesize amount = _amount;
@synthesize currency = _currency;
@synthesize currencySign = _currencySign;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_amount = KALTURA_UNDEF_FLOAT;
    return self;
}

- (KalturaFieldType)getTypeOfAmount
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfCurrency
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCurrencySign
{
    return KFT_String;
}

- (void)setAmountFromString:(NSString*)aPropVal
{
    self.amount = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPrice"];
    [aParams addIfDefinedKey:@"amount" withFloat:self.amount];
    [aParams addIfDefinedKey:@"currency" withString:self.currency];
    [aParams addIfDefinedKey:@"currencySign" withString:self.currencySign];
}

- (void)dealloc
{
    [self->_currency release];
    [self->_currencySign release];
    [super dealloc];
}

@end

@implementation KalturaProductPrice
@synthesize productId = _productId;
@synthesize productType = _productType;
@synthesize price = _price;
@synthesize purchaseStatus = _purchaseStatus;

- (KalturaFieldType)getTypeOfProductId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProductType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPrice
{
    return @"KalturaPrice";
}

- (KalturaFieldType)getTypeOfPurchaseStatus
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaProductPrice"];
    [aParams addIfDefinedKey:@"productId" withString:self.productId];
    [aParams addIfDefinedKey:@"productType" withString:self.productType];
    [aParams addIfDefinedKey:@"price" withObject:self.price];
    [aParams addIfDefinedKey:@"purchaseStatus" withString:self.purchaseStatus];
}

- (void)dealloc
{
    [self->_productId release];
    [self->_productType release];
    [self->_price release];
    [self->_purchaseStatus release];
    [super dealloc];
}

@end

@implementation KalturaTranslationToken
@synthesize language = _language;
@synthesize value = _value;

- (KalturaFieldType)getTypeOfLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTranslationToken"];
    [aParams addIfDefinedKey:@"language" withString:self.language];
    [aParams addIfDefinedKey:@"value" withString:self.value];
}

- (void)dealloc
{
    [self->_language release];
    [self->_value release];
    [super dealloc];
}

@end

@implementation KalturaPpvPrice
@synthesize fileId = _fileId;
@synthesize ppvModuleId = _ppvModuleId;
@synthesize isSubscriptionOnly = _isSubscriptionOnly;
@synthesize fullPrice = _fullPrice;
@synthesize subscriptionId = _subscriptionId;
@synthesize collectionId = _collectionId;
@synthesize prePaidId = _prePaidId;
@synthesize ppvDescriptions = _ppvDescriptions;
@synthesize purchaseUserId = _purchaseUserId;
@synthesize purchasedMediaFileId = _purchasedMediaFileId;
@synthesize relatedMediaFileIds = _relatedMediaFileIds;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize discountEndDate = _discountEndDate;
@synthesize firstDeviceName = _firstDeviceName;
@synthesize isInCancelationPeriod = _isInCancelationPeriod;
@synthesize ppvProductCode = _ppvProductCode;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_fileId = KALTURA_UNDEF_INT;
    self->_isSubscriptionOnly = KALTURA_UNDEF_BOOL;
    self->_purchasedMediaFileId = KALTURA_UNDEF_INT;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_discountEndDate = KALTURA_UNDEF_INT;
    self->_isInCancelationPeriod = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfFileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPpvModuleId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsSubscriptionOnly
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfFullPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfFullPrice
{
    return @"KalturaPrice";
}

- (KalturaFieldType)getTypeOfSubscriptionId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCollectionId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrePaidId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPpvDescriptions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPpvDescriptions
{
    return @"KalturaTranslationToken";
}

- (KalturaFieldType)getTypeOfPurchaseUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPurchasedMediaFileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRelatedMediaFileIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfRelatedMediaFileIds
{
    return @"KalturaIntegerValue";
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDiscountEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFirstDeviceName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsInCancelationPeriod
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPpvProductCode
{
    return KFT_String;
}

- (void)setFileIdFromString:(NSString*)aPropVal
{
    self.fileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsSubscriptionOnlyFromString:(NSString*)aPropVal
{
    self.isSubscriptionOnly = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setPurchasedMediaFileIdFromString:(NSString*)aPropVal
{
    self.purchasedMediaFileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDiscountEndDateFromString:(NSString*)aPropVal
{
    self.discountEndDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsInCancelationPeriodFromString:(NSString*)aPropVal
{
    self.isInCancelationPeriod = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPpvPrice"];
    [aParams addIfDefinedKey:@"fileId" withInt:self.fileId];
    [aParams addIfDefinedKey:@"ppvModuleId" withString:self.ppvModuleId];
    [aParams addIfDefinedKey:@"isSubscriptionOnly" withBool:self.isSubscriptionOnly];
    [aParams addIfDefinedKey:@"fullPrice" withObject:self.fullPrice];
    [aParams addIfDefinedKey:@"subscriptionId" withString:self.subscriptionId];
    [aParams addIfDefinedKey:@"collectionId" withString:self.collectionId];
    [aParams addIfDefinedKey:@"prePaidId" withString:self.prePaidId];
    [aParams addIfDefinedKey:@"ppvDescriptions" withArray:self.ppvDescriptions];
    [aParams addIfDefinedKey:@"purchaseUserId" withString:self.purchaseUserId];
    [aParams addIfDefinedKey:@"purchasedMediaFileId" withInt:self.purchasedMediaFileId];
    [aParams addIfDefinedKey:@"relatedMediaFileIds" withArray:self.relatedMediaFileIds];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
    [aParams addIfDefinedKey:@"endDate" withInt:self.endDate];
    [aParams addIfDefinedKey:@"discountEndDate" withInt:self.discountEndDate];
    [aParams addIfDefinedKey:@"firstDeviceName" withString:self.firstDeviceName];
    [aParams addIfDefinedKey:@"isInCancelationPeriod" withBool:self.isInCancelationPeriod];
    [aParams addIfDefinedKey:@"ppvProductCode" withString:self.ppvProductCode];
}

- (void)dealloc
{
    [self->_ppvModuleId release];
    [self->_fullPrice release];
    [self->_subscriptionId release];
    [self->_collectionId release];
    [self->_prePaidId release];
    [self->_ppvDescriptions release];
    [self->_purchaseUserId release];
    [self->_relatedMediaFileIds release];
    [self->_firstDeviceName release];
    [self->_ppvProductCode release];
    [super dealloc];
}

@end

@implementation KalturaPPVItemPriceDetails
@synthesize ppvModuleId = _ppvModuleId;
@synthesize isSubscriptionOnly = _isSubscriptionOnly;
@synthesize price = _price;
@synthesize fullPrice = _fullPrice;
@synthesize purchaseStatus = _purchaseStatus;
@synthesize subscriptionId = _subscriptionId;
@synthesize collectionId = _collectionId;
@synthesize prePaidId = _prePaidId;
@synthesize ppvDescriptions = _ppvDescriptions;
@synthesize purchaseUserId = _purchaseUserId;
@synthesize purchasedMediaFileId = _purchasedMediaFileId;
@synthesize relatedMediaFileIds = _relatedMediaFileIds;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize discountEndDate = _discountEndDate;
@synthesize firstDeviceName = _firstDeviceName;
@synthesize isInCancelationPeriod = _isInCancelationPeriod;
@synthesize ppvProductCode = _ppvProductCode;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isSubscriptionOnly = KALTURA_UNDEF_BOOL;
    self->_purchasedMediaFileId = KALTURA_UNDEF_INT;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_discountEndDate = KALTURA_UNDEF_INT;
    self->_isInCancelationPeriod = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfPpvModuleId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsSubscriptionOnly
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPrice
{
    return @"KalturaPrice";
}

- (KalturaFieldType)getTypeOfFullPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfFullPrice
{
    return @"KalturaPrice";
}

- (KalturaFieldType)getTypeOfPurchaseStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSubscriptionId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCollectionId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrePaidId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPpvDescriptions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPpvDescriptions
{
    return @"KalturaTranslationToken";
}

- (KalturaFieldType)getTypeOfPurchaseUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPurchasedMediaFileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRelatedMediaFileIds
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfRelatedMediaFileIds
{
    return @"KalturaIntegerValue";
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDiscountEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFirstDeviceName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsInCancelationPeriod
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPpvProductCode
{
    return KFT_String;
}

- (void)setIsSubscriptionOnlyFromString:(NSString*)aPropVal
{
    self.isSubscriptionOnly = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setPurchasedMediaFileIdFromString:(NSString*)aPropVal
{
    self.purchasedMediaFileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDiscountEndDateFromString:(NSString*)aPropVal
{
    self.discountEndDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsInCancelationPeriodFromString:(NSString*)aPropVal
{
    self.isInCancelationPeriod = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPPVItemPriceDetails"];
    [aParams addIfDefinedKey:@"ppvModuleId" withString:self.ppvModuleId];
    [aParams addIfDefinedKey:@"isSubscriptionOnly" withBool:self.isSubscriptionOnly];
    [aParams addIfDefinedKey:@"price" withObject:self.price];
    [aParams addIfDefinedKey:@"fullPrice" withObject:self.fullPrice];
    [aParams addIfDefinedKey:@"purchaseStatus" withString:self.purchaseStatus];
    [aParams addIfDefinedKey:@"subscriptionId" withString:self.subscriptionId];
    [aParams addIfDefinedKey:@"collectionId" withString:self.collectionId];
    [aParams addIfDefinedKey:@"prePaidId" withString:self.prePaidId];
    [aParams addIfDefinedKey:@"ppvDescriptions" withArray:self.ppvDescriptions];
    [aParams addIfDefinedKey:@"purchaseUserId" withString:self.purchaseUserId];
    [aParams addIfDefinedKey:@"purchasedMediaFileId" withInt:self.purchasedMediaFileId];
    [aParams addIfDefinedKey:@"relatedMediaFileIds" withArray:self.relatedMediaFileIds];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
    [aParams addIfDefinedKey:@"endDate" withInt:self.endDate];
    [aParams addIfDefinedKey:@"discountEndDate" withInt:self.discountEndDate];
    [aParams addIfDefinedKey:@"firstDeviceName" withString:self.firstDeviceName];
    [aParams addIfDefinedKey:@"isInCancelationPeriod" withBool:self.isInCancelationPeriod];
    [aParams addIfDefinedKey:@"ppvProductCode" withString:self.ppvProductCode];
}

- (void)dealloc
{
    [self->_ppvModuleId release];
    [self->_price release];
    [self->_fullPrice release];
    [self->_purchaseStatus release];
    [self->_subscriptionId release];
    [self->_collectionId release];
    [self->_prePaidId release];
    [self->_ppvDescriptions release];
    [self->_purchaseUserId release];
    [self->_relatedMediaFileIds release];
    [self->_firstDeviceName release];
    [self->_ppvProductCode release];
    [super dealloc];
}

@end

@implementation KalturaItemPrice
@synthesize fileId = _fileId;
@synthesize ppvPriceDetails = _ppvPriceDetails;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_fileId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPpvPriceDetails
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPpvPriceDetails
{
    return @"KalturaPPVItemPriceDetails";
}

- (void)setFileIdFromString:(NSString*)aPropVal
{
    self.fileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaItemPrice"];
    [aParams addIfDefinedKey:@"fileId" withInt:self.fileId];
    [aParams addIfDefinedKey:@"ppvPriceDetails" withArray:self.ppvPriceDetails];
}

- (void)dealloc
{
    [self->_ppvPriceDetails release];
    [super dealloc];
}

@end

@implementation KalturaSubscriptionPrice
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSubscriptionPrice"];
}

@end

@interface KalturaHouseholdPaymentGateway()
@property (nonatomic,assign) int id;
@end

@implementation KalturaHouseholdPaymentGateway
@synthesize id = _id;
@synthesize name = _name;
@synthesize isDefault = _isDefault;
@synthesize selectedBy = _selectedBy;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_isDefault = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsDefault
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfSelectedBy
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsDefaultFromString:(NSString*)aPropVal
{
    self.isDefault = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdPaymentGateway"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"isDefault" withBool:self.isDefault];
    [aParams addIfDefinedKey:@"selectedBy" withString:self.selectedBy];
}

- (void)dealloc
{
    [self->_name release];
    [self->_selectedBy release];
    [super dealloc];
}

@end

@implementation KalturaHouseholdPaymentGatewayListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaHouseholdPaymentGateway";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdPaymentGatewayListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaPaymentGatewayBaseProfile()
@property (nonatomic,assign) int id;
@end

@implementation KalturaPaymentGatewayBaseProfile
@synthesize id = _id;
@synthesize name = _name;
@synthesize isDefault = _isDefault;
@synthesize selectedBy = _selectedBy;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_isDefault = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsDefault
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfSelectedBy
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsDefaultFromString:(NSString*)aPropVal
{
    self.isDefault = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPaymentGatewayBaseProfile"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"isDefault" withBool:self.isDefault];
    [aParams addIfDefinedKey:@"selectedBy" withString:self.selectedBy];
}

- (void)dealloc
{
    [self->_name release];
    [self->_selectedBy release];
    [super dealloc];
}

@end

@implementation KalturaPaymentGatewayProfile
@synthesize isActive = _isActive;
@synthesize adapterUrl = _adapterUrl;
@synthesize transactUrl = _transactUrl;
@synthesize statusUrl = _statusUrl;
@synthesize renewUrl = _renewUrl;
@synthesize paymentGatewayeSettings = _paymentGatewayeSettings;
@synthesize externalIdentifier = _externalIdentifier;
@synthesize pendingInterval = _pendingInterval;
@synthesize pendingRetries = _pendingRetries;
@synthesize sharedSecret = _sharedSecret;
@synthesize renewIntervalMinutes = _renewIntervalMinutes;
@synthesize renewStartMinutes = _renewStartMinutes;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isActive = KALTURA_UNDEF_INT;
    self->_pendingInterval = KALTURA_UNDEF_INT;
    self->_pendingRetries = KALTURA_UNDEF_INT;
    self->_renewIntervalMinutes = KALTURA_UNDEF_INT;
    self->_renewStartMinutes = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAdapterUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTransactUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRenewUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPaymentGatewayeSettings
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfPaymentGatewayeSettings
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfExternalIdentifier
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPendingInterval
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPendingRetries
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSharedSecret
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRenewIntervalMinutes
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRenewStartMinutes
{
    return KFT_Int;
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPendingIntervalFromString:(NSString*)aPropVal
{
    self.pendingInterval = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPendingRetriesFromString:(NSString*)aPropVal
{
    self.pendingRetries = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRenewIntervalMinutesFromString:(NSString*)aPropVal
{
    self.renewIntervalMinutes = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRenewStartMinutesFromString:(NSString*)aPropVal
{
    self.renewStartMinutes = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPaymentGatewayProfile"];
    [aParams addIfDefinedKey:@"isActive" withInt:self.isActive];
    [aParams addIfDefinedKey:@"adapterUrl" withString:self.adapterUrl];
    [aParams addIfDefinedKey:@"transactUrl" withString:self.transactUrl];
    [aParams addIfDefinedKey:@"statusUrl" withString:self.statusUrl];
    [aParams addIfDefinedKey:@"renewUrl" withString:self.renewUrl];
    [aParams addIfDefinedKey:@"paymentGatewayeSettings" withDictionary:self.paymentGatewayeSettings];
    [aParams addIfDefinedKey:@"externalIdentifier" withString:self.externalIdentifier];
    [aParams addIfDefinedKey:@"pendingInterval" withInt:self.pendingInterval];
    [aParams addIfDefinedKey:@"pendingRetries" withInt:self.pendingRetries];
    [aParams addIfDefinedKey:@"sharedSecret" withString:self.sharedSecret];
    [aParams addIfDefinedKey:@"renewIntervalMinutes" withInt:self.renewIntervalMinutes];
    [aParams addIfDefinedKey:@"renewStartMinutes" withInt:self.renewStartMinutes];
}

- (void)dealloc
{
    [self->_adapterUrl release];
    [self->_transactUrl release];
    [self->_statusUrl release];
    [self->_renewUrl release];
    [self->_paymentGatewayeSettings release];
    [self->_externalIdentifier release];
    [self->_sharedSecret release];
    [super dealloc];
}

@end

@implementation KalturaPaymentGatewayProfileListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaPaymentGatewayProfile";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPaymentGatewayProfileListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaParentalRule()
@property (nonatomic,assign) int id;
@end

@implementation KalturaParentalRule
@synthesize id = _id;
@synthesize name = _name;
@synthesize description = _description;
@synthesize order = _order;
@synthesize mediaTag = _mediaTag;
@synthesize epgTag = _epgTag;
@synthesize blockAnonymousAccess = _blockAnonymousAccess;
@synthesize ruleType = _ruleType;
@synthesize mediaTagValues = _mediaTagValues;
@synthesize epgTagValues = _epgTagValues;
@synthesize isDefault = _isDefault;
@synthesize origin = _origin;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_order = KALTURA_UNDEF_INT;
    self->_mediaTag = KALTURA_UNDEF_INT;
    self->_epgTag = KALTURA_UNDEF_INT;
    self->_blockAnonymousAccess = KALTURA_UNDEF_BOOL;
    self->_isDefault = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOrder
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMediaTag
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEpgTag
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfBlockAnonymousAccess
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfRuleType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMediaTagValues
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfMediaTagValues
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfEpgTagValues
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfEpgTagValues
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfIsDefault
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfOrigin
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setOrderFromString:(NSString*)aPropVal
{
    self.order = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMediaTagFromString:(NSString*)aPropVal
{
    self.mediaTag = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEpgTagFromString:(NSString*)aPropVal
{
    self.epgTag = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setBlockAnonymousAccessFromString:(NSString*)aPropVal
{
    self.blockAnonymousAccess = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setIsDefaultFromString:(NSString*)aPropVal
{
    self.isDefault = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaParentalRule"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"order" withInt:self.order];
    [aParams addIfDefinedKey:@"mediaTag" withInt:self.mediaTag];
    [aParams addIfDefinedKey:@"epgTag" withInt:self.epgTag];
    [aParams addIfDefinedKey:@"blockAnonymousAccess" withBool:self.blockAnonymousAccess];
    [aParams addIfDefinedKey:@"ruleType" withString:self.ruleType];
    [aParams addIfDefinedKey:@"mediaTagValues" withArray:self.mediaTagValues];
    [aParams addIfDefinedKey:@"epgTagValues" withArray:self.epgTagValues];
    [aParams addIfDefinedKey:@"isDefault" withBool:self.isDefault];
    [aParams addIfDefinedKey:@"origin" withString:self.origin];
}

- (void)dealloc
{
    [self->_name release];
    [self->_description release];
    [self->_ruleType release];
    [self->_mediaTagValues release];
    [self->_epgTagValues release];
    [self->_origin release];
    [super dealloc];
}

@end

@implementation KalturaParentalRuleListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaParentalRule";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaParentalRuleListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaRecording()
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString* status;
@property (nonatomic,copy) NSString* type;
@property (nonatomic,assign) int viewableUntilDate;
@property (nonatomic,assign) KALTURA_BOOL isProtected;
@property (nonatomic,assign) int createDate;
@property (nonatomic,assign) int updateDate;
@end

@implementation KalturaRecording
@synthesize id = _id;
@synthesize status = _status;
@synthesize assetId = _assetId;
@synthesize type = _type;
@synthesize viewableUntilDate = _viewableUntilDate;
@synthesize isProtected = _isProtected;
@synthesize createDate = _createDate;
@synthesize updateDate = _updateDate;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_assetId = KALTURA_UNDEF_INT;
    self->_viewableUntilDate = KALTURA_UNDEF_INT;
    self->_isProtected = KALTURA_UNDEF_BOOL;
    self->_createDate = KALTURA_UNDEF_INT;
    self->_updateDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfViewableUntilDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIsProtected
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfCreateDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUpdateDate
{
    return KFT_Int;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAssetIdFromString:(NSString*)aPropVal
{
    self.assetId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setViewableUntilDateFromString:(NSString*)aPropVal
{
    self.viewableUntilDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsProtectedFromString:(NSString*)aPropVal
{
    self.isProtected = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setCreateDateFromString:(NSString*)aPropVal
{
    self.createDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUpdateDateFromString:(NSString*)aPropVal
{
    self.updateDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRecording"];
    [aParams addIfDefinedKey:@"assetId" withInt:self.assetId];
}

- (void)dealloc
{
    [self->_status release];
    [self->_type release];
    [super dealloc];
}

@end

@implementation KalturaRecordingListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaRecording";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRecordingListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaBillingTransaction()
@property (nonatomic,copy) NSString* recieptCode;
@property (nonatomic,copy) NSString* purchasedItemName;
@property (nonatomic,copy) NSString* purchasedItemCode;
@property (nonatomic,copy) NSString* itemType;
@property (nonatomic,copy) NSString* billingAction;
@property (nonatomic,retain) KalturaPrice* price;
@property (nonatomic,assign) int actionDate;
@property (nonatomic,assign) int startDate;
@property (nonatomic,assign) int endDate;
@property (nonatomic,copy) NSString* paymentMethod;
@property (nonatomic,copy) NSString* paymentMethodExtraDetails;
@property (nonatomic,assign) KALTURA_BOOL isRecurring;
@property (nonatomic,assign) int billingProviderRef;
@property (nonatomic,assign) int purchaseId;
@property (nonatomic,copy) NSString* remarks;
@end

@implementation KalturaBillingTransaction
@synthesize recieptCode = _recieptCode;
@synthesize purchasedItemName = _purchasedItemName;
@synthesize purchasedItemCode = _purchasedItemCode;
@synthesize itemType = _itemType;
@synthesize billingAction = _billingAction;
@synthesize price = _price;
@synthesize actionDate = _actionDate;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize paymentMethod = _paymentMethod;
@synthesize paymentMethodExtraDetails = _paymentMethodExtraDetails;
@synthesize isRecurring = _isRecurring;
@synthesize billingProviderRef = _billingProviderRef;
@synthesize purchaseId = _purchaseId;
@synthesize remarks = _remarks;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_actionDate = KALTURA_UNDEF_INT;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_isRecurring = KALTURA_UNDEF_BOOL;
    self->_billingProviderRef = KALTURA_UNDEF_INT;
    self->_purchaseId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfRecieptCode
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPurchasedItemName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPurchasedItemCode
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfItemType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBillingAction
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPrice
{
    return @"KalturaPrice";
}

- (KalturaFieldType)getTypeOfActionDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPaymentMethod
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPaymentMethodExtraDetails
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsRecurring
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfBillingProviderRef
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPurchaseId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRemarks
{
    return KFT_String;
}

- (void)setActionDateFromString:(NSString*)aPropVal
{
    self.actionDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsRecurringFromString:(NSString*)aPropVal
{
    self.isRecurring = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setBillingProviderRefFromString:(NSString*)aPropVal
{
    self.billingProviderRef = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPurchaseIdFromString:(NSString*)aPropVal
{
    self.purchaseId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBillingTransaction"];
}

- (void)dealloc
{
    [self->_recieptCode release];
    [self->_purchasedItemName release];
    [self->_purchasedItemCode release];
    [self->_itemType release];
    [self->_billingAction release];
    [self->_price release];
    [self->_paymentMethod release];
    [self->_paymentMethodExtraDetails release];
    [self->_remarks release];
    [super dealloc];
}

@end

@implementation KalturaBillingTransactionListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaBillingTransaction";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBillingTransactionListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaPermissionItem()
@property (nonatomic,assign) int id;
@end

@implementation KalturaPermissionItem
@synthesize id = _id;
@synthesize name = _name;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPermissionItem"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@interface KalturaPermission()
@property (nonatomic,assign) int id;
@end

@implementation KalturaPermission
@synthesize id = _id;
@synthesize name = _name;
@synthesize permissionItems = _permissionItems;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPermissionItems
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPermissionItems
{
    return @"KalturaPermissionItem";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPermission"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"permissionItems" withArray:self.permissionItems];
}

- (void)dealloc
{
    [self->_name release];
    [self->_permissionItems release];
    [super dealloc];
}

@end

@interface KalturaUserRole()
@property (nonatomic,assign) int id;
@end

@implementation KalturaUserRole
@synthesize id = _id;
@synthesize name = _name;
@synthesize permissions = _permissions;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPermissions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPermissions
{
    return @"KalturaPermission";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserRole"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"permissions" withArray:self.permissions];
}

- (void)dealloc
{
    [self->_name release];
    [self->_permissions release];
    [super dealloc];
}

@end

@implementation KalturaUserRoleListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaUserRole";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserRoleListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaGroupPermission
@synthesize group = _group;

- (KalturaFieldType)getTypeOfGroup
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaGroupPermission"];
    [aParams addIfDefinedKey:@"group" withString:self.group];
}

- (void)dealloc
{
    [self->_group release];
    [super dealloc];
}

@end

@implementation KalturaApiArgumentPermissionItem
@synthesize service = _service;
@synthesize action = _action;
@synthesize parameter = _parameter;

- (KalturaFieldType)getTypeOfService
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAction
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParameter
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaApiArgumentPermissionItem"];
    [aParams addIfDefinedKey:@"service" withString:self.service];
    [aParams addIfDefinedKey:@"action" withString:self.action];
    [aParams addIfDefinedKey:@"parameter" withString:self.parameter];
}

- (void)dealloc
{
    [self->_service release];
    [self->_action release];
    [self->_parameter release];
    [super dealloc];
}

@end

@implementation KalturaApiParameterPermissionItem
@synthesize object = _object;
@synthesize parameter = _parameter;
@synthesize action = _action;

- (KalturaFieldType)getTypeOfObject
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParameter
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAction
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaApiParameterPermissionItem"];
    [aParams addIfDefinedKey:@"object" withString:self.object];
    [aParams addIfDefinedKey:@"parameter" withString:self.parameter];
    [aParams addIfDefinedKey:@"action" withString:self.action];
}

- (void)dealloc
{
    [self->_object release];
    [self->_parameter release];
    [self->_action release];
    [super dealloc];
}

@end

@implementation KalturaApiActionPermissionItem
@synthesize service = _service;
@synthesize action = _action;

- (KalturaFieldType)getTypeOfService
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAction
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaApiActionPermissionItem"];
    [aParams addIfDefinedKey:@"service" withString:self.service];
    [aParams addIfDefinedKey:@"action" withString:self.action];
}

- (void)dealloc
{
    [self->_service release];
    [self->_action release];
    [super dealloc];
}

@end

@interface KalturaInboxMessage()
@property (nonatomic,copy) NSString* id;
@property (nonatomic,copy) NSString* status;
@property (nonatomic,assign) int createdAt;
@end

@implementation KalturaInboxMessage
@synthesize id = _id;
@synthesize message = _message;
@synthesize status = _status;
@synthesize type = _type;
@synthesize createdAt = _createdAt;
@synthesize url = _url;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_createdAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMessage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUrl
{
    return KFT_String;
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaInboxMessage"];
    [aParams addIfDefinedKey:@"message" withString:self.message];
    [aParams addIfDefinedKey:@"type" withString:self.type];
    [aParams addIfDefinedKey:@"url" withString:self.url];
}

- (void)dealloc
{
    [self->_id release];
    [self->_message release];
    [self->_status release];
    [self->_type release];
    [self->_url release];
    [super dealloc];
}

@end

@implementation KalturaInboxMessageListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaInboxMessage";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaInboxMessageListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaFollowDataBase()
@property (nonatomic,assign) int announcementId;
@property (nonatomic,assign) int status;
@property (nonatomic,copy) NSString* title;
@property (nonatomic,assign) int timestamp;
@property (nonatomic,copy) NSString* followPhrase;
@end

@implementation KalturaFollowDataBase
@synthesize announcementId = _announcementId;
@synthesize status = _status;
@synthesize title = _title;
@synthesize timestamp = _timestamp;
@synthesize followPhrase = _followPhrase;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_announcementId = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    self->_timestamp = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAnnouncementId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTitle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTimestamp
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFollowPhrase
{
    return KFT_String;
}

- (void)setAnnouncementIdFromString:(NSString*)aPropVal
{
    self.announcementId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTimestampFromString:(NSString*)aPropVal
{
    self.timestamp = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFollowDataBase"];
}

- (void)dealloc
{
    [self->_title release];
    [self->_followPhrase release];
    [super dealloc];
}

@end

@interface KalturaFollowTvSeries()
@property (nonatomic,assign) int assetId;
@end

@implementation KalturaFollowTvSeries
@synthesize assetId = _assetId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_Int;
}

- (void)setAssetIdFromString:(NSString*)aPropVal
{
    self.assetId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFollowTvSeries"];
}

@end

@implementation KalturaFollowTvSeriesListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaFollowTvSeries";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFollowTvSeriesListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaAnnouncementListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaAnnouncement";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAnnouncementListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaFeed()
@property (nonatomic,assign) int assetId;
@end

@implementation KalturaFeed
@synthesize assetId = _assetId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_Int;
}

- (void)setAssetIdFromString:(NSString*)aPropVal
{
    self.assetId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFeed"];
}

@end

@implementation KalturaPersonalFeed
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPersonalFeed"];
}

@end

@implementation KalturaPersonalFeedListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaPersonalFeed";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPersonalFeedListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaTopic()
@property (nonatomic,copy) NSString* id;
@end

@implementation KalturaTopic
@synthesize id = _id;
@synthesize name = _name;
@synthesize subscribersAmount = _subscribersAmount;
@synthesize automaticIssueNotification = _automaticIssueNotification;
@synthesize lastMessageSentDateSec = _lastMessageSentDateSec;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_lastMessageSentDateSec = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSubscribersAmount
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAutomaticIssueNotification
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLastMessageSentDateSec
{
    return KFT_Int;
}

- (void)setLastMessageSentDateSecFromString:(NSString*)aPropVal
{
    self.lastMessageSentDateSec = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTopic"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"subscribersAmount" withString:self.subscribersAmount];
    [aParams addIfDefinedKey:@"automaticIssueNotification" withString:self.automaticIssueNotification];
    [aParams addIfDefinedKey:@"lastMessageSentDateSec" withInt:self.lastMessageSentDateSec];
}

- (void)dealloc
{
    [self->_id release];
    [self->_name release];
    [self->_subscribersAmount release];
    [self->_automaticIssueNotification release];
    [super dealloc];
}

@end

@implementation KalturaTopicListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaTopic";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTopicListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaProductPriceListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaProductPrice";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaProductPriceListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaItemPriceListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaItemPrice";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaItemPriceListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaBaseChannel()
@property (nonatomic,assign) int id;
@end

@implementation KalturaBaseChannel
@synthesize id = _id;
@synthesize name = _name;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBaseChannel"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@implementation KalturaChannel
@synthesize description = _description;
@synthesize images = _images;
@synthesize assetTypes = _assetTypes;
@synthesize filterExpression = _filterExpression;
@synthesize isActive = _isActive;
@synthesize order = _order;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isActive = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfImages
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfImages
{
    return @"KalturaMediaImage";
}

- (KalturaFieldType)getTypeOfAssetTypes
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfAssetTypes
{
    return @"KalturaIntegerValue";
}

- (KalturaFieldType)getTypeOfFilterExpression
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfOrder
{
    return KFT_String;
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaChannel"];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"images" withArray:self.images];
    [aParams addIfDefinedKey:@"assetTypes" withArray:self.assetTypes];
    [aParams addIfDefinedKey:@"filterExpression" withString:self.filterExpression];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
    [aParams addIfDefinedKey:@"order" withString:self.order];
}

- (void)dealloc
{
    [self->_description release];
    [self->_images release];
    [self->_assetTypes release];
    [self->_filterExpression release];
    [self->_order release];
    [super dealloc];
}

@end

@implementation KalturaPriceDetails
@synthesize id = _id;
@synthesize name = _name;
@synthesize price = _price;
@synthesize descriptions = _descriptions;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPrice
{
    return @"KalturaPrice";
}

- (KalturaFieldType)getTypeOfDescriptions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfDescriptions
{
    return @"KalturaTranslationToken";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPriceDetails"];
    [aParams addIfDefinedKey:@"id" withInt:self.id];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"price" withObject:self.price];
    [aParams addIfDefinedKey:@"descriptions" withArray:self.descriptions];
}

- (void)dealloc
{
    [self->_name release];
    [self->_price release];
    [self->_descriptions release];
    [super dealloc];
}

@end

@implementation KalturaDiscountModule
@synthesize percent = _percent;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_percent = KALTURA_UNDEF_FLOAT;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPercent
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (void)setPercentFromString:(NSString*)aPropVal
{
    self.percent = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDiscountModule"];
    [aParams addIfDefinedKey:@"percent" withFloat:self.percent];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
    [aParams addIfDefinedKey:@"endDate" withInt:self.endDate];
}

@end

@interface KalturaCouponsGroup()
@property (nonatomic,copy) NSString* id;
@end

@implementation KalturaCouponsGroup
@synthesize id = _id;
@synthesize name = _name;
@synthesize descriptions = _descriptions;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize maxUsesNumber = _maxUsesNumber;
@synthesize maxUsesNumberOnRenewableSub = _maxUsesNumberOnRenewableSub;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_maxUsesNumber = KALTURA_UNDEF_INT;
    self->_maxUsesNumberOnRenewableSub = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescriptions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfDescriptions
{
    return @"KalturaTranslationToken";
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMaxUsesNumber
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMaxUsesNumberOnRenewableSub
{
    return KFT_Int;
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMaxUsesNumberFromString:(NSString*)aPropVal
{
    self.maxUsesNumber = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMaxUsesNumberOnRenewableSubFromString:(NSString*)aPropVal
{
    self.maxUsesNumberOnRenewableSub = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCouponsGroup"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"descriptions" withArray:self.descriptions];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
    [aParams addIfDefinedKey:@"endDate" withInt:self.endDate];
    [aParams addIfDefinedKey:@"maxUsesNumber" withInt:self.maxUsesNumber];
    [aParams addIfDefinedKey:@"maxUsesNumberOnRenewableSub" withInt:self.maxUsesNumberOnRenewableSub];
}

- (void)dealloc
{
    [self->_id release];
    [self->_name release];
    [self->_descriptions release];
    [super dealloc];
}

@end

@interface KalturaUsageModule()
@property (nonatomic,assign) int id;
@end

@implementation KalturaUsageModule
@synthesize id = _id;
@synthesize name = _name;
@synthesize maxViewsNumber = _maxViewsNumber;
@synthesize viewLifeCycle = _viewLifeCycle;
@synthesize fullLifeCycle = _fullLifeCycle;
@synthesize couponId = _couponId;
@synthesize waiverPeriod = _waiverPeriod;
@synthesize isWaiverEnabled = _isWaiverEnabled;
@synthesize isOfflinePlayback = _isOfflinePlayback;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_maxViewsNumber = KALTURA_UNDEF_INT;
    self->_viewLifeCycle = KALTURA_UNDEF_INT;
    self->_fullLifeCycle = KALTURA_UNDEF_INT;
    self->_couponId = KALTURA_UNDEF_INT;
    self->_waiverPeriod = KALTURA_UNDEF_INT;
    self->_isWaiverEnabled = KALTURA_UNDEF_BOOL;
    self->_isOfflinePlayback = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMaxViewsNumber
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfViewLifeCycle
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFullLifeCycle
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCouponId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfWaiverPeriod
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIsWaiverEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfIsOfflinePlayback
{
    return KFT_Bool;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMaxViewsNumberFromString:(NSString*)aPropVal
{
    self.maxViewsNumber = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setViewLifeCycleFromString:(NSString*)aPropVal
{
    self.viewLifeCycle = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFullLifeCycleFromString:(NSString*)aPropVal
{
    self.fullLifeCycle = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCouponIdFromString:(NSString*)aPropVal
{
    self.couponId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setWaiverPeriodFromString:(NSString*)aPropVal
{
    self.waiverPeriod = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsWaiverEnabledFromString:(NSString*)aPropVal
{
    self.isWaiverEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setIsOfflinePlaybackFromString:(NSString*)aPropVal
{
    self.isOfflinePlayback = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUsageModule"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"maxViewsNumber" withInt:self.maxViewsNumber];
    [aParams addIfDefinedKey:@"viewLifeCycle" withInt:self.viewLifeCycle];
    [aParams addIfDefinedKey:@"fullLifeCycle" withInt:self.fullLifeCycle];
    [aParams addIfDefinedKey:@"couponId" withInt:self.couponId];
    [aParams addIfDefinedKey:@"waiverPeriod" withInt:self.waiverPeriod];
    [aParams addIfDefinedKey:@"isWaiverEnabled" withBool:self.isWaiverEnabled];
    [aParams addIfDefinedKey:@"isOfflinePlayback" withBool:self.isOfflinePlayback];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@implementation KalturaPricePlan
@synthesize isRenewable = _isRenewable;
@synthesize renewalsNumber = _renewalsNumber;
@synthesize priceId = _priceId;
@synthesize discountId = _discountId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isRenewable = KALTURA_UNDEF_BOOL;
    self->_renewalsNumber = KALTURA_UNDEF_INT;
    self->_priceId = KALTURA_UNDEF_INT;
    self->_discountId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIsRenewable
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfRenewalsNumber
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPriceId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDiscountId
{
    return KFT_Int;
}

- (void)setIsRenewableFromString:(NSString*)aPropVal
{
    self.isRenewable = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setRenewalsNumberFromString:(NSString*)aPropVal
{
    self.renewalsNumber = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPriceIdFromString:(NSString*)aPropVal
{
    self.priceId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDiscountIdFromString:(NSString*)aPropVal
{
    self.discountId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPricePlan"];
    [aParams addIfDefinedKey:@"isRenewable" withBool:self.isRenewable];
    [aParams addIfDefinedKey:@"renewalsNumber" withInt:self.renewalsNumber];
    [aParams addIfDefinedKey:@"priceId" withInt:self.priceId];
    [aParams addIfDefinedKey:@"discountId" withInt:self.discountId];
}

@end

@interface KalturaPreviewModule()
@property (nonatomic,assign) int id;
@end

@implementation KalturaPreviewModule
@synthesize id = _id;
@synthesize name = _name;
@synthesize lifeCycle = _lifeCycle;
@synthesize nonRenewablePeriod = _nonRenewablePeriod;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_lifeCycle = KALTURA_UNDEF_INT;
    self->_nonRenewablePeriod = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLifeCycle
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfNonRenewablePeriod
{
    return KFT_Int;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLifeCycleFromString:(NSString*)aPropVal
{
    self.lifeCycle = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setNonRenewablePeriodFromString:(NSString*)aPropVal
{
    self.nonRenewablePeriod = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPreviewModule"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"lifeCycle" withInt:self.lifeCycle];
    [aParams addIfDefinedKey:@"nonRenewablePeriod" withInt:self.nonRenewablePeriod];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@implementation KalturaSubscription
@synthesize id = _id;
@synthesize channels = _channels;
@synthesize startDate = _startDate;
@synthesize endDate = _endDate;
@synthesize fileTypes = _fileTypes;
@synthesize isRenewable = _isRenewable;
@synthesize renewalsNumber = _renewalsNumber;
@synthesize isInfiniteRenewal = _isInfiniteRenewal;
@synthesize price = _price;
@synthesize discountModule = _discountModule;
@synthesize couponsGroup = _couponsGroup;
@synthesize names = _names;
@synthesize descriptions = _descriptions;
@synthesize mediaId = _mediaId;
@synthesize prorityInOrder = _prorityInOrder;
@synthesize productCode = _productCode;
@synthesize pricePlans = _pricePlans;
@synthesize previewModule = _previewModule;
@synthesize householdLimitationsId = _householdLimitationsId;
@synthesize gracePeriodMinutes = _gracePeriodMinutes;
@synthesize premiumServices = _premiumServices;
@synthesize maxViewsNumber = _maxViewsNumber;
@synthesize viewLifeCycle = _viewLifeCycle;
@synthesize waiverPeriod = _waiverPeriod;
@synthesize isWaiverEnabled = _isWaiverEnabled;
@synthesize userTypes = _userTypes;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_startDate = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_isRenewable = KALTURA_UNDEF_BOOL;
    self->_renewalsNumber = KALTURA_UNDEF_INT;
    self->_isInfiniteRenewal = KALTURA_UNDEF_BOOL;
    self->_mediaId = KALTURA_UNDEF_INT;
    self->_prorityInOrder = KALTURA_UNDEF_INT;
    self->_householdLimitationsId = KALTURA_UNDEF_INT;
    self->_gracePeriodMinutes = KALTURA_UNDEF_INT;
    self->_maxViewsNumber = KALTURA_UNDEF_INT;
    self->_viewLifeCycle = KALTURA_UNDEF_INT;
    self->_waiverPeriod = KALTURA_UNDEF_INT;
    self->_isWaiverEnabled = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfChannels
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfChannels
{
    return @"KalturaBaseChannel";
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFileTypes
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfFileTypes
{
    return @"KalturaIntegerValue";
}

- (KalturaFieldType)getTypeOfIsRenewable
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfRenewalsNumber
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIsInfiniteRenewal
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPrice
{
    return @"KalturaPriceDetails";
}

- (KalturaFieldType)getTypeOfDiscountModule
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfDiscountModule
{
    return @"KalturaDiscountModule";
}

- (KalturaFieldType)getTypeOfCouponsGroup
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfCouponsGroup
{
    return @"KalturaCouponsGroup";
}

- (KalturaFieldType)getTypeOfNames
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfNames
{
    return @"KalturaTranslationToken";
}

- (KalturaFieldType)getTypeOfDescriptions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfDescriptions
{
    return @"KalturaTranslationToken";
}

- (KalturaFieldType)getTypeOfMediaId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProrityInOrder
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProductCode
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPricePlans
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPricePlans
{
    return @"KalturaPricePlan";
}

- (KalturaFieldType)getTypeOfPreviewModule
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPreviewModule
{
    return @"KalturaPreviewModule";
}

- (KalturaFieldType)getTypeOfHouseholdLimitationsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfGracePeriodMinutes
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPremiumServices
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPremiumServices
{
    return @"KalturaPremiumService";
}

- (KalturaFieldType)getTypeOfMaxViewsNumber
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfViewLifeCycle
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfWaiverPeriod
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIsWaiverEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfUserTypes
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfUserTypes
{
    return @"KalturaOTTUserType";
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsRenewableFromString:(NSString*)aPropVal
{
    self.isRenewable = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setRenewalsNumberFromString:(NSString*)aPropVal
{
    self.renewalsNumber = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsInfiniteRenewalFromString:(NSString*)aPropVal
{
    self.isInfiniteRenewal = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setMediaIdFromString:(NSString*)aPropVal
{
    self.mediaId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setProrityInOrderFromString:(NSString*)aPropVal
{
    self.prorityInOrder = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setHouseholdLimitationsIdFromString:(NSString*)aPropVal
{
    self.householdLimitationsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setGracePeriodMinutesFromString:(NSString*)aPropVal
{
    self.gracePeriodMinutes = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMaxViewsNumberFromString:(NSString*)aPropVal
{
    self.maxViewsNumber = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setViewLifeCycleFromString:(NSString*)aPropVal
{
    self.viewLifeCycle = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setWaiverPeriodFromString:(NSString*)aPropVal
{
    self.waiverPeriod = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsWaiverEnabledFromString:(NSString*)aPropVal
{
    self.isWaiverEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSubscription"];
    [aParams addIfDefinedKey:@"id" withString:self.id];
    [aParams addIfDefinedKey:@"channels" withArray:self.channels];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
    [aParams addIfDefinedKey:@"endDate" withInt:self.endDate];
    [aParams addIfDefinedKey:@"fileTypes" withArray:self.fileTypes];
    [aParams addIfDefinedKey:@"isRenewable" withBool:self.isRenewable];
    [aParams addIfDefinedKey:@"renewalsNumber" withInt:self.renewalsNumber];
    [aParams addIfDefinedKey:@"isInfiniteRenewal" withBool:self.isInfiniteRenewal];
    [aParams addIfDefinedKey:@"price" withObject:self.price];
    [aParams addIfDefinedKey:@"discountModule" withObject:self.discountModule];
    [aParams addIfDefinedKey:@"couponsGroup" withObject:self.couponsGroup];
    [aParams addIfDefinedKey:@"names" withArray:self.names];
    [aParams addIfDefinedKey:@"descriptions" withArray:self.descriptions];
    [aParams addIfDefinedKey:@"mediaId" withInt:self.mediaId];
    [aParams addIfDefinedKey:@"prorityInOrder" withInt:self.prorityInOrder];
    [aParams addIfDefinedKey:@"productCode" withString:self.productCode];
    [aParams addIfDefinedKey:@"pricePlans" withArray:self.pricePlans];
    [aParams addIfDefinedKey:@"previewModule" withObject:self.previewModule];
    [aParams addIfDefinedKey:@"householdLimitationsId" withInt:self.householdLimitationsId];
    [aParams addIfDefinedKey:@"gracePeriodMinutes" withInt:self.gracePeriodMinutes];
    [aParams addIfDefinedKey:@"premiumServices" withArray:self.premiumServices];
    [aParams addIfDefinedKey:@"maxViewsNumber" withInt:self.maxViewsNumber];
    [aParams addIfDefinedKey:@"viewLifeCycle" withInt:self.viewLifeCycle];
    [aParams addIfDefinedKey:@"waiverPeriod" withInt:self.waiverPeriod];
    [aParams addIfDefinedKey:@"isWaiverEnabled" withBool:self.isWaiverEnabled];
    [aParams addIfDefinedKey:@"userTypes" withArray:self.userTypes];
}

- (void)dealloc
{
    [self->_id release];
    [self->_channels release];
    [self->_fileTypes release];
    [self->_price release];
    [self->_discountModule release];
    [self->_couponsGroup release];
    [self->_names release];
    [self->_descriptions release];
    [self->_productCode release];
    [self->_pricePlans release];
    [self->_previewModule release];
    [self->_premiumServices release];
    [self->_userTypes release];
    [super dealloc];
}

@end

@implementation KalturaSubscriptionListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaSubscription";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSubscriptionListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaProductsPriceListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaProductPrice";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaProductsPriceListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaEntitlement()
@property (nonatomic,copy) NSString* type;
@property (nonatomic,copy) NSString* entitlementId;
@property (nonatomic,assign) int currentUses;
@property (nonatomic,assign) int endDate;
@property (nonatomic,assign) int currentDate;
@property (nonatomic,assign) int lastViewDate;
@property (nonatomic,assign) int purchaseDate;
@property (nonatomic,assign) int purchaseId;
@property (nonatomic,copy) NSString* paymentMethod;
@property (nonatomic,copy) NSString* deviceUdid;
@property (nonatomic,copy) NSString* deviceName;
@property (nonatomic,assign) KALTURA_BOOL isCancelationWindowEnabled;
@property (nonatomic,assign) int maxUses;
@property (nonatomic,assign) int nextRenewalDate;
@property (nonatomic,assign) KALTURA_BOOL isRenewableForPurchase;
@property (nonatomic,assign) KALTURA_BOOL isRenewable;
@property (nonatomic,assign) int mediaFileId;
@property (nonatomic,assign) int mediaId;
@property (nonatomic,assign) KALTURA_BOOL isInGracePeriod;
@end

@implementation KalturaEntitlement
@synthesize type = _type;
@synthesize entitlementId = _entitlementId;
@synthesize currentUses = _currentUses;
@synthesize endDate = _endDate;
@synthesize currentDate = _currentDate;
@synthesize lastViewDate = _lastViewDate;
@synthesize purchaseDate = _purchaseDate;
@synthesize purchaseId = _purchaseId;
@synthesize paymentMethod = _paymentMethod;
@synthesize deviceUdid = _deviceUdid;
@synthesize deviceName = _deviceName;
@synthesize isCancelationWindowEnabled = _isCancelationWindowEnabled;
@synthesize maxUses = _maxUses;
@synthesize nextRenewalDate = _nextRenewalDate;
@synthesize isRenewableForPurchase = _isRenewableForPurchase;
@synthesize isRenewable = _isRenewable;
@synthesize mediaFileId = _mediaFileId;
@synthesize mediaId = _mediaId;
@synthesize isInGracePeriod = _isInGracePeriod;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_currentUses = KALTURA_UNDEF_INT;
    self->_endDate = KALTURA_UNDEF_INT;
    self->_currentDate = KALTURA_UNDEF_INT;
    self->_lastViewDate = KALTURA_UNDEF_INT;
    self->_purchaseDate = KALTURA_UNDEF_INT;
    self->_purchaseId = KALTURA_UNDEF_INT;
    self->_isCancelationWindowEnabled = KALTURA_UNDEF_BOOL;
    self->_maxUses = KALTURA_UNDEF_INT;
    self->_nextRenewalDate = KALTURA_UNDEF_INT;
    self->_isRenewableForPurchase = KALTURA_UNDEF_BOOL;
    self->_isRenewable = KALTURA_UNDEF_BOOL;
    self->_mediaFileId = KALTURA_UNDEF_INT;
    self->_mediaId = KALTURA_UNDEF_INT;
    self->_isInGracePeriod = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntitlementId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCurrentUses
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCurrentDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfLastViewDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPurchaseDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPurchaseId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPaymentMethod
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeviceUdid
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeviceName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsCancelationWindowEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfMaxUses
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfNextRenewalDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIsRenewableForPurchase
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfIsRenewable
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfMediaFileId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMediaId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfIsInGracePeriod
{
    return KFT_Bool;
}

- (void)setCurrentUsesFromString:(NSString*)aPropVal
{
    self.currentUses = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateFromString:(NSString*)aPropVal
{
    self.endDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCurrentDateFromString:(NSString*)aPropVal
{
    self.currentDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setLastViewDateFromString:(NSString*)aPropVal
{
    self.lastViewDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPurchaseDateFromString:(NSString*)aPropVal
{
    self.purchaseDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPurchaseIdFromString:(NSString*)aPropVal
{
    self.purchaseId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsCancelationWindowEnabledFromString:(NSString*)aPropVal
{
    self.isCancelationWindowEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setMaxUsesFromString:(NSString*)aPropVal
{
    self.maxUses = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setNextRenewalDateFromString:(NSString*)aPropVal
{
    self.nextRenewalDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsRenewableForPurchaseFromString:(NSString*)aPropVal
{
    self.isRenewableForPurchase = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setIsRenewableFromString:(NSString*)aPropVal
{
    self.isRenewable = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setMediaFileIdFromString:(NSString*)aPropVal
{
    self.mediaFileId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setMediaIdFromString:(NSString*)aPropVal
{
    self.mediaId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsInGracePeriodFromString:(NSString*)aPropVal
{
    self.isInGracePeriod = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntitlement"];
}

- (void)dealloc
{
    [self->_type release];
    [self->_entitlementId release];
    [self->_paymentMethod release];
    [self->_deviceUdid release];
    [self->_deviceName release];
    [super dealloc];
}

@end

@implementation KalturaEntitlementListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaEntitlement";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntitlementListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaHomeNetwork
@synthesize externalId = _externalId;
@synthesize name = _name;
@synthesize description = _description;
@synthesize isActive = _isActive;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isActive = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfExternalId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHomeNetwork"];
    [aParams addIfDefinedKey:@"externalId" withString:self.externalId];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
}

- (void)dealloc
{
    [self->_externalId release];
    [self->_name release];
    [self->_description release];
    [super dealloc];
}

@end

@implementation KalturaHomeNetworkListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaHomeNetwork";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHomeNetworkListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaFavorite()
@property (nonatomic,assign) int createDate;
@end

@implementation KalturaFavorite
@synthesize assetId = _assetId;
@synthesize extraData = _extraData;
@synthesize createDate = _createDate;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetId = KALTURA_UNDEF_INT;
    self->_createDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfExtraData
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreateDate
{
    return KFT_Int;
}

- (void)setAssetIdFromString:(NSString*)aPropVal
{
    self.assetId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreateDateFromString:(NSString*)aPropVal
{
    self.createDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFavorite"];
    [aParams addIfDefinedKey:@"assetId" withInt:self.assetId];
    [aParams addIfDefinedKey:@"extraData" withString:self.extraData];
}

- (void)dealloc
{
    [self->_extraData release];
    [super dealloc];
}

@end

@implementation KalturaFavoriteListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaFavorite";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFavoriteListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaOTTUserListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaOTTUser";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOTTUserListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaAssetStatisticsListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaAssetStatistics";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetStatisticsListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaSlimAssetInfoWrapper
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaBaseAssetInfo";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSlimAssetInfoWrapper"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaAssetHistory()
@property (nonatomic,assign) int assetId;
@property (nonatomic,assign) int position;
@property (nonatomic,assign) int duration;
@property (nonatomic,assign) int watchedDate;
@property (nonatomic,assign) KALTURA_BOOL finishedWatching;
@end

@implementation KalturaAssetHistory
@synthesize assetId = _assetId;
@synthesize position = _position;
@synthesize duration = _duration;
@synthesize watchedDate = _watchedDate;
@synthesize finishedWatching = _finishedWatching;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetId = KALTURA_UNDEF_INT;
    self->_position = KALTURA_UNDEF_INT;
    self->_duration = KALTURA_UNDEF_INT;
    self->_watchedDate = KALTURA_UNDEF_INT;
    self->_finishedWatching = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPosition
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDuration
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfWatchedDate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFinishedWatching
{
    return KFT_Bool;
}

- (void)setAssetIdFromString:(NSString*)aPropVal
{
    self.assetId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPositionFromString:(NSString*)aPropVal
{
    self.position = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDurationFromString:(NSString*)aPropVal
{
    self.duration = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setWatchedDateFromString:(NSString*)aPropVal
{
    self.watchedDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFinishedWatchingFromString:(NSString*)aPropVal
{
    self.finishedWatching = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetHistory"];
}

@end

@implementation KalturaAssetHistoryListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaAssetHistory";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetHistoryListResponse"];
    [aParams addIfDefinedKey:@"objects" withArray:self.objects];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@interface KalturaAppToken()
@property (nonatomic,copy) NSString* id;
@property (nonatomic,assign) int status;
@end

@implementation KalturaAppToken
@synthesize id = _id;
@synthesize expiry = _expiry;
@synthesize partnerId = _partnerId;
@synthesize sessionDuration = _sessionDuration;
@synthesize hashType = _hashType;
@synthesize sessionPrivileges = _sessionPrivileges;
@synthesize sessionType = _sessionType;
@synthesize status = _status;
@synthesize token = _token;
@synthesize sessionUserId = _sessionUserId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_expiry = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_sessionDuration = KALTURA_UNDEF_INT;
    self->_sessionType = KALTURA_UNDEF_INT;
    self->_status = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExpiry
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSessionDuration
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfHashType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSessionPrivileges
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSessionType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfToken
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSessionUserId
{
    return KFT_String;
}

- (void)setExpiryFromString:(NSString*)aPropVal
{
    self.expiry = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSessionDurationFromString:(NSString*)aPropVal
{
    self.sessionDuration = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSessionTypeFromString:(NSString*)aPropVal
{
    self.sessionType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setStatusFromString:(NSString*)aPropVal
{
    self.status = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAppToken"];
    [aParams addIfDefinedKey:@"expiry" withInt:self.expiry];
    [aParams addIfDefinedKey:@"partnerId" withInt:self.partnerId];
    [aParams addIfDefinedKey:@"sessionDuration" withInt:self.sessionDuration];
    [aParams addIfDefinedKey:@"hashType" withString:self.hashType];
    [aParams addIfDefinedKey:@"sessionPrivileges" withString:self.sessionPrivileges];
    [aParams addIfDefinedKey:@"sessionType" withInt:self.sessionType];
    [aParams addIfDefinedKey:@"token" withString:self.token];
    [aParams addIfDefinedKey:@"sessionUserId" withString:self.sessionUserId];
}

- (void)dealloc
{
    [self->_id release];
    [self->_hashType release];
    [self->_sessionPrivileges release];
    [self->_token release];
    [self->_sessionUserId release];
    [super dealloc];
}

@end

@implementation KalturaSession
@synthesize ks = _ks;
@synthesize sessionType = _sessionType;
@synthesize partnerId = _partnerId;
@synthesize userId = _userId;
@synthesize expiry = _expiry;
@synthesize privileges = _privileges;
@synthesize udid = _udid;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_sessionType = KALTURA_UNDEF_INT;
    self->_partnerId = KALTURA_UNDEF_INT;
    self->_expiry = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfKs
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSessionType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPartnerId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExpiry
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPrivileges
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUdid
{
    return KFT_String;
}

- (void)setSessionTypeFromString:(NSString*)aPropVal
{
    self.sessionType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPartnerIdFromString:(NSString*)aPropVal
{
    self.partnerId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setExpiryFromString:(NSString*)aPropVal
{
    self.expiry = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSession"];
    [aParams addIfDefinedKey:@"ks" withString:self.ks];
    [aParams addIfDefinedKey:@"sessionType" withInt:self.sessionType];
    [aParams addIfDefinedKey:@"partnerId" withInt:self.partnerId];
    [aParams addIfDefinedKey:@"userId" withString:self.userId];
    [aParams addIfDefinedKey:@"expiry" withInt:self.expiry];
    [aParams addIfDefinedKey:@"privileges" withString:self.privileges];
    [aParams addIfDefinedKey:@"udid" withString:self.udid];
}

- (void)dealloc
{
    [self->_ks release];
    [self->_userId release];
    [self->_privileges release];
    [self->_udid release];
    [super dealloc];
}

@end

@implementation KalturaSessionInfo
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSessionInfo"];
}

@end

@implementation KalturaAssetFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetFilter"];
}

@end

@implementation KalturaBundleFilter
@synthesize idEqual = _idEqual;
@synthesize typeIn = _typeIn;
@synthesize bundleTypeEqual = _bundleTypeEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBundleTypeEqual
{
    return KFT_String;
}

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBundleFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
    [aParams addIfDefinedKey:@"bundleTypeEqual" withString:self.bundleTypeEqual];
}

- (void)dealloc
{
    [self->_typeIn release];
    [self->_bundleTypeEqual release];
    [super dealloc];
}

@end

@implementation KalturaChannelExternalFilter
@synthesize idEqual = _idEqual;
@synthesize utcOffsetEqual = _utcOffsetEqual;
@synthesize freeText = _freeText;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUtcOffsetEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFreeText
{
    return KFT_String;
}

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaChannelExternalFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"utcOffsetEqual" withString:self.utcOffsetEqual];
    [aParams addIfDefinedKey:@"freeText" withString:self.freeText];
}

- (void)dealloc
{
    [self->_utcOffsetEqual release];
    [self->_freeText release];
    [super dealloc];
}

@end

@implementation KalturaChannelFilter
@synthesize idEqual = _idEqual;
@synthesize kSql = _kSql;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfKSql
{
    return KFT_String;
}

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaChannelFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"kSql" withString:self.kSql];
}

- (void)dealloc
{
    [self->_kSql release];
    [super dealloc];
}

@end

@implementation KalturaRelatedFilter
@synthesize kSql = _kSql;
@synthesize idEqual = _idEqual;
@synthesize typeIn = _typeIn;

- (KalturaFieldType)getTypeOfKSql
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRelatedFilter"];
    [aParams addIfDefinedKey:@"kSql" withString:self.kSql];
    [aParams addIfDefinedKey:@"idEqual" withString:self.idEqual];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
}

- (void)dealloc
{
    [self->_kSql release];
    [self->_idEqual release];
    [self->_typeIn release];
    [super dealloc];
}

@end

@implementation KalturaRelatedExternalFilter
@synthesize idEqual = _idEqual;
@synthesize typeIn = _typeIn;
@synthesize utcOffsetEqual = _utcOffsetEqual;
@synthesize freeText = _freeText;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_idEqual = KALTURA_UNDEF_INT;
    self->_utcOffsetEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUtcOffsetEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFreeText
{
    return KFT_String;
}

- (void)setIdEqualFromString:(NSString*)aPropVal
{
    self.idEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUtcOffsetEqualFromString:(NSString*)aPropVal
{
    self.utcOffsetEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRelatedExternalFilter"];
    [aParams addIfDefinedKey:@"idEqual" withInt:self.idEqual];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
    [aParams addIfDefinedKey:@"utcOffsetEqual" withInt:self.utcOffsetEqual];
    [aParams addIfDefinedKey:@"freeText" withString:self.freeText];
}

- (void)dealloc
{
    [self->_typeIn release];
    [self->_freeText release];
    [super dealloc];
}

@end

@implementation KalturaSearchAssetFilter
@synthesize kSql = _kSql;
@synthesize typeIn = _typeIn;
@synthesize idIn = _idIn;

- (KalturaFieldType)getTypeOfKSql
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSearchAssetFilter"];
    [aParams addIfDefinedKey:@"kSql" withString:self.kSql];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
}

- (void)dealloc
{
    [self->_kSql release];
    [self->_typeIn release];
    [self->_idIn release];
    [super dealloc];
}

@end

@implementation KalturaSearchExternalFilter
@synthesize query = _query;
@synthesize utcOffsetEqual = _utcOffsetEqual;
@synthesize typeIn = _typeIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_utcOffsetEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfQuery
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUtcOffsetEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (void)setUtcOffsetEqualFromString:(NSString*)aPropVal
{
    self.utcOffsetEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSearchExternalFilter"];
    [aParams addIfDefinedKey:@"query" withString:self.query];
    [aParams addIfDefinedKey:@"utcOffsetEqual" withInt:self.utcOffsetEqual];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
}

- (void)dealloc
{
    [self->_query release];
    [self->_typeIn release];
    [super dealloc];
}

@end

@interface KalturaAssetFileContext()
@property (nonatomic,copy) NSString* viewLifeCycle;
@property (nonatomic,copy) NSString* fullLifeCycle;
@property (nonatomic,assign) KALTURA_BOOL isOfflinePlayBack;
@end

@implementation KalturaAssetFileContext
@synthesize viewLifeCycle = _viewLifeCycle;
@synthesize fullLifeCycle = _fullLifeCycle;
@synthesize isOfflinePlayBack = _isOfflinePlayBack;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isOfflinePlayBack = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfViewLifeCycle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFullLifeCycle
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsOfflinePlayBack
{
    return KFT_Bool;
}

- (void)setIsOfflinePlayBackFromString:(NSString*)aPropVal
{
    self.isOfflinePlayBack = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetFileContext"];
}

- (void)dealloc
{
    [self->_viewLifeCycle release];
    [self->_fullLifeCycle release];
    [super dealloc];
}

@end

@implementation KalturaAssetStatisticsQuery
@synthesize assetIdIn = _assetIdIn;
@synthesize assetTypeEqual = _assetTypeEqual;
@synthesize startDateGreaterThanOrEqual = _startDateGreaterThanOrEqual;
@synthesize endDateGreaterThanOrEqual = _endDateGreaterThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_startDateGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_endDateGreaterThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetTypeEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStartDateGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDateGreaterThanOrEqual
{
    return KFT_Int;
}

- (void)setStartDateGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.startDateGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.endDateGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetStatisticsQuery"];
    [aParams addIfDefinedKey:@"assetIdIn" withString:self.assetIdIn];
    [aParams addIfDefinedKey:@"assetTypeEqual" withString:self.assetTypeEqual];
    [aParams addIfDefinedKey:@"startDateGreaterThanOrEqual" withInt:self.startDateGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"endDateGreaterThanOrEqual" withInt:self.endDateGreaterThanOrEqual];
}

- (void)dealloc
{
    [self->_assetIdIn release];
    [self->_assetTypeEqual release];
    [super dealloc];
}

@end

@implementation KalturaCDNPartnerSettings
@synthesize defaultAdapterId = _defaultAdapterId;
@synthesize defaultRecordingAdapterId = _defaultRecordingAdapterId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_defaultAdapterId = KALTURA_UNDEF_INT;
    self->_defaultRecordingAdapterId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfDefaultAdapterId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDefaultRecordingAdapterId
{
    return KFT_Int;
}

- (void)setDefaultAdapterIdFromString:(NSString*)aPropVal
{
    self.defaultAdapterId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDefaultRecordingAdapterIdFromString:(NSString*)aPropVal
{
    self.defaultRecordingAdapterId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCDNPartnerSettings"];
    [aParams addIfDefinedKey:@"defaultAdapterId" withInt:self.defaultAdapterId];
    [aParams addIfDefinedKey:@"defaultRecordingAdapterId" withInt:self.defaultRecordingAdapterId];
}

@end

@implementation KalturaRegionFilter
@synthesize externalIdIn = _externalIdIn;

- (KalturaFieldType)getTypeOfExternalIdIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRegionFilter"];
    [aParams addIfDefinedKey:@"externalIdIn" withString:self.externalIdIn];
}

- (void)dealloc
{
    [self->_externalIdIn release];
    [super dealloc];
}

@end

@implementation KalturaAssetCommentFilter
@synthesize assetIdEqual = _assetIdEqual;
@synthesize assetTypeEqual = _assetTypeEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetIdEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAssetTypeEqual
{
    return KFT_String;
}

- (void)setAssetIdEqualFromString:(NSString*)aPropVal
{
    self.assetIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetCommentFilter"];
    [aParams addIfDefinedKey:@"assetIdEqual" withInt:self.assetIdEqual];
    [aParams addIfDefinedKey:@"assetTypeEqual" withString:self.assetTypeEqual];
}

- (void)dealloc
{
    [self->_assetTypeEqual release];
    [super dealloc];
}

@end

@implementation KalturaKeyValue
@synthesize key = _key;
@synthesize value = _value;

- (KalturaFieldType)getTypeOfKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfValue
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaKeyValue"];
    [aParams addIfDefinedKey:@"key" withString:self.key];
    [aParams addIfDefinedKey:@"value" withString:self.value];
}

- (void)dealloc
{
    [self->_key release];
    [self->_value release];
    [super dealloc];
}

@end

@implementation KalturaPaymentGatewayConfiguration
@synthesize paymentGatewayeConfiguration = _paymentGatewayeConfiguration;

- (KalturaFieldType)getTypeOfPaymentGatewayeConfiguration
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfPaymentGatewayeConfiguration
{
    return @"KalturaKeyValue";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPaymentGatewayConfiguration"];
    [aParams addIfDefinedKey:@"paymentGatewayeConfiguration" withArray:self.paymentGatewayeConfiguration];
}

- (void)dealloc
{
    [self->_paymentGatewayeConfiguration release];
    [super dealloc];
}

@end

@implementation KalturaProductPriceFilter
@synthesize subscriptionIdIn = _subscriptionIdIn;
@synthesize fileIdIn = _fileIdIn;
@synthesize isLowest = _isLowest;
@synthesize couponCodeEqual = _couponCodeEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isLowest = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfSubscriptionIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFileIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsLowest
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfCouponCodeEqual
{
    return KFT_String;
}

- (void)setIsLowestFromString:(NSString*)aPropVal
{
    self.isLowest = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaProductPriceFilter"];
    [aParams addIfDefinedKey:@"subscriptionIdIn" withString:self.subscriptionIdIn];
    [aParams addIfDefinedKey:@"fileIdIn" withString:self.fileIdIn];
    [aParams addIfDefinedKey:@"isLowest" withBool:self.isLowest];
    [aParams addIfDefinedKey:@"couponCodeEqual" withString:self.couponCodeEqual];
}

- (void)dealloc
{
    [self->_subscriptionIdIn release];
    [self->_fileIdIn release];
    [self->_couponCodeEqual release];
    [super dealloc];
}

@end

@implementation KalturaSeriesRecordingFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSeriesRecordingFilter"];
}

@end

@interface KalturaHouseholdQuota()
@property (nonatomic,assign) int householdId;
@property (nonatomic,assign) int totalQuota;
@property (nonatomic,assign) int availableQuota;
@end

@implementation KalturaHouseholdQuota
@synthesize householdId = _householdId;
@synthesize totalQuota = _totalQuota;
@synthesize availableQuota = _availableQuota;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_householdId = KALTURA_UNDEF_INT;
    self->_totalQuota = KALTURA_UNDEF_INT;
    self->_availableQuota = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfHouseholdId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTotalQuota
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAvailableQuota
{
    return KFT_Int;
}

- (void)setHouseholdIdFromString:(NSString*)aPropVal
{
    self.householdId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTotalQuotaFromString:(NSString*)aPropVal
{
    self.totalQuota = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAvailableQuotaFromString:(NSString*)aPropVal
{
    self.availableQuota = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdQuota"];
}

@end

@implementation KalturaInboxMessageFilter
@synthesize typeIn = _typeIn;
@synthesize createdAtGreaterThanOrEqual = _createdAtGreaterThanOrEqual;
@synthesize createdAtLessThanOrEqual = _createdAtLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_createdAtGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_createdAtLessThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCreatedAtGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAtLessThanOrEqual
{
    return KFT_Int;
}

- (void)setCreatedAtGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.createdAtLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaInboxMessageFilter"];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
    [aParams addIfDefinedKey:@"createdAtGreaterThanOrEqual" withInt:self.createdAtGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"createdAtLessThanOrEqual" withInt:self.createdAtLessThanOrEqual];
}

- (void)dealloc
{
    [self->_typeIn release];
    [super dealloc];
}

@end

@implementation KalturaMessageTemplate
@synthesize message = _message;
@synthesize dateFormat = _dateFormat;
@synthesize assetType = _assetType;
@synthesize sound = _sound;
@synthesize action = _action;
@synthesize url = _url;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetType = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfMessage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDateFormat
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetType
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSound
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAction
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUrl
{
    return KFT_String;
}

- (void)setAssetTypeFromString:(NSString*)aPropVal
{
    self.assetType = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMessageTemplate"];
    [aParams addIfDefinedKey:@"message" withString:self.message];
    [aParams addIfDefinedKey:@"dateFormat" withString:self.dateFormat];
    [aParams addIfDefinedKey:@"assetType" withInt:self.assetType];
    [aParams addIfDefinedKey:@"sound" withString:self.sound];
    [aParams addIfDefinedKey:@"action" withString:self.action];
    [aParams addIfDefinedKey:@"url" withString:self.url];
}

- (void)dealloc
{
    [self->_message release];
    [self->_dateFormat release];
    [self->_sound release];
    [self->_action release];
    [self->_url release];
    [super dealloc];
}

@end

@implementation KalturaFollowTvSeriesFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFollowTvSeriesFilter"];
}

@end

@implementation KalturaPersonalFeedFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPersonalFeedFilter"];
}

@end

@implementation KalturaPpv
@synthesize id = _id;
@synthesize name = _name;
@synthesize price = _price;
@synthesize fileTypes = _fileTypes;
@synthesize discountModules = _discountModules;
@synthesize couponsGroup = _couponsGroup;
@synthesize descriptions = _descriptions;
@synthesize productCode = _productCode;
@synthesize isSubscriptionOnly = _isSubscriptionOnly;
@synthesize firstDeviceLimitation = _firstDeviceLimitation;
@synthesize usageModule = _usageModule;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isSubscriptionOnly = KALTURA_UNDEF_BOOL;
    self->_firstDeviceLimitation = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfPrice
{
    return @"KalturaPriceDetails";
}

- (KalturaFieldType)getTypeOfFileTypes
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfFileTypes
{
    return @"KalturaIntegerValue";
}

- (KalturaFieldType)getTypeOfDiscountModules
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfDiscountModules
{
    return @"KalturaDiscountModule";
}

- (KalturaFieldType)getTypeOfCouponsGroup
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfCouponsGroup
{
    return @"KalturaCouponsGroup";
}

- (KalturaFieldType)getTypeOfDescriptions
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfDescriptions
{
    return @"KalturaTranslationToken";
}

- (KalturaFieldType)getTypeOfProductCode
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsSubscriptionOnly
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfFirstDeviceLimitation
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfUsageModule
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfUsageModule
{
    return @"KalturaUsageModule";
}

- (void)setIsSubscriptionOnlyFromString:(NSString*)aPropVal
{
    self.isSubscriptionOnly = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setFirstDeviceLimitationFromString:(NSString*)aPropVal
{
    self.firstDeviceLimitation = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPpv"];
    [aParams addIfDefinedKey:@"id" withString:self.id];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"price" withObject:self.price];
    [aParams addIfDefinedKey:@"fileTypes" withArray:self.fileTypes];
    [aParams addIfDefinedKey:@"discountModules" withObject:self.discountModules];
    [aParams addIfDefinedKey:@"couponsGroup" withObject:self.couponsGroup];
    [aParams addIfDefinedKey:@"descriptions" withArray:self.descriptions];
    [aParams addIfDefinedKey:@"productCode" withString:self.productCode];
    [aParams addIfDefinedKey:@"isSubscriptionOnly" withBool:self.isSubscriptionOnly];
    [aParams addIfDefinedKey:@"firstDeviceLimitation" withBool:self.firstDeviceLimitation];
    [aParams addIfDefinedKey:@"usageModule" withObject:self.usageModule];
}

- (void)dealloc
{
    [self->_id release];
    [self->_name release];
    [self->_price release];
    [self->_fileTypes release];
    [self->_discountModules release];
    [self->_couponsGroup release];
    [self->_descriptions release];
    [self->_productCode release];
    [self->_usageModule release];
    [super dealloc];
}

@end

@implementation KalturaRecordingFilter
@synthesize statusIn = _statusIn;
@synthesize filterExpression = _filterExpression;

- (KalturaFieldType)getTypeOfStatusIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilterExpression
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRecordingFilter"];
    [aParams addIfDefinedKey:@"statusIn" withString:self.statusIn];
    [aParams addIfDefinedKey:@"filterExpression" withString:self.filterExpression];
}

- (void)dealloc
{
    [self->_statusIn release];
    [self->_filterExpression release];
    [super dealloc];
}

@end

@implementation KalturaLicensedUrl
@synthesize mainUrl = _mainUrl;
@synthesize altUrl = _altUrl;

- (KalturaFieldType)getTypeOfMainUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAltUrl
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLicensedUrl"];
    [aParams addIfDefinedKey:@"mainUrl" withString:self.mainUrl];
    [aParams addIfDefinedKey:@"altUrl" withString:self.altUrl];
}

- (void)dealloc
{
    [self->_mainUrl release];
    [self->_altUrl release];
    [super dealloc];
}

@end

@implementation KalturaLicensedUrlBaseRequest
@synthesize assetId = _assetId;

- (KalturaFieldType)getTypeOfAssetId
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLicensedUrlBaseRequest"];
    [aParams addIfDefinedKey:@"assetId" withString:self.assetId];
}

- (void)dealloc
{
    [self->_assetId release];
    [super dealloc];
}

@end

@implementation KalturaLicensedUrlMediaRequest
@synthesize contentId = _contentId;
@synthesize baseUrl = _baseUrl;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_contentId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfContentId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfBaseUrl
{
    return KFT_String;
}

- (void)setContentIdFromString:(NSString*)aPropVal
{
    self.contentId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLicensedUrlMediaRequest"];
    [aParams addIfDefinedKey:@"contentId" withInt:self.contentId];
    [aParams addIfDefinedKey:@"baseUrl" withString:self.baseUrl];
}

- (void)dealloc
{
    [self->_baseUrl release];
    [super dealloc];
}

@end

@implementation KalturaLicensedUrlEpgRequest
@synthesize streamType = _streamType;
@synthesize startDate = _startDate;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_startDate = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfStreamType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStartDate
{
    return KFT_Int;
}

- (void)setStartDateFromString:(NSString*)aPropVal
{
    self.startDate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLicensedUrlEpgRequest"];
    [aParams addIfDefinedKey:@"streamType" withString:self.streamType];
    [aParams addIfDefinedKey:@"startDate" withInt:self.startDate];
}

- (void)dealloc
{
    [self->_streamType release];
    [super dealloc];
}

@end

@implementation KalturaLicensedUrlRecordingRequest
@synthesize fileType = _fileType;

- (KalturaFieldType)getTypeOfFileType
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLicensedUrlRecordingRequest"];
    [aParams addIfDefinedKey:@"fileType" withString:self.fileType];
}

- (void)dealloc
{
    [self->_fileType release];
    [super dealloc];
}

@end

@implementation KalturaRegistryResponse
@synthesize announcementId = _announcementId;
@synthesize key = _key;
@synthesize url = _url;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_announcementId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAnnouncementId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUrl
{
    return KFT_String;
}

- (void)setAnnouncementIdFromString:(NSString*)aPropVal
{
    self.announcementId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaRegistryResponse"];
    [aParams addIfDefinedKey:@"announcementId" withInt:self.announcementId];
    [aParams addIfDefinedKey:@"key" withString:self.key];
    [aParams addIfDefinedKey:@"url" withString:self.url];
}

- (void)dealloc
{
    [self->_key release];
    [self->_url release];
    [super dealloc];
}

@end

@implementation KalturaNotificationsPartnerSettings
@synthesize pushNotificationEnabled = _pushNotificationEnabled;
@synthesize pushSystemAnnouncementsEnabled = _pushSystemAnnouncementsEnabled;
@synthesize pushStartHour = _pushStartHour;
@synthesize pushEndHour = _pushEndHour;
@synthesize inboxEnabled = _inboxEnabled;
@synthesize messageTTLDays = _messageTTLDays;
@synthesize automaticIssueFollowNotification = _automaticIssueFollowNotification;
@synthesize topicExpirationDurationDays = _topicExpirationDurationDays;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_pushNotificationEnabled = KALTURA_UNDEF_BOOL;
    self->_pushSystemAnnouncementsEnabled = KALTURA_UNDEF_BOOL;
    self->_pushStartHour = KALTURA_UNDEF_INT;
    self->_pushEndHour = KALTURA_UNDEF_INT;
    self->_inboxEnabled = KALTURA_UNDEF_BOOL;
    self->_messageTTLDays = KALTURA_UNDEF_INT;
    self->_automaticIssueFollowNotification = KALTURA_UNDEF_BOOL;
    self->_topicExpirationDurationDays = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPushNotificationEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPushSystemAnnouncementsEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPushStartHour
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPushEndHour
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfInboxEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfMessageTTLDays
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAutomaticIssueFollowNotification
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfTopicExpirationDurationDays
{
    return KFT_Int;
}

- (void)setPushNotificationEnabledFromString:(NSString*)aPropVal
{
    self.pushNotificationEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setPushSystemAnnouncementsEnabledFromString:(NSString*)aPropVal
{
    self.pushSystemAnnouncementsEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setPushStartHourFromString:(NSString*)aPropVal
{
    self.pushStartHour = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPushEndHourFromString:(NSString*)aPropVal
{
    self.pushEndHour = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setInboxEnabledFromString:(NSString*)aPropVal
{
    self.inboxEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setMessageTTLDaysFromString:(NSString*)aPropVal
{
    self.messageTTLDays = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAutomaticIssueFollowNotificationFromString:(NSString*)aPropVal
{
    self.automaticIssueFollowNotification = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setTopicExpirationDurationDaysFromString:(NSString*)aPropVal
{
    self.topicExpirationDurationDays = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNotificationsPartnerSettings"];
    [aParams addIfDefinedKey:@"pushNotificationEnabled" withBool:self.pushNotificationEnabled];
    [aParams addIfDefinedKey:@"pushSystemAnnouncementsEnabled" withBool:self.pushSystemAnnouncementsEnabled];
    [aParams addIfDefinedKey:@"pushStartHour" withInt:self.pushStartHour];
    [aParams addIfDefinedKey:@"pushEndHour" withInt:self.pushEndHour];
    [aParams addIfDefinedKey:@"inboxEnabled" withBool:self.inboxEnabled];
    [aParams addIfDefinedKey:@"messageTTLDays" withInt:self.messageTTLDays];
    [aParams addIfDefinedKey:@"automaticIssueFollowNotification" withBool:self.automaticIssueFollowNotification];
    [aParams addIfDefinedKey:@"topicExpirationDurationDays" withInt:self.topicExpirationDurationDays];
}

@end

@implementation KalturaNotificationsSettings
@synthesize pushNotificationEnabled = _pushNotificationEnabled;
@synthesize pushFollowEnabled = _pushFollowEnabled;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_pushNotificationEnabled = KALTURA_UNDEF_BOOL;
    self->_pushFollowEnabled = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfPushNotificationEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfPushFollowEnabled
{
    return KFT_Bool;
}

- (void)setPushNotificationEnabledFromString:(NSString*)aPropVal
{
    self.pushNotificationEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setPushFollowEnabledFromString:(NSString*)aPropVal
{
    self.pushFollowEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaNotificationsSettings"];
    [aParams addIfDefinedKey:@"pushNotificationEnabled" withBool:self.pushNotificationEnabled];
    [aParams addIfDefinedKey:@"pushFollowEnabled" withBool:self.pushFollowEnabled];
}

@end

@implementation KalturaPaymentMethodProfileFilter
@synthesize paymentGatewayIdEqual = _paymentGatewayIdEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_paymentGatewayIdEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPaymentGatewayIdEqual
{
    return KFT_Int;
}

- (void)setPaymentGatewayIdEqualFromString:(NSString*)aPropVal
{
    self.paymentGatewayIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPaymentMethodProfileFilter"];
    [aParams addIfDefinedKey:@"paymentGatewayIdEqual" withInt:self.paymentGatewayIdEqual];
}

@end

@implementation KalturaTimeShiftedTvPartnerSettings
@synthesize catchUpEnabled = _catchUpEnabled;
@synthesize cdvrEnabled = _cdvrEnabled;
@synthesize startOverEnabled = _startOverEnabled;
@synthesize trickPlayEnabled = _trickPlayEnabled;
@synthesize recordingScheduleWindowEnabled = _recordingScheduleWindowEnabled;
@synthesize protectionEnabled = _protectionEnabled;
@synthesize catchUpBufferLength = _catchUpBufferLength;
@synthesize trickPlayBufferLength = _trickPlayBufferLength;
@synthesize recordingScheduleWindow = _recordingScheduleWindow;
@synthesize paddingBeforeProgramStarts = _paddingBeforeProgramStarts;
@synthesize paddingAfterProgramEnds = _paddingAfterProgramEnds;
@synthesize protectionPeriod = _protectionPeriod;
@synthesize protectionQuotaPercentage = _protectionQuotaPercentage;
@synthesize recordingLifetimePeriod = _recordingLifetimePeriod;
@synthesize cleanupNoticePeroid = _cleanupNoticePeroid;
@synthesize seriesRecordingEnabled = _seriesRecordingEnabled;
@synthesize nonEntitledChannelPlaybackEnabled = _nonEntitledChannelPlaybackEnabled;
@synthesize nonExistingChannelPlaybackEnabled = _nonExistingChannelPlaybackEnabled;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_catchUpEnabled = KALTURA_UNDEF_BOOL;
    self->_cdvrEnabled = KALTURA_UNDEF_BOOL;
    self->_startOverEnabled = KALTURA_UNDEF_BOOL;
    self->_trickPlayEnabled = KALTURA_UNDEF_BOOL;
    self->_recordingScheduleWindowEnabled = KALTURA_UNDEF_BOOL;
    self->_protectionEnabled = KALTURA_UNDEF_BOOL;
    self->_catchUpBufferLength = KALTURA_UNDEF_INT;
    self->_trickPlayBufferLength = KALTURA_UNDEF_INT;
    self->_recordingScheduleWindow = KALTURA_UNDEF_INT;
    self->_paddingBeforeProgramStarts = KALTURA_UNDEF_INT;
    self->_paddingAfterProgramEnds = KALTURA_UNDEF_INT;
    self->_protectionPeriod = KALTURA_UNDEF_INT;
    self->_protectionQuotaPercentage = KALTURA_UNDEF_INT;
    self->_recordingLifetimePeriod = KALTURA_UNDEF_INT;
    self->_cleanupNoticePeroid = KALTURA_UNDEF_INT;
    self->_seriesRecordingEnabled = KALTURA_UNDEF_BOOL;
    self->_nonEntitledChannelPlaybackEnabled = KALTURA_UNDEF_BOOL;
    self->_nonExistingChannelPlaybackEnabled = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfCatchUpEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfCdvrEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfStartOverEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfTrickPlayEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfRecordingScheduleWindowEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfProtectionEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfCatchUpBufferLength
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfTrickPlayBufferLength
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRecordingScheduleWindow
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPaddingBeforeProgramStarts
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPaddingAfterProgramEnds
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProtectionPeriod
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProtectionQuotaPercentage
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRecordingLifetimePeriod
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCleanupNoticePeroid
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSeriesRecordingEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfNonEntitledChannelPlaybackEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfNonExistingChannelPlaybackEnabled
{
    return KFT_Bool;
}

- (void)setCatchUpEnabledFromString:(NSString*)aPropVal
{
    self.catchUpEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setCdvrEnabledFromString:(NSString*)aPropVal
{
    self.cdvrEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setStartOverEnabledFromString:(NSString*)aPropVal
{
    self.startOverEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setTrickPlayEnabledFromString:(NSString*)aPropVal
{
    self.trickPlayEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setRecordingScheduleWindowEnabledFromString:(NSString*)aPropVal
{
    self.recordingScheduleWindowEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setProtectionEnabledFromString:(NSString*)aPropVal
{
    self.protectionEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setCatchUpBufferLengthFromString:(NSString*)aPropVal
{
    self.catchUpBufferLength = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setTrickPlayBufferLengthFromString:(NSString*)aPropVal
{
    self.trickPlayBufferLength = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRecordingScheduleWindowFromString:(NSString*)aPropVal
{
    self.recordingScheduleWindow = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPaddingBeforeProgramStartsFromString:(NSString*)aPropVal
{
    self.paddingBeforeProgramStarts = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPaddingAfterProgramEndsFromString:(NSString*)aPropVal
{
    self.paddingAfterProgramEnds = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setProtectionPeriodFromString:(NSString*)aPropVal
{
    self.protectionPeriod = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setProtectionQuotaPercentageFromString:(NSString*)aPropVal
{
    self.protectionQuotaPercentage = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRecordingLifetimePeriodFromString:(NSString*)aPropVal
{
    self.recordingLifetimePeriod = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCleanupNoticePeroidFromString:(NSString*)aPropVal
{
    self.cleanupNoticePeroid = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSeriesRecordingEnabledFromString:(NSString*)aPropVal
{
    self.seriesRecordingEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setNonEntitledChannelPlaybackEnabledFromString:(NSString*)aPropVal
{
    self.nonEntitledChannelPlaybackEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setNonExistingChannelPlaybackEnabledFromString:(NSString*)aPropVal
{
    self.nonExistingChannelPlaybackEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTimeShiftedTvPartnerSettings"];
    [aParams addIfDefinedKey:@"catchUpEnabled" withBool:self.catchUpEnabled];
    [aParams addIfDefinedKey:@"cdvrEnabled" withBool:self.cdvrEnabled];
    [aParams addIfDefinedKey:@"startOverEnabled" withBool:self.startOverEnabled];
    [aParams addIfDefinedKey:@"trickPlayEnabled" withBool:self.trickPlayEnabled];
    [aParams addIfDefinedKey:@"recordingScheduleWindowEnabled" withBool:self.recordingScheduleWindowEnabled];
    [aParams addIfDefinedKey:@"protectionEnabled" withBool:self.protectionEnabled];
    [aParams addIfDefinedKey:@"catchUpBufferLength" withInt:self.catchUpBufferLength];
    [aParams addIfDefinedKey:@"trickPlayBufferLength" withInt:self.trickPlayBufferLength];
    [aParams addIfDefinedKey:@"recordingScheduleWindow" withInt:self.recordingScheduleWindow];
    [aParams addIfDefinedKey:@"paddingBeforeProgramStarts" withInt:self.paddingBeforeProgramStarts];
    [aParams addIfDefinedKey:@"paddingAfterProgramEnds" withInt:self.paddingAfterProgramEnds];
    [aParams addIfDefinedKey:@"protectionPeriod" withInt:self.protectionPeriod];
    [aParams addIfDefinedKey:@"protectionQuotaPercentage" withInt:self.protectionQuotaPercentage];
    [aParams addIfDefinedKey:@"recordingLifetimePeriod" withInt:self.recordingLifetimePeriod];
    [aParams addIfDefinedKey:@"cleanupNoticePeroid" withInt:self.cleanupNoticePeroid];
    [aParams addIfDefinedKey:@"seriesRecordingEnabled" withBool:self.seriesRecordingEnabled];
    [aParams addIfDefinedKey:@"nonEntitledChannelPlaybackEnabled" withBool:self.nonEntitledChannelPlaybackEnabled];
    [aParams addIfDefinedKey:@"nonExistingChannelPlaybackEnabled" withBool:self.nonExistingChannelPlaybackEnabled];
}

@end

@implementation KalturaTopicFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTopicFilter"];
}

@end

@interface KalturaUserAssetsListItem()
@property (nonatomic,copy) NSString* userId;
@end

@implementation KalturaUserAssetsListItem
@synthesize id = _id;
@synthesize orderIndex = _orderIndex;
@synthesize type = _type;
@synthesize userId = _userId;
@synthesize listType = _listType;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_orderIndex = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOrderIndex
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfListType
{
    return KFT_String;
}

- (void)setOrderIndexFromString:(NSString*)aPropVal
{
    self.orderIndex = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserAssetsListItem"];
    [aParams addIfDefinedKey:@"id" withString:self.id];
    [aParams addIfDefinedKey:@"orderIndex" withInt:self.orderIndex];
    [aParams addIfDefinedKey:@"type" withString:self.type];
    [aParams addIfDefinedKey:@"listType" withString:self.listType];
}

- (void)dealloc
{
    [self->_id release];
    [self->_type release];
    [self->_userId release];
    [self->_listType release];
    [super dealloc];
}

@end

@interface KalturaDeviceFamilyBase()
@property (nonatomic,assign) int id;
@end

@implementation KalturaDeviceFamilyBase
@synthesize id = _id;
@synthesize name = _name;
@synthesize deviceLimit = _deviceLimit;
@synthesize concurrentLimit = _concurrentLimit;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_deviceLimit = KALTURA_UNDEF_INT;
    self->_concurrentLimit = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDeviceLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfConcurrentLimit
{
    return KFT_Int;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDeviceLimitFromString:(NSString*)aPropVal
{
    self.deviceLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setConcurrentLimitFromString:(NSString*)aPropVal
{
    self.concurrentLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDeviceFamilyBase"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"deviceLimit" withInt:self.deviceLimit];
    [aParams addIfDefinedKey:@"concurrentLimit" withInt:self.concurrentLimit];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@interface KalturaHouseholdDevice()
@property (nonatomic,copy) NSString* status;
@end

@implementation KalturaHouseholdDevice
@synthesize householdId = _householdId;
@synthesize udid = _udid;
@synthesize name = _name;
@synthesize brand = _brand;
@synthesize brandId = _brandId;
@synthesize activatedOn = _activatedOn;
@synthesize status = _status;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_householdId = KALTURA_UNDEF_INT;
    self->_brandId = KALTURA_UNDEF_INT;
    self->_activatedOn = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfHouseholdId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUdid
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBrand
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBrandId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfActivatedOn
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (void)setHouseholdIdFromString:(NSString*)aPropVal
{
    self.householdId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setBrandIdFromString:(NSString*)aPropVal
{
    self.brandId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setActivatedOnFromString:(NSString*)aPropVal
{
    self.activatedOn = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdDevice"];
    [aParams addIfDefinedKey:@"householdId" withInt:self.householdId];
    [aParams addIfDefinedKey:@"udid" withString:self.udid];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"brand" withString:self.brand];
    [aParams addIfDefinedKey:@"brandId" withInt:self.brandId];
    [aParams addIfDefinedKey:@"activatedOn" withInt:self.activatedOn];
}

- (void)dealloc
{
    [self->_udid release];
    [self->_name release];
    [self->_brand release];
    [self->_status release];
    [super dealloc];
}

@end

@implementation KalturaHouseholdDeviceFamilyLimitations
@synthesize frequency = _frequency;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_frequency = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfFrequency
{
    return KFT_Int;
}

- (void)setFrequencyFromString:(NSString*)aPropVal
{
    self.frequency = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdDeviceFamilyLimitations"];
    [aParams addIfDefinedKey:@"frequency" withInt:self.frequency];
}

@end

@interface KalturaHouseholdLimitations()
@property (nonatomic,assign) int id;
@end

@implementation KalturaHouseholdLimitations
@synthesize id = _id;
@synthesize name = _name;
@synthesize concurrentLimit = _concurrentLimit;
@synthesize deviceLimit = _deviceLimit;
@synthesize deviceFrequency = _deviceFrequency;
@synthesize deviceFrequencyDescription = _deviceFrequencyDescription;
@synthesize userFrequency = _userFrequency;
@synthesize userFrequencyDescription = _userFrequencyDescription;
@synthesize npvrQuotaInSeconds = _npvrQuotaInSeconds;
@synthesize usersLimit = _usersLimit;
@synthesize deviceFamiliesLimitations = _deviceFamiliesLimitations;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_concurrentLimit = KALTURA_UNDEF_INT;
    self->_deviceLimit = KALTURA_UNDEF_INT;
    self->_deviceFrequency = KALTURA_UNDEF_INT;
    self->_userFrequency = KALTURA_UNDEF_INT;
    self->_npvrQuotaInSeconds = KALTURA_UNDEF_INT;
    self->_usersLimit = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfConcurrentLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDeviceLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDeviceFrequency
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDeviceFrequencyDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserFrequency
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUserFrequencyDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfNpvrQuotaInSeconds
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUsersLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDeviceFamiliesLimitations
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfDeviceFamiliesLimitations
{
    return @"KalturaHouseholdDeviceFamilyLimitations";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setConcurrentLimitFromString:(NSString*)aPropVal
{
    self.concurrentLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDeviceLimitFromString:(NSString*)aPropVal
{
    self.deviceLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDeviceFrequencyFromString:(NSString*)aPropVal
{
    self.deviceFrequency = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUserFrequencyFromString:(NSString*)aPropVal
{
    self.userFrequency = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setNpvrQuotaInSecondsFromString:(NSString*)aPropVal
{
    self.npvrQuotaInSeconds = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUsersLimitFromString:(NSString*)aPropVal
{
    self.usersLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdLimitations"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"concurrentLimit" withInt:self.concurrentLimit];
    [aParams addIfDefinedKey:@"deviceLimit" withInt:self.deviceLimit];
    [aParams addIfDefinedKey:@"deviceFrequency" withInt:self.deviceFrequency];
    [aParams addIfDefinedKey:@"deviceFrequencyDescription" withString:self.deviceFrequencyDescription];
    [aParams addIfDefinedKey:@"userFrequency" withInt:self.userFrequency];
    [aParams addIfDefinedKey:@"userFrequencyDescription" withString:self.userFrequencyDescription];
    [aParams addIfDefinedKey:@"npvrQuotaInSeconds" withInt:self.npvrQuotaInSeconds];
    [aParams addIfDefinedKey:@"usersLimit" withInt:self.usersLimit];
    [aParams addIfDefinedKey:@"deviceFamiliesLimitations" withArray:self.deviceFamiliesLimitations];
}

- (void)dealloc
{
    [self->_name release];
    [self->_deviceFrequencyDescription release];
    [self->_userFrequencyDescription release];
    [self->_deviceFamiliesLimitations release];
    [super dealloc];
}

@end

@implementation KalturaExportTaskFilter
@synthesize idIn = _idIn;

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaExportTaskFilter"];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
}

- (void)dealloc
{
    [self->_idIn release];
    [super dealloc];
}

@end

@implementation KalturaPartnerConfiguration
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPartnerConfiguration"];
}

@end

@implementation KalturaBillingPartnerConfig
@synthesize value = _value;
@synthesize type = _type;

- (KalturaFieldType)getTypeOfValue
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBillingPartnerConfig"];
    [aParams addIfDefinedKey:@"value" withString:self.value];
    [aParams addIfDefinedKey:@"type" withString:self.type];
}

- (void)dealloc
{
    [self->_value release];
    [self->_type release];
    [super dealloc];
}

@end

@interface KalturaOSSAdapterBaseProfile()
@property (nonatomic,assign) int id;
@end

@implementation KalturaOSSAdapterBaseProfile
@synthesize id = _id;
@synthesize name = _name;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOSSAdapterBaseProfile"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
}

- (void)dealloc
{
    [self->_name release];
    [super dealloc];
}

@end

@interface KalturaOSSAdapterProfile()
@property (nonatomic,copy) NSString* sharedSecret;
@end

@implementation KalturaOSSAdapterProfile
@synthesize isActive = _isActive;
@synthesize adapterUrl = _adapterUrl;
@synthesize ossAdapterSettings = _ossAdapterSettings;
@synthesize externalIdentifier = _externalIdentifier;
@synthesize sharedSecret = _sharedSecret;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isActive = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfIsActive
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAdapterUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOssAdapterSettings
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfOssAdapterSettings
{
    return @"KalturaStringValue";
}

- (KalturaFieldType)getTypeOfExternalIdentifier
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSharedSecret
{
    return KFT_String;
}

- (void)setIsActiveFromString:(NSString*)aPropVal
{
    self.isActive = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOSSAdapterProfile"];
    [aParams addIfDefinedKey:@"isActive" withBool:self.isActive];
    [aParams addIfDefinedKey:@"adapterUrl" withString:self.adapterUrl];
    [aParams addIfDefinedKey:@"ossAdapterSettings" withDictionary:self.ossAdapterSettings];
    [aParams addIfDefinedKey:@"externalIdentifier" withString:self.externalIdentifier];
}

- (void)dealloc
{
    [self->_adapterUrl release];
    [self->_ossAdapterSettings release];
    [self->_externalIdentifier release];
    [self->_sharedSecret release];
    [super dealloc];
}

@end

@implementation KalturaLoginSession
@synthesize ks = _ks;
@synthesize refreshToken = _refreshToken;

- (KalturaFieldType)getTypeOfKs
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfRefreshToken
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLoginSession"];
    [aParams addIfDefinedKey:@"ks" withString:self.ks];
    [aParams addIfDefinedKey:@"refreshToken" withString:self.refreshToken];
}

- (void)dealloc
{
    [self->_ks release];
    [self->_refreshToken release];
    [super dealloc];
}

@end

@implementation KalturaUserAssetRuleFilter
@synthesize assetIdEqual = _assetIdEqual;
@synthesize assetTypeEqual = _assetTypeEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_assetIdEqual = KALTURA_UNDEF_INT;
    self->_assetTypeEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAssetIdEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAssetTypeEqual
{
    return KFT_Int;
}

- (void)setAssetIdEqualFromString:(NSString*)aPropVal
{
    self.assetIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAssetTypeEqualFromString:(NSString*)aPropVal
{
    self.assetTypeEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserAssetRuleFilter"];
    [aParams addIfDefinedKey:@"assetIdEqual" withInt:self.assetIdEqual];
    [aParams addIfDefinedKey:@"assetTypeEqual" withInt:self.assetTypeEqual];
}

@end

@implementation KalturaAssetHistoryFilter
@synthesize typeIn = _typeIn;
@synthesize assetIdIn = _assetIdIn;
@synthesize statusEqual = _statusEqual;

- (KalturaFieldType)getTypeOfTypeIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatusEqual
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAssetHistoryFilter"];
    [aParams addIfDefinedKey:@"typeIn" withString:self.typeIn];
    [aParams addIfDefinedKey:@"assetIdIn" withString:self.assetIdIn];
    [aParams addIfDefinedKey:@"statusEqual" withString:self.statusEqual];
}

- (void)dealloc
{
    [self->_typeIn release];
    [self->_assetIdIn release];
    [self->_statusEqual release];
    [super dealloc];
}

@end

@interface KalturaHousehold()
@property (nonatomic,assign) int id;
@property (nonatomic,copy) NSString* state;
@end

@implementation KalturaHousehold
@synthesize id = _id;
@synthesize name = _name;
@synthesize description = _description;
@synthesize externalId = _externalId;
@synthesize householdLimitationsId = _householdLimitationsId;
@synthesize devicesLimit = _devicesLimit;
@synthesize usersLimit = _usersLimit;
@synthesize concurrentLimit = _concurrentLimit;
@synthesize regionId = _regionId;
@synthesize state = _state;
@synthesize isFrequencyEnabled = _isFrequencyEnabled;
@synthesize frequencyNextDeviceAction = _frequencyNextDeviceAction;
@synthesize frequencyNextUserAction = _frequencyNextUserAction;
@synthesize restriction = _restriction;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_householdLimitationsId = KALTURA_UNDEF_INT;
    self->_devicesLimit = KALTURA_UNDEF_INT;
    self->_usersLimit = KALTURA_UNDEF_INT;
    self->_concurrentLimit = KALTURA_UNDEF_INT;
    self->_regionId = KALTURA_UNDEF_INT;
    self->_isFrequencyEnabled = KALTURA_UNDEF_BOOL;
    self->_frequencyNextDeviceAction = KALTURA_UNDEF_INT;
    self->_frequencyNextUserAction = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDescription
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExternalId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfHouseholdLimitationsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfDevicesLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUsersLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfConcurrentLimit
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRegionId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfState
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsFrequencyEnabled
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfFrequencyNextDeviceAction
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFrequencyNextUserAction
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfRestriction
{
    return KFT_String;
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setHouseholdLimitationsIdFromString:(NSString*)aPropVal
{
    self.householdLimitationsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setDevicesLimitFromString:(NSString*)aPropVal
{
    self.devicesLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setUsersLimitFromString:(NSString*)aPropVal
{
    self.usersLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setConcurrentLimitFromString:(NSString*)aPropVal
{
    self.concurrentLimit = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setRegionIdFromString:(NSString*)aPropVal
{
    self.regionId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsFrequencyEnabledFromString:(NSString*)aPropVal
{
    self.isFrequencyEnabled = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)setFrequencyNextDeviceActionFromString:(NSString*)aPropVal
{
    self.frequencyNextDeviceAction = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFrequencyNextUserActionFromString:(NSString*)aPropVal
{
    self.frequencyNextUserAction = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHousehold"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"description" withString:self.description];
    [aParams addIfDefinedKey:@"externalId" withString:self.externalId];
    [aParams addIfDefinedKey:@"householdLimitationsId" withInt:self.householdLimitationsId];
    [aParams addIfDefinedKey:@"devicesLimit" withInt:self.devicesLimit];
    [aParams addIfDefinedKey:@"usersLimit" withInt:self.usersLimit];
    [aParams addIfDefinedKey:@"concurrentLimit" withInt:self.concurrentLimit];
    [aParams addIfDefinedKey:@"regionId" withInt:self.regionId];
    [aParams addIfDefinedKey:@"isFrequencyEnabled" withBool:self.isFrequencyEnabled];
    [aParams addIfDefinedKey:@"frequencyNextDeviceAction" withInt:self.frequencyNextDeviceAction];
    [aParams addIfDefinedKey:@"frequencyNextUserAction" withInt:self.frequencyNextUserAction];
    [aParams addIfDefinedKey:@"restriction" withString:self.restriction];
}

- (void)dealloc
{
    [self->_name release];
    [self->_description release];
    [self->_externalId release];
    [self->_state release];
    [self->_restriction release];
    [super dealloc];
}

@end

@implementation KalturaDevicePin
@synthesize pin = _pin;

- (KalturaFieldType)getTypeOfPin
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaDevicePin"];
    [aParams addIfDefinedKey:@"pin" withString:self.pin];
}

- (void)dealloc
{
    [self->_pin release];
    [super dealloc];
}

@end

@implementation KalturaBookmarkFilter
@synthesize assetIdIn = _assetIdIn;
@synthesize assetTypeEqual = _assetTypeEqual;

- (KalturaFieldType)getTypeOfAssetIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAssetTypeEqual
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaBookmarkFilter"];
    [aParams addIfDefinedKey:@"assetIdIn" withString:self.assetIdIn];
    [aParams addIfDefinedKey:@"assetTypeEqual" withString:self.assetTypeEqual];
}

- (void)dealloc
{
    [self->_assetIdIn release];
    [self->_assetTypeEqual release];
    [super dealloc];
}

@end

@implementation KalturaPin
@synthesize pin = _pin;
@synthesize origin = _origin;
@synthesize type = _type;

- (KalturaFieldType)getTypeOfPin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfOrigin
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfType
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPin"];
    [aParams addIfDefinedKey:@"pin" withString:self.pin];
    [aParams addIfDefinedKey:@"origin" withString:self.origin];
    [aParams addIfDefinedKey:@"type" withString:self.type];
}

- (void)dealloc
{
    [self->_pin release];
    [self->_origin release];
    [self->_type release];
    [super dealloc];
}

@end

@implementation KalturaPurchaseSettings
@synthesize permission = _permission;

- (KalturaFieldType)getTypeOfPermission
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPurchaseSettings"];
    [aParams addIfDefinedKey:@"permission" withString:self.permission];
}

- (void)dealloc
{
    [self->_permission release];
    [super dealloc];
}

@end

@interface KalturaHouseholdUser()
@property (nonatomic,copy) NSString* status;
@end

@implementation KalturaHouseholdUser
@synthesize householdId = _householdId;
@synthesize userId = _userId;
@synthesize isMaster = _isMaster;
@synthesize householdMasterUsername = _householdMasterUsername;
@synthesize status = _status;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_householdId = KALTURA_UNDEF_INT;
    self->_isMaster = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfHouseholdId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsMaster
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfHouseholdMasterUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (void)setHouseholdIdFromString:(NSString*)aPropVal
{
    self.householdId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setIsMasterFromString:(NSString*)aPropVal
{
    self.isMaster = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaHouseholdUser"];
    [aParams addIfDefinedKey:@"householdId" withInt:self.householdId];
    [aParams addIfDefinedKey:@"userId" withString:self.userId];
    [aParams addIfDefinedKey:@"isMaster" withBool:self.isMaster];
    [aParams addIfDefinedKey:@"householdMasterUsername" withString:self.householdMasterUsername];
}

- (void)dealloc
{
    [self->_userId release];
    [self->_householdMasterUsername release];
    [self->_status release];
    [super dealloc];
}

@end

@implementation KalturaSubscriptionFilter
@synthesize subscriptionIdIn = _subscriptionIdIn;
@synthesize mediaFileIdEqual = _mediaFileIdEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_mediaFileIdEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfSubscriptionIdIn
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMediaFileIdEqual
{
    return KFT_Int;
}

- (void)setMediaFileIdEqualFromString:(NSString*)aPropVal
{
    self.mediaFileIdEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSubscriptionFilter"];
    [aParams addIfDefinedKey:@"subscriptionIdIn" withString:self.subscriptionIdIn];
    [aParams addIfDefinedKey:@"mediaFileIdEqual" withInt:self.mediaFileIdEqual];
}

- (void)dealloc
{
    [self->_subscriptionIdIn release];
    [super dealloc];
}

@end

@interface KalturaOTTCategory()
@property (nonatomic,assign) int id;
@end

@implementation KalturaOTTCategory
@synthesize id = _id;
@synthesize name = _name;
@synthesize parentCategoryId = _parentCategoryId;
@synthesize childCategories = _childCategories;
@synthesize channels = _channels;
@synthesize images = _images;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_id = KALTURA_UNDEF_INT;
    self->_parentCategoryId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfParentCategoryId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfChildCategories
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfChildCategories
{
    return @"KalturaOTTCategory";
}

- (KalturaFieldType)getTypeOfChannels
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfChannels
{
    return @"KalturaChannel";
}

- (KalturaFieldType)getTypeOfImages
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfImages
{
    return @"KalturaMediaImage";
}

- (void)setIdFromString:(NSString*)aPropVal
{
    self.id = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setParentCategoryIdFromString:(NSString*)aPropVal
{
    self.parentCategoryId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOTTCategory"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"parentCategoryId" withInt:self.parentCategoryId];
    [aParams addIfDefinedKey:@"childCategories" withArray:self.childCategories];
    [aParams addIfDefinedKey:@"channels" withArray:self.channels];
    [aParams addIfDefinedKey:@"images" withArray:self.images];
}

- (void)dealloc
{
    [self->_name release];
    [self->_childCategories release];
    [self->_channels release];
    [self->_images release];
    [super dealloc];
}

@end

@interface KalturaCoupon()
@property (nonatomic,retain) KalturaCouponsGroup* couponsGroup;
@property (nonatomic,copy) NSString* status;
@end

@implementation KalturaCoupon
@synthesize couponsGroup = _couponsGroup;
@synthesize status = _status;

- (KalturaFieldType)getTypeOfCouponsGroup
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfCouponsGroup
{
    return @"KalturaCouponsGroup";
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCoupon"];
}

- (void)dealloc
{
    [self->_couponsGroup release];
    [self->_status release];
    [super dealloc];
}

@end

@implementation KalturaEntitlementFilter
@synthesize entitlementTypeEqual = _entitlementTypeEqual;
@synthesize entityReferenceEqual = _entityReferenceEqual;
@synthesize isExpiredEqual = _isExpiredEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isExpiredEqual = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfEntitlementTypeEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntityReferenceEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsExpiredEqual
{
    return KFT_Bool;
}

- (void)setIsExpiredEqualFromString:(NSString*)aPropVal
{
    self.isExpiredEqual = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaEntitlementFilter"];
    [aParams addIfDefinedKey:@"entitlementTypeEqual" withString:self.entitlementTypeEqual];
    [aParams addIfDefinedKey:@"entityReferenceEqual" withString:self.entityReferenceEqual];
    [aParams addIfDefinedKey:@"isExpiredEqual" withBool:self.isExpiredEqual];
}

- (void)dealloc
{
    [self->_entitlementTypeEqual release];
    [self->_entityReferenceEqual release];
    [super dealloc];
}

@end

@implementation KalturaFavoriteFilter
@synthesize mediaTypeIn = _mediaTypeIn;
@synthesize mediaIdIn = _mediaIdIn;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_mediaTypeIn = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfMediaTypeIn
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMediaIdIn
{
    return KFT_String;
}

- (void)setMediaTypeInFromString:(NSString*)aPropVal
{
    self.mediaTypeIn = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFavoriteFilter"];
    [aParams addIfDefinedKey:@"mediaTypeIn" withInt:self.mediaTypeIn];
    [aParams addIfDefinedKey:@"mediaIdIn" withString:self.mediaIdIn];
}

- (void)dealloc
{
    [self->_mediaIdIn release];
    [super dealloc];
}

@end

@interface KalturaSocial()
@property (nonatomic,copy) NSString* id;
@property (nonatomic,copy) NSString* userId;
@property (nonatomic,copy) NSString* status;
@end

@implementation KalturaSocial
@synthesize id = _id;
@synthesize name = _name;
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize email = _email;
@synthesize gender = _gender;
@synthesize userId = _userId;
@synthesize birthday = _birthday;
@synthesize status = _status;
@synthesize pictureUrl = _pictureUrl;

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFirstName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfLastName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEmail
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfGender
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBirthday
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPictureUrl
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSocial"];
    [aParams addIfDefinedKey:@"name" withString:self.name];
    [aParams addIfDefinedKey:@"firstName" withString:self.firstName];
    [aParams addIfDefinedKey:@"lastName" withString:self.lastName];
    [aParams addIfDefinedKey:@"email" withString:self.email];
    [aParams addIfDefinedKey:@"gender" withString:self.gender];
    [aParams addIfDefinedKey:@"birthday" withString:self.birthday];
    [aParams addIfDefinedKey:@"pictureUrl" withString:self.pictureUrl];
}

- (void)dealloc
{
    [self->_id release];
    [self->_name release];
    [self->_firstName release];
    [self->_lastName release];
    [self->_email release];
    [self->_gender release];
    [self->_userId release];
    [self->_birthday release];
    [self->_status release];
    [self->_pictureUrl release];
    [super dealloc];
}

@end

@implementation KalturaFacebookSocial
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaFacebookSocial"];
}

@end

@implementation KalturaLoginResponse
@synthesize user = _user;
@synthesize loginSession = _loginSession;

- (KalturaFieldType)getTypeOfUser
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfUser
{
    return @"KalturaOTTUser";
}

- (KalturaFieldType)getTypeOfLoginSession
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfLoginSession
{
    return @"KalturaLoginSession";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaLoginResponse"];
    [aParams addIfDefinedKey:@"user" withObject:self.user];
    [aParams addIfDefinedKey:@"loginSession" withObject:self.loginSession];
}

- (void)dealloc
{
    [self->_user release];
    [self->_loginSession release];
    [super dealloc];
}

@end

@implementation KalturaSocialConfig
@synthesize appId = _appId;
@synthesize permissions = _permissions;

- (KalturaFieldType)getTypeOfAppId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPermissions
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaSocialConfig"];
    [aParams addIfDefinedKey:@"appId" withString:self.appId];
    [aParams addIfDefinedKey:@"permissions" withString:self.permissions];
}

- (void)dealloc
{
    [self->_appId release];
    [self->_permissions release];
    [super dealloc];
}

@end

@implementation KalturaPurchaseBase
@synthesize productId = _productId;
@synthesize contentId = _contentId;
@synthesize productType = _productType;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_productId = KALTURA_UNDEF_INT;
    self->_contentId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfProductId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfContentId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfProductType
{
    return KFT_String;
}

- (void)setProductIdFromString:(NSString*)aPropVal
{
    self.productId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setContentIdFromString:(NSString*)aPropVal
{
    self.contentId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPurchaseBase"];
    [aParams addIfDefinedKey:@"productId" withInt:self.productId];
    [aParams addIfDefinedKey:@"contentId" withInt:self.contentId];
    [aParams addIfDefinedKey:@"productType" withString:self.productType];
}

- (void)dealloc
{
    [self->_productType release];
    [super dealloc];
}

@end

@implementation KalturaPurchase
@synthesize currency = _currency;
@synthesize price = _price;
@synthesize paymentMethodId = _paymentMethodId;
@synthesize paymentGatewayId = _paymentGatewayId;
@synthesize coupon = _coupon;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_price = KALTURA_UNDEF_FLOAT;
    self->_paymentMethodId = KALTURA_UNDEF_INT;
    self->_paymentGatewayId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfCurrency
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPrice
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfPaymentMethodId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfPaymentGatewayId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCoupon
{
    return KFT_String;
}

- (void)setPriceFromString:(NSString*)aPropVal
{
    self.price = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setPaymentMethodIdFromString:(NSString*)aPropVal
{
    self.paymentMethodId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setPaymentGatewayIdFromString:(NSString*)aPropVal
{
    self.paymentGatewayId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPurchase"];
    [aParams addIfDefinedKey:@"currency" withString:self.currency];
    [aParams addIfDefinedKey:@"price" withFloat:self.price];
    [aParams addIfDefinedKey:@"paymentMethodId" withInt:self.paymentMethodId];
    [aParams addIfDefinedKey:@"paymentGatewayId" withInt:self.paymentGatewayId];
    [aParams addIfDefinedKey:@"coupon" withString:self.coupon];
}

- (void)dealloc
{
    [self->_currency release];
    [self->_coupon release];
    [super dealloc];
}

@end

@implementation KalturaPurchaseSession
@synthesize previewModuleId = _previewModuleId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_previewModuleId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPreviewModuleId
{
    return KFT_Int;
}

- (void)setPreviewModuleIdFromString:(NSString*)aPropVal
{
    self.previewModuleId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaPurchaseSession"];
    [aParams addIfDefinedKey:@"previewModuleId" withInt:self.previewModuleId];
}

@end

@implementation KalturaExternalReceipt
@synthesize receiptId = _receiptId;
@synthesize paymentGatewayName = _paymentGatewayName;

- (KalturaFieldType)getTypeOfReceiptId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPaymentGatewayName
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaExternalReceipt"];
    [aParams addIfDefinedKey:@"receiptId" withString:self.receiptId];
    [aParams addIfDefinedKey:@"paymentGatewayName" withString:self.paymentGatewayName];
}

- (void)dealloc
{
    [self->_receiptId release];
    [self->_paymentGatewayName release];
    [super dealloc];
}

@end

@implementation KalturaTransaction
@synthesize id = _id;
@synthesize paymentGatewayReferenceId = _paymentGatewayReferenceId;
@synthesize paymentGatewayResponseId = _paymentGatewayResponseId;
@synthesize state = _state;
@synthesize failReasonCode = _failReasonCode;
@synthesize createdAt = _createdAt;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_failReasonCode = KALTURA_UNDEF_INT;
    self->_createdAt = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPaymentGatewayReferenceId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPaymentGatewayResponseId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfState
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFailReasonCode
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCreatedAt
{
    return KFT_Int;
}

- (void)setFailReasonCodeFromString:(NSString*)aPropVal
{
    self.failReasonCode = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setCreatedAtFromString:(NSString*)aPropVal
{
    self.createdAt = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTransaction"];
    [aParams addIfDefinedKey:@"id" withString:self.id];
    [aParams addIfDefinedKey:@"paymentGatewayReferenceId" withString:self.paymentGatewayReferenceId];
    [aParams addIfDefinedKey:@"paymentGatewayResponseId" withString:self.paymentGatewayResponseId];
    [aParams addIfDefinedKey:@"state" withString:self.state];
    [aParams addIfDefinedKey:@"failReasonCode" withInt:self.failReasonCode];
    [aParams addIfDefinedKey:@"createdAt" withInt:self.createdAt];
}

- (void)dealloc
{
    [self->_id release];
    [self->_paymentGatewayReferenceId release];
    [self->_paymentGatewayResponseId release];
    [self->_state release];
    [super dealloc];
}

@end

@implementation KalturaTransactionStatus
@synthesize adapterTransactionStatus = _adapterTransactionStatus;
@synthesize externalId = _externalId;
@synthesize externalStatus = _externalStatus;
@synthesize externalMessage = _externalMessage;
@synthesize failReason = _failReason;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_failReason = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfAdapterTransactionStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExternalId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExternalStatus
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExternalMessage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFailReason
{
    return KFT_Int;
}

- (void)setFailReasonFromString:(NSString*)aPropVal
{
    self.failReason = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTransactionStatus"];
    [aParams addIfDefinedKey:@"adapterTransactionStatus" withString:self.adapterTransactionStatus];
    [aParams addIfDefinedKey:@"externalId" withString:self.externalId];
    [aParams addIfDefinedKey:@"externalStatus" withString:self.externalStatus];
    [aParams addIfDefinedKey:@"externalMessage" withString:self.externalMessage];
    [aParams addIfDefinedKey:@"failReason" withInt:self.failReason];
}

- (void)dealloc
{
    [self->_adapterTransactionStatus release];
    [self->_externalId release];
    [self->_externalStatus release];
    [self->_externalMessage release];
    [super dealloc];
}

@end

@interface KalturaUserLoginPin()
@property (nonatomic,copy) NSString* userId;
@end

@implementation KalturaUserLoginPin
@synthesize pinCode = _pinCode;
@synthesize expirationTime = _expirationTime;
@synthesize userId = _userId;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_expirationTime = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfPinCode
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExpirationTime
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUserId
{
    return KFT_String;
}

- (void)setExpirationTimeFromString:(NSString*)aPropVal
{
    self.expirationTime = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserLoginPin"];
    [aParams addIfDefinedKey:@"pinCode" withString:self.pinCode];
    [aParams addIfDefinedKey:@"expirationTime" withInt:self.expirationTime];
}

- (void)dealloc
{
    [self->_pinCode release];
    [self->_userId release];
    [super dealloc];
}

@end

@implementation KalturaParentalRuleFilter
@synthesize entityReferenceEqual = _entityReferenceEqual;

- (KalturaFieldType)getTypeOfEntityReferenceEqual
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaParentalRuleFilter"];
    [aParams addIfDefinedKey:@"entityReferenceEqual" withString:self.entityReferenceEqual];
}

- (void)dealloc
{
    [self->_entityReferenceEqual release];
    [super dealloc];
}

@end

@implementation KalturaTransactionHistoryFilter
@synthesize entityReferenceEqual = _entityReferenceEqual;
@synthesize startDateGreaterThanOrEqual = _startDateGreaterThanOrEqual;
@synthesize endDateLessThanOrEqual = _endDateLessThanOrEqual;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_startDateGreaterThanOrEqual = KALTURA_UNDEF_INT;
    self->_endDateLessThanOrEqual = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfEntityReferenceEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfStartDateGreaterThanOrEqual
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfEndDateLessThanOrEqual
{
    return KFT_Int;
}

- (void)setStartDateGreaterThanOrEqualFromString:(NSString*)aPropVal
{
    self.startDateGreaterThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setEndDateLessThanOrEqualFromString:(NSString*)aPropVal
{
    self.endDateLessThanOrEqual = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTransactionHistoryFilter"];
    [aParams addIfDefinedKey:@"entityReferenceEqual" withString:self.entityReferenceEqual];
    [aParams addIfDefinedKey:@"startDateGreaterThanOrEqual" withInt:self.startDateGreaterThanOrEqual];
    [aParams addIfDefinedKey:@"endDateLessThanOrEqual" withInt:self.endDateLessThanOrEqual];
}

- (void)dealloc
{
    [self->_entityReferenceEqual release];
    [super dealloc];
}

@end

@implementation KalturaUserRoleFilter
@synthesize idIn = _idIn;

- (KalturaFieldType)getTypeOfIdIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaUserRoleFilter"];
    [aParams addIfDefinedKey:@"idIn" withString:self.idIn];
}

- (void)dealloc
{
    [self->_idIn release];
    [super dealloc];
}

@end

@implementation KalturaOTTUserFilter
@synthesize userByEqual = _userByEqual;
@synthesize valueEqual = _valueEqual;

- (KalturaFieldType)getTypeOfUserByEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfValueEqual
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOTTUserFilter"];
    [aParams addIfDefinedKey:@"userByEqual" withString:self.userByEqual];
    [aParams addIfDefinedKey:@"valueEqual" withString:self.valueEqual];
}

- (void)dealloc
{
    [self->_userByEqual release];
    [self->_valueEqual release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaAnnouncementService
- (KalturaAnnouncement*)addWithAnnouncement:(KalturaAnnouncement*)aAnnouncement
{
    [self.client.params addIfDefinedKey:@"announcement" withObject:aAnnouncement];
    return [self.client queueObjectService:@"announcement" withAction:@"add" withExpectedType:@"KalturaAnnouncement"];
}

- (KALTURA_BOOL)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueBoolService:@"announcement" withAction:@"delete"];
}

- (KALTURA_BOOL)enableSystemAnnouncements
{
    return [self.client queueBoolService:@"announcement" withAction:@"enableSystemAnnouncements"];
}

- (KalturaAnnouncementListResponse*)listWithFilter:(KalturaAnnouncementFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"announcement" withAction:@"list" withExpectedType:@"KalturaAnnouncementListResponse"];
}

- (KalturaAnnouncementListResponse*)listWithFilter:(KalturaAnnouncementFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaAnnouncement*)updateWithAnnouncementId:(int)aAnnouncementId withAnnouncement:(KalturaAnnouncement*)aAnnouncement
{
    [self.client.params addIfDefinedKey:@"announcementId" withInt:aAnnouncementId];
    [self.client.params addIfDefinedKey:@"announcement" withObject:aAnnouncement];
    return [self.client queueObjectService:@"announcement" withAction:@"update" withExpectedType:@"KalturaAnnouncement"];
}

- (KALTURA_BOOL)updateStatusWithId:(int)aId withStatus:(KALTURA_BOOL)aStatus
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"status" withBool:aStatus];
    return [self.client queueBoolService:@"announcement" withAction:@"updateStatus"];
}

@end

@implementation KalturaAppTokenService
- (KalturaAppToken*)addWithAppToken:(KalturaAppToken*)aAppToken
{
    [self.client.params addIfDefinedKey:@"appToken" withObject:aAppToken];
    return [self.client queueObjectService:@"apptoken" withAction:@"add" withExpectedType:@"KalturaAppToken"];
}

- (KALTURA_BOOL)deleteWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    return [self.client queueBoolService:@"apptoken" withAction:@"delete"];
}

- (KalturaAppToken*)getWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    return [self.client queueObjectService:@"apptoken" withAction:@"get" withExpectedType:@"KalturaAppToken"];
}

- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId withType:(int)aType withExpiry:(int)aExpiry withUdid:(NSString*)aUdid
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"tokenHash" withString:aTokenHash];
    [self.client.params addIfDefinedKey:@"userId" withString:aUserId];
    [self.client.params addIfDefinedKey:@"type" withInt:aType];
    [self.client.params addIfDefinedKey:@"expiry" withInt:aExpiry];
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    return [self.client queueObjectService:@"apptoken" withAction:@"startSession" withExpectedType:@"KalturaSessionInfo"];
}

- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId withType:(int)aType withExpiry:(int)aExpiry
{
    return [self startSessionWithId:aId withTokenHash:aTokenHash withUserId:aUserId withType:aType withExpiry:aExpiry withUdid:nil];
}

- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId withType:(int)aType
{
    return [self startSessionWithId:aId withTokenHash:aTokenHash withUserId:aUserId withType:aType withExpiry:KALTURA_UNDEF_INT];
}

- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash withUserId:(NSString*)aUserId
{
    return [self startSessionWithId:aId withTokenHash:aTokenHash withUserId:aUserId withType:KALTURA_UNDEF_INT];
}

- (KalturaSessionInfo*)startSessionWithId:(NSString*)aId withTokenHash:(NSString*)aTokenHash
{
    return [self startSessionWithId:aId withTokenHash:aTokenHash withUserId:nil];
}

@end

@implementation KalturaAssetCommentService
- (KalturaAssetComment*)addWithComment:(KalturaAssetComment*)aComment
{
    [self.client.params addIfDefinedKey:@"comment" withObject:aComment];
    return [self.client queueObjectService:@"assetcomment" withAction:@"add" withExpectedType:@"KalturaAssetComment"];
}

- (KalturaAssetCommentListResponse*)listWithFilter:(KalturaAssetCommentFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"assetcomment" withAction:@"list" withExpectedType:@"KalturaAssetCommentListResponse"];
}

- (KalturaAssetCommentListResponse*)listWithFilter:(KalturaAssetCommentFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

@end

@implementation KalturaAssetService
- (KalturaAsset*)getWithId:(NSString*)aId withAssetReferenceType:(NSString*)aAssetReferenceType
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"assetReferenceType" withString:aAssetReferenceType];
    return [self.client queueObjectService:@"asset" withAction:@"get" withExpectedType:@"KalturaAsset"];
}

- (KalturaAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"asset" withAction:@"list" withExpectedType:@"KalturaAssetListResponse"];
}

- (KalturaAssetListResponse*)listWithFilter:(KalturaAssetFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaAssetListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaAssetFileService
- (KalturaAssetFileContext*)getContextWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    return [self.client queueObjectService:@"assetfile" withAction:@"getContext" withExpectedType:@"KalturaAssetFileContext"];
}

@end

@implementation KalturaAssetHistoryService
- (KalturaAssetHistoryListResponse*)listWithFilter:(KalturaAssetHistoryFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"assethistory" withAction:@"list" withExpectedType:@"KalturaAssetHistoryListResponse"];
}

- (KalturaAssetHistoryListResponse*)listWithFilter:(KalturaAssetHistoryFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaAssetHistoryListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaAssetStatisticsService
- (KalturaAssetStatisticsListResponse*)queryWithQuery:(KalturaAssetStatisticsQuery*)aQuery
{
    [self.client.params addIfDefinedKey:@"query" withObject:aQuery];
    return [self.client queueObjectService:@"assetstatistics" withAction:@"query" withExpectedType:@"KalturaAssetStatisticsListResponse"];
}

@end

@implementation KalturaBookmarkService
- (KALTURA_BOOL)addWithBookmark:(KalturaBookmark*)aBookmark
{
    [self.client.params addIfDefinedKey:@"bookmark" withObject:aBookmark];
    return [self.client queueBoolService:@"bookmark" withAction:@"add"];
}

- (KalturaBookmarkListResponse*)listWithFilter:(KalturaBookmarkFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"bookmark" withAction:@"list" withExpectedType:@"KalturaBookmarkListResponse"];
}

@end

@implementation KalturaCdnAdapterProfileService
- (KalturaCDNAdapterProfile*)addWithAdapter:(KalturaCDNAdapterProfile*)aAdapter
{
    [self.client.params addIfDefinedKey:@"adapter" withObject:aAdapter];
    return [self.client queueObjectService:@"cdnadapterprofile" withAction:@"add" withExpectedType:@"KalturaCDNAdapterProfile"];
}

- (KALTURA_BOOL)deleteWithAdapterId:(int)aAdapterId
{
    [self.client.params addIfDefinedKey:@"adapterId" withInt:aAdapterId];
    return [self.client queueBoolService:@"cdnadapterprofile" withAction:@"delete"];
}

- (KalturaCDNAdapterProfile*)generateSharedSecretWithAdapterId:(int)aAdapterId
{
    [self.client.params addIfDefinedKey:@"adapterId" withInt:aAdapterId];
    return [self.client queueObjectService:@"cdnadapterprofile" withAction:@"generateSharedSecret" withExpectedType:@"KalturaCDNAdapterProfile"];
}

- (KalturaCDNAdapterProfileListResponse*)list
{
    return [self.client queueObjectService:@"cdnadapterprofile" withAction:@"list" withExpectedType:@"KalturaCDNAdapterProfileListResponse"];
}

- (KalturaCDNAdapterProfile*)updateWithAdapterId:(int)aAdapterId withAdapter:(KalturaCDNAdapterProfile*)aAdapter
{
    [self.client.params addIfDefinedKey:@"adapterId" withInt:aAdapterId];
    [self.client.params addIfDefinedKey:@"adapter" withObject:aAdapter];
    return [self.client queueObjectService:@"cdnadapterprofile" withAction:@"update" withExpectedType:@"KalturaCDNAdapterProfile"];
}

@end

@implementation KalturaCdnPartnerSettingsService
- (KalturaCDNPartnerSettings*)get
{
    return [self.client queueObjectService:@"cdnpartnersettings" withAction:@"get" withExpectedType:@"KalturaCDNPartnerSettings"];
}

- (KalturaCDNPartnerSettings*)updateWithSettings:(KalturaCDNPartnerSettings*)aSettings
{
    [self.client.params addIfDefinedKey:@"settings" withObject:aSettings];
    return [self.client queueObjectService:@"cdnpartnersettings" withAction:@"update" withExpectedType:@"KalturaCDNPartnerSettings"];
}

@end

@implementation KalturaCDVRAdapterProfileService
- (KalturaCDVRAdapterProfile*)addWithAdapter:(KalturaCDVRAdapterProfile*)aAdapter
{
    [self.client.params addIfDefinedKey:@"adapter" withObject:aAdapter];
    return [self.client queueObjectService:@"cdvradapterprofile" withAction:@"add" withExpectedType:@"KalturaCDVRAdapterProfile"];
}

- (KALTURA_BOOL)deleteWithAdapterId:(int)aAdapterId
{
    [self.client.params addIfDefinedKey:@"adapterId" withInt:aAdapterId];
    return [self.client queueBoolService:@"cdvradapterprofile" withAction:@"delete"];
}

- (KalturaCDVRAdapterProfile*)generateSharedSecretWithAdapterId:(int)aAdapterId
{
    [self.client.params addIfDefinedKey:@"adapterId" withInt:aAdapterId];
    return [self.client queueObjectService:@"cdvradapterprofile" withAction:@"generateSharedSecret" withExpectedType:@"KalturaCDVRAdapterProfile"];
}

- (KalturaCDVRAdapterProfileListResponse*)list
{
    return [self.client queueObjectService:@"cdvradapterprofile" withAction:@"list" withExpectedType:@"KalturaCDVRAdapterProfileListResponse"];
}

- (KalturaCDVRAdapterProfile*)updateWithAdapterId:(int)aAdapterId withAdapter:(KalturaCDVRAdapterProfile*)aAdapter
{
    [self.client.params addIfDefinedKey:@"adapterId" withInt:aAdapterId];
    [self.client.params addIfDefinedKey:@"adapter" withObject:aAdapter];
    return [self.client queueObjectService:@"cdvradapterprofile" withAction:@"update" withExpectedType:@"KalturaCDVRAdapterProfile"];
}

@end

@implementation KalturaChannelService
- (KalturaChannel*)addWithChannel:(KalturaChannel*)aChannel
{
    [self.client.params addIfDefinedKey:@"channel" withObject:aChannel];
    return [self.client queueObjectService:@"channel" withAction:@"add" withExpectedType:@"KalturaChannel"];
}

- (KALTURA_BOOL)deleteWithChannelId:(int)aChannelId
{
    [self.client.params addIfDefinedKey:@"channelId" withInt:aChannelId];
    return [self.client queueBoolService:@"channel" withAction:@"delete"];
}

- (KalturaChannel*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"channel" withAction:@"get" withExpectedType:@"KalturaChannel"];
}

- (KalturaChannel*)updateWithChannelId:(int)aChannelId withChannel:(KalturaChannel*)aChannel
{
    [self.client.params addIfDefinedKey:@"channelId" withInt:aChannelId];
    [self.client.params addIfDefinedKey:@"channel" withObject:aChannel];
    return [self.client queueObjectService:@"channel" withAction:@"update" withExpectedType:@"KalturaChannel"];
}

@end

@implementation KalturaCouponService
- (KalturaCoupon*)getWithCode:(NSString*)aCode
{
    [self.client.params addIfDefinedKey:@"code" withString:aCode];
    return [self.client queueObjectService:@"coupon" withAction:@"get" withExpectedType:@"KalturaCoupon"];
}

@end

@implementation KalturaEntitlementService
- (KALTURA_BOOL)cancelWithAssetId:(int)aAssetId withTransactionType:(NSString*)aTransactionType
{
    [self.client.params addIfDefinedKey:@"assetId" withInt:aAssetId];
    [self.client.params addIfDefinedKey:@"transactionType" withString:aTransactionType];
    return [self.client queueBoolService:@"entitlement" withAction:@"cancel"];
}

- (void)cancelRenewalWithSubscriptionId:(NSString*)aSubscriptionId
{
    [self.client.params addIfDefinedKey:@"subscriptionId" withString:aSubscriptionId];
    [self.client queueVoidService:@"entitlement" withAction:@"cancelRenewal"];
}

- (KALTURA_BOOL)externalReconcile
{
    return [self.client queueBoolService:@"entitlement" withAction:@"externalReconcile"];
}

- (KALTURA_BOOL)forceCancelWithAssetId:(int)aAssetId withTransactionType:(NSString*)aTransactionType
{
    [self.client.params addIfDefinedKey:@"assetId" withInt:aAssetId];
    [self.client.params addIfDefinedKey:@"transactionType" withString:aTransactionType];
    return [self.client queueBoolService:@"entitlement" withAction:@"forceCancel"];
}

- (KALTURA_BOOL)grantWithProductId:(int)aProductId withProductType:(NSString*)aProductType withHistory:(KALTURA_BOOL)aHistory withContentId:(int)aContentId
{
    [self.client.params addIfDefinedKey:@"productId" withInt:aProductId];
    [self.client.params addIfDefinedKey:@"productType" withString:aProductType];
    [self.client.params addIfDefinedKey:@"history" withBool:aHistory];
    [self.client.params addIfDefinedKey:@"contentId" withInt:aContentId];
    return [self.client queueBoolService:@"entitlement" withAction:@"grant"];
}

- (KALTURA_BOOL)grantWithProductId:(int)aProductId withProductType:(NSString*)aProductType withHistory:(KALTURA_BOOL)aHistory
{
    return [self grantWithProductId:aProductId withProductType:aProductType withHistory:aHistory withContentId:KALTURA_UNDEF_INT];
}

- (KalturaEntitlementListResponse*)listWithFilter:(KalturaEntitlementFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"entitlement" withAction:@"list" withExpectedType:@"KalturaEntitlementListResponse"];
}

- (KalturaEntitlementListResponse*)listWithFilter:(KalturaEntitlementFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

@end

@implementation KalturaExportTaskService
- (KalturaExportTask*)addWithTask:(KalturaExportTask*)aTask
{
    [self.client.params addIfDefinedKey:@"task" withObject:aTask];
    return [self.client queueObjectService:@"exporttask" withAction:@"add" withExpectedType:@"KalturaExportTask"];
}

- (KALTURA_BOOL)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueBoolService:@"exporttask" withAction:@"delete"];
}

- (KalturaExportTask*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"exporttask" withAction:@"get" withExpectedType:@"KalturaExportTask"];
}

- (KalturaExportTaskListResponse*)listWithFilter:(KalturaExportTaskFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"exporttask" withAction:@"list" withExpectedType:@"KalturaExportTaskListResponse"];
}

- (KalturaExportTaskListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaExportTask*)updateWithId:(int)aId withTask:(KalturaExportTask*)aTask
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"task" withObject:aTask];
    return [self.client queueObjectService:@"exporttask" withAction:@"update" withExpectedType:@"KalturaExportTask"];
}

@end

@implementation KalturaExternalChannelProfileService
- (KalturaExternalChannelProfile*)addWithExternalChannel:(KalturaExternalChannelProfile*)aExternalChannel
{
    [self.client.params addIfDefinedKey:@"externalChannel" withObject:aExternalChannel];
    return [self.client queueObjectService:@"externalchannelprofile" withAction:@"add" withExpectedType:@"KalturaExternalChannelProfile"];
}

- (KALTURA_BOOL)deleteWithExternalChannelId:(int)aExternalChannelId
{
    [self.client.params addIfDefinedKey:@"externalChannelId" withInt:aExternalChannelId];
    return [self.client queueBoolService:@"externalchannelprofile" withAction:@"delete"];
}

- (KalturaExternalChannelProfileListResponse*)list
{
    return [self.client queueObjectService:@"externalchannelprofile" withAction:@"list" withExpectedType:@"KalturaExternalChannelProfileListResponse"];
}

- (KalturaExternalChannelProfile*)updateWithExternalChannelId:(int)aExternalChannelId withExternalChannel:(KalturaExternalChannelProfile*)aExternalChannel
{
    [self.client.params addIfDefinedKey:@"externalChannelId" withInt:aExternalChannelId];
    [self.client.params addIfDefinedKey:@"externalChannel" withObject:aExternalChannel];
    return [self.client queueObjectService:@"externalchannelprofile" withAction:@"update" withExpectedType:@"KalturaExternalChannelProfile"];
}

@end

@implementation KalturaFavoriteService
- (KalturaFavorite*)addWithFavorite:(KalturaFavorite*)aFavorite
{
    [self.client.params addIfDefinedKey:@"favorite" withObject:aFavorite];
    return [self.client queueObjectService:@"favorite" withAction:@"add" withExpectedType:@"KalturaFavorite"];
}

- (KALTURA_BOOL)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueBoolService:@"favorite" withAction:@"delete"];
}

- (KalturaFavoriteListResponse*)listWithFilter:(KalturaFavoriteFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"favorite" withAction:@"list" withExpectedType:@"KalturaFavoriteListResponse"];
}

- (KalturaFavoriteListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaFollowTvSeriesService
- (KalturaFollowTvSeries*)addWithFollowTvSeries:(KalturaFollowTvSeries*)aFollowTvSeries
{
    [self.client.params addIfDefinedKey:@"followTvSeries" withObject:aFollowTvSeries];
    return [self.client queueObjectService:@"followtvseries" withAction:@"add" withExpectedType:@"KalturaFollowTvSeries"];
}

- (KALTURA_BOOL)deleteWithAssetId:(int)aAssetId
{
    [self.client.params addIfDefinedKey:@"assetId" withInt:aAssetId];
    return [self.client queueBoolService:@"followtvseries" withAction:@"delete"];
}

- (KalturaFollowTvSeriesListResponse*)listWithFilter:(KalturaFollowTvSeriesFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"followtvseries" withAction:@"list" withExpectedType:@"KalturaFollowTvSeriesListResponse"];
}

- (KalturaFollowTvSeriesListResponse*)listWithFilter:(KalturaFollowTvSeriesFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

@end

@implementation KalturaHomeNetworkService
- (KalturaHomeNetwork*)addWithHomeNetwork:(KalturaHomeNetwork*)aHomeNetwork
{
    [self.client.params addIfDefinedKey:@"homeNetwork" withObject:aHomeNetwork];
    return [self.client queueObjectService:@"homenetwork" withAction:@"add" withExpectedType:@"KalturaHomeNetwork"];
}

- (KALTURA_BOOL)deleteWithExternalId:(NSString*)aExternalId
{
    [self.client.params addIfDefinedKey:@"externalId" withString:aExternalId];
    return [self.client queueBoolService:@"homenetwork" withAction:@"delete"];
}

- (KalturaHomeNetworkListResponse*)list
{
    return [self.client queueObjectService:@"homenetwork" withAction:@"list" withExpectedType:@"KalturaHomeNetworkListResponse"];
}

- (KalturaHomeNetwork*)updateWithExternalId:(NSString*)aExternalId withHomeNetwork:(KalturaHomeNetwork*)aHomeNetwork
{
    [self.client.params addIfDefinedKey:@"externalId" withString:aExternalId];
    [self.client.params addIfDefinedKey:@"homeNetwork" withObject:aHomeNetwork];
    return [self.client queueObjectService:@"homenetwork" withAction:@"update" withExpectedType:@"KalturaHomeNetwork"];
}

@end

@implementation KalturaHouseholdService
- (KalturaHousehold*)addWithHousehold:(KalturaHousehold*)aHousehold
{
    [self.client.params addIfDefinedKey:@"household" withObject:aHousehold];
    return [self.client queueObjectService:@"household" withAction:@"add" withExpectedType:@"KalturaHousehold"];
}

- (KALTURA_BOOL)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueBoolService:@"household" withAction:@"delete"];
}

- (KalturaHousehold*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"household" withAction:@"get" withExpectedType:@"KalturaHousehold"];
}

- (KalturaHousehold*)get
{
    return [self getWithId:KALTURA_UNDEF_INT];
}

- (KalturaHousehold*)resetFrequencyWithFrequencyType:(NSString*)aFrequencyType
{
    [self.client.params addIfDefinedKey:@"frequencyType" withString:aFrequencyType];
    return [self.client queueObjectService:@"household" withAction:@"resetFrequency" withExpectedType:@"KalturaHousehold"];
}

- (KALTURA_BOOL)resume
{
    return [self.client queueBoolService:@"household" withAction:@"resume"];
}

- (KALTURA_BOOL)suspend
{
    return [self.client queueBoolService:@"household" withAction:@"suspend"];
}

- (KalturaHousehold*)updateWithHousehold:(KalturaHousehold*)aHousehold
{
    [self.client.params addIfDefinedKey:@"household" withObject:aHousehold];
    return [self.client queueObjectService:@"household" withAction:@"update" withExpectedType:@"KalturaHousehold"];
}

@end

@implementation KalturaHouseholdDeviceService
- (KalturaHouseholdDevice*)addWithDevice:(KalturaHouseholdDevice*)aDevice
{
    [self.client.params addIfDefinedKey:@"device" withObject:aDevice];
    return [self.client queueObjectService:@"householddevice" withAction:@"add" withExpectedType:@"KalturaHouseholdDevice"];
}

- (KalturaHouseholdDevice*)addByPinWithDeviceName:(NSString*)aDeviceName withPin:(NSString*)aPin
{
    [self.client.params addIfDefinedKey:@"deviceName" withString:aDeviceName];
    [self.client.params addIfDefinedKey:@"pin" withString:aPin];
    return [self.client queueObjectService:@"householddevice" withAction:@"addByPin" withExpectedType:@"KalturaHouseholdDevice"];
}

- (KALTURA_BOOL)deleteWithUdid:(NSString*)aUdid
{
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    return [self.client queueBoolService:@"householddevice" withAction:@"delete"];
}

- (KalturaDevicePin*)generatePinWithUdid:(NSString*)aUdid withBrandId:(int)aBrandId
{
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    [self.client.params addIfDefinedKey:@"brandId" withInt:aBrandId];
    return [self.client queueObjectService:@"householddevice" withAction:@"generatePin" withExpectedType:@"KalturaDevicePin"];
}

- (KalturaHouseholdDevice*)get
{
    return [self.client queueObjectService:@"householddevice" withAction:@"get" withExpectedType:@"KalturaHouseholdDevice"];
}

- (KalturaHouseholdDevice*)updateWithUdid:(NSString*)aUdid withDevice:(KalturaHouseholdDevice*)aDevice
{
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    [self.client.params addIfDefinedKey:@"device" withObject:aDevice];
    return [self.client queueObjectService:@"householddevice" withAction:@"update" withExpectedType:@"KalturaHouseholdDevice"];
}

- (KALTURA_BOOL)updateStatusWithUdid:(NSString*)aUdid withStatus:(NSString*)aStatus
{
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    [self.client.params addIfDefinedKey:@"status" withString:aStatus];
    return [self.client queueBoolService:@"householddevice" withAction:@"updateStatus"];
}

@end

@implementation KalturaHouseholdLimitationsService
- (KalturaHouseholdLimitations*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"householdlimitations" withAction:@"get" withExpectedType:@"KalturaHouseholdLimitations"];
}

@end

@implementation KalturaHouseholdPaymentGatewayService
- (KALTURA_BOOL)deleteWithPaymentGatewayId:(int)aPaymentGatewayId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    return [self.client queueBoolService:@"householdpaymentgateway" withAction:@"delete"];
}

- (KALTURA_BOOL)setWithPaymentGatewayId:(int)aPaymentGatewayId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    return [self.client queueBoolService:@"householdpaymentgateway" withAction:@"set"];
}

- (NSString*)getChargeIDWithPaymentGatewayExternalId:(NSString*)aPaymentGatewayExternalId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayExternalId" withString:aPaymentGatewayExternalId];
    return [self.client queueStringService:@"householdpaymentgateway" withAction:@"getChargeID"];
}

- (KalturaPaymentGatewayConfiguration*)invokeWithPaymentGatewayId:(int)aPaymentGatewayId withIntent:(NSString*)aIntent withExtraParameters:(NSArray*)aExtraParameters
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    [self.client.params addIfDefinedKey:@"intent" withString:aIntent];
    [self.client.params addIfDefinedKey:@"extraParameters" withArray:aExtraParameters];
    return [self.client queueObjectService:@"householdpaymentgateway" withAction:@"invoke" withExpectedType:@"KalturaPaymentGatewayConfiguration"];
}

- (KalturaHouseholdPaymentGatewayListResponse*)list
{
    return [self.client queueObjectService:@"householdpaymentgateway" withAction:@"list" withExpectedType:@"KalturaHouseholdPaymentGatewayListResponse"];
}

- (KALTURA_BOOL)setChargeIDWithPaymentGatewayExternalId:(NSString*)aPaymentGatewayExternalId withChargeId:(NSString*)aChargeId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayExternalId" withString:aPaymentGatewayExternalId];
    [self.client.params addIfDefinedKey:@"chargeId" withString:aChargeId];
    return [self.client queueBoolService:@"householdpaymentgateway" withAction:@"setChargeID"];
}

@end

@implementation KalturaHouseholdPaymentMethodService
- (KALTURA_BOOL)forceRemoveWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentMethodId:(int)aPaymentMethodId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    [self.client.params addIfDefinedKey:@"paymentMethodId" withInt:aPaymentMethodId];
    return [self.client queueBoolService:@"householdpaymentmethod" withAction:@"forceRemove"];
}

- (KalturaHouseholdPaymentMethodListResponse*)list
{
    return [self.client queueObjectService:@"householdpaymentmethod" withAction:@"list" withExpectedType:@"KalturaHouseholdPaymentMethodListResponse"];
}

- (KALTURA_BOOL)removeWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentMethodId:(int)aPaymentMethodId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    [self.client.params addIfDefinedKey:@"paymentMethodId" withInt:aPaymentMethodId];
    return [self.client queueBoolService:@"householdpaymentmethod" withAction:@"remove"];
}

- (KALTURA_BOOL)setAsDefaultWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentMethodId:(int)aPaymentMethodId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    [self.client.params addIfDefinedKey:@"paymentMethodId" withInt:aPaymentMethodId];
    return [self.client queueBoolService:@"householdpaymentmethod" withAction:@"setAsDefault"];
}

@end

@implementation KalturaHouseholdPremiumServiceService
- (KalturaHouseholdPremiumServiceListResponse*)list
{
    return [self.client queueObjectService:@"householdpremiumservice" withAction:@"list" withExpectedType:@"KalturaHouseholdPremiumServiceListResponse"];
}

@end

@implementation KalturaHouseholdQuotaService
- (KalturaHouseholdQuota*)get
{
    return [self.client queueObjectService:@"householdquota" withAction:@"get" withExpectedType:@"KalturaHouseholdQuota"];
}

@end

@implementation KalturaHouseholdUserService
- (KalturaHouseholdUser*)addWithHouseholdUser:(KalturaHouseholdUser*)aHouseholdUser
{
    [self.client.params addIfDefinedKey:@"householdUser" withObject:aHouseholdUser];
    return [self.client queueObjectService:@"householduser" withAction:@"add" withExpectedType:@"KalturaHouseholdUser"];
}

- (KALTURA_BOOL)deleteWithUserId:(NSString*)aUserId
{
    [self.client.params addIfDefinedKey:@"userId" withString:aUserId];
    return [self.client queueBoolService:@"householduser" withAction:@"delete"];
}

@end

@implementation KalturaInboxMessageService
- (KalturaInboxMessage*)getWithId:(NSString*)aId
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    return [self.client queueObjectService:@"inboxmessage" withAction:@"get" withExpectedType:@"KalturaInboxMessage"];
}

- (KalturaInboxMessageListResponse*)listWithFilter:(KalturaInboxMessageFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"inboxmessage" withAction:@"list" withExpectedType:@"KalturaInboxMessageListResponse"];
}

- (KalturaInboxMessageListResponse*)listWithFilter:(KalturaInboxMessageFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaInboxMessageListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KALTURA_BOOL)updateStatusWithId:(NSString*)aId withStatus:(NSString*)aStatus
{
    [self.client.params addIfDefinedKey:@"id" withString:aId];
    [self.client.params addIfDefinedKey:@"status" withString:aStatus];
    return [self.client queueBoolService:@"inboxmessage" withAction:@"updateStatus"];
}

@end

@implementation KalturaLicensedUrlService
- (KalturaLicensedUrl*)getWithRequest:(KalturaLicensedUrlBaseRequest*)aRequest
{
    [self.client.params addIfDefinedKey:@"request" withObject:aRequest];
    return [self.client queueObjectService:@"licensedurl" withAction:@"get" withExpectedType:@"KalturaLicensedUrl"];
}

@end

@implementation KalturaMessageTemplateService
- (KalturaMessageTemplate*)getWithAssetType:(int)aAssetType
{
    [self.client.params addIfDefinedKey:@"assetType" withInt:aAssetType];
    return [self.client queueObjectService:@"messagetemplate" withAction:@"get" withExpectedType:@"KalturaMessageTemplate"];
}

- (KalturaMessageTemplate*)updateWithAssetType:(int)aAssetType withTemplate:(KalturaMessageTemplate*)aTemplate
{
    [self.client.params addIfDefinedKey:@"assetType" withInt:aAssetType];
    [self.client.params addIfDefinedKey:@"template" withObject:aTemplate];
    return [self.client queueObjectService:@"messagetemplate" withAction:@"update" withExpectedType:@"KalturaMessageTemplate"];
}

@end

@implementation KalturaNotificationService
- (KALTURA_BOOL)initiateCleanup
{
    return [self.client queueBoolService:@"notification" withAction:@"initiateCleanup"];
}

- (KalturaRegistryResponse*)registerWithIdentifier:(NSString*)aIdentifier withType:(NSString*)aType
{
    [self.client.params addIfDefinedKey:@"identifier" withString:aIdentifier];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    return [self.client queueObjectService:@"notification" withAction:@"register" withExpectedType:@"KalturaRegistryResponse"];
}

- (KALTURA_BOOL)setDevicePushTokenWithPushToken:(NSString*)aPushToken
{
    [self.client.params addIfDefinedKey:@"pushToken" withString:aPushToken];
    return [self.client queueBoolService:@"notification" withAction:@"setDevicePushToken"];
}

@end

@implementation KalturaNotificationsPartnerSettingsService
- (KalturaNotificationsPartnerSettings*)get
{
    return [self.client queueObjectService:@"notificationspartnersettings" withAction:@"get" withExpectedType:@"KalturaNotificationsPartnerSettings"];
}

- (KALTURA_BOOL)updateWithSettings:(KalturaNotificationsPartnerSettings*)aSettings
{
    [self.client.params addIfDefinedKey:@"settings" withObject:aSettings];
    return [self.client queueBoolService:@"notificationspartnersettings" withAction:@"update"];
}

@end

@implementation KalturaNotificationsSettingsService
- (KalturaNotificationsSettings*)get
{
    return [self.client queueObjectService:@"notificationssettings" withAction:@"get" withExpectedType:@"KalturaNotificationsSettings"];
}

- (KALTURA_BOOL)updateWithSettings:(KalturaNotificationsSettings*)aSettings
{
    [self.client.params addIfDefinedKey:@"settings" withObject:aSettings];
    return [self.client queueBoolService:@"notificationssettings" withAction:@"update"];
}

@end

@implementation KalturaOssAdapterProfileService
- (KalturaOSSAdapterProfile*)addWithOssAdapter:(KalturaOSSAdapterProfile*)aOssAdapter
{
    [self.client.params addIfDefinedKey:@"ossAdapter" withObject:aOssAdapter];
    return [self.client queueObjectService:@"ossadapterprofile" withAction:@"add" withExpectedType:@"KalturaOSSAdapterProfile"];
}

- (KALTURA_BOOL)deleteWithOssAdapterId:(int)aOssAdapterId
{
    [self.client.params addIfDefinedKey:@"ossAdapterId" withInt:aOssAdapterId];
    return [self.client queueBoolService:@"ossadapterprofile" withAction:@"delete"];
}

- (KalturaOSSAdapterProfile*)generateSharedSecretWithOssAdapterId:(int)aOssAdapterId
{
    [self.client.params addIfDefinedKey:@"ossAdapterId" withInt:aOssAdapterId];
    return [self.client queueObjectService:@"ossadapterprofile" withAction:@"generateSharedSecret" withExpectedType:@"KalturaOSSAdapterProfile"];
}

- (KalturaOSSAdapterProfile*)updateWithOssAdapterId:(int)aOssAdapterId withOssAdapter:(KalturaOSSAdapterProfile*)aOssAdapter
{
    [self.client.params addIfDefinedKey:@"ossAdapterId" withInt:aOssAdapterId];
    [self.client.params addIfDefinedKey:@"ossAdapter" withObject:aOssAdapter];
    return [self.client queueObjectService:@"ossadapterprofile" withAction:@"update" withExpectedType:@"KalturaOSSAdapterProfile"];
}

@end

@implementation KalturaOttCategoryService
- (KalturaOTTCategory*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"ottcategory" withAction:@"get" withExpectedType:@"KalturaOTTCategory"];
}

@end

@implementation KalturaOttUserService
- (KalturaOTTUser*)activateWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withActivationToken:(NSString*)aActivationToken
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"username" withString:aUsername];
    [self.client.params addIfDefinedKey:@"activationToken" withString:aActivationToken];
    return [self.client queueObjectService:@"ottuser" withAction:@"activate" withExpectedType:@"KalturaOTTUser"];
}

- (KALTURA_BOOL)addRoleWithRoleId:(int)aRoleId
{
    [self.client.params addIfDefinedKey:@"roleId" withInt:aRoleId];
    return [self.client queueBoolService:@"ottuser" withAction:@"addRole"];
}

- (KalturaLoginSession*)anonymousLoginWithPartnerId:(int)aPartnerId withUdid:(NSString*)aUdid
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    return [self.client queueObjectService:@"ottuser" withAction:@"anonymousLogin" withExpectedType:@"KalturaLoginSession"];
}

- (KalturaLoginSession*)anonymousLoginWithPartnerId:(int)aPartnerId
{
    return [self anonymousLoginWithPartnerId:aPartnerId withUdid:nil];
}

- (KALTURA_BOOL)delete
{
    return [self.client queueBoolService:@"ottuser" withAction:@"delete"];
}

- (KalturaOTTUser*)get
{
    return [self.client queueObjectService:@"ottuser" withAction:@"get" withExpectedType:@"KalturaOTTUser"];
}

- (KalturaStringValue*)getEncryptedUserId
{
    return [self.client queueObjectService:@"ottuser" withAction:@"getEncryptedUserId" withExpectedType:@"KalturaStringValue"];
}

- (KalturaOTTUserListResponse*)listWithFilter:(KalturaOTTUserFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"ottuser" withAction:@"list" withExpectedType:@"KalturaOTTUserListResponse"];
}

- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withPassword:(NSString*)aPassword withExtraParams:(NSDictionary*)aExtraParams withUdid:(NSString*)aUdid
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"username" withString:aUsername];
    [self.client.params addIfDefinedKey:@"password" withString:aPassword];
    [self.client.params addIfDefinedKey:@"extraParams" withDictionary:aExtraParams];
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    return [self.client queueObjectService:@"ottuser" withAction:@"login" withExpectedType:@"KalturaLoginResponse"];
}

- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withPassword:(NSString*)aPassword withExtraParams:(NSDictionary*)aExtraParams
{
    return [self loginWithPartnerId:aPartnerId withUsername:aUsername withPassword:aPassword withExtraParams:aExtraParams withUdid:nil];
}

- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername withPassword:(NSString*)aPassword
{
    return [self loginWithPartnerId:aPartnerId withUsername:aUsername withPassword:aPassword withExtraParams:nil];
}

- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername
{
    return [self loginWithPartnerId:aPartnerId withUsername:aUsername withPassword:nil];
}

- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId
{
    return [self loginWithPartnerId:aPartnerId withUsername:nil];
}

- (KalturaLoginResponse*)loginWithPinWithPartnerId:(int)aPartnerId withPin:(NSString*)aPin withUdid:(NSString*)aUdid withSecret:(NSString*)aSecret
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"pin" withString:aPin];
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    [self.client.params addIfDefinedKey:@"secret" withString:aSecret];
    return [self.client queueObjectService:@"ottuser" withAction:@"loginWithPin" withExpectedType:@"KalturaLoginResponse"];
}

- (KalturaLoginResponse*)loginWithPinWithPartnerId:(int)aPartnerId withPin:(NSString*)aPin withUdid:(NSString*)aUdid
{
    return [self loginWithPinWithPartnerId:aPartnerId withPin:aPin withUdid:aUdid withSecret:nil];
}

- (KalturaLoginResponse*)loginWithPinWithPartnerId:(int)aPartnerId withPin:(NSString*)aPin
{
    return [self loginWithPinWithPartnerId:aPartnerId withPin:aPin withUdid:nil];
}

- (KALTURA_BOOL)logout
{
    return [self.client queueBoolService:@"ottuser" withAction:@"logout"];
}

- (KalturaLoginSession*)refreshSessionWithRefreshToken:(NSString*)aRefreshToken withUdid:(NSString*)aUdid
{
    [self.client.params addIfDefinedKey:@"refreshToken" withString:aRefreshToken];
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    return [self.client queueObjectService:@"ottuser" withAction:@"refreshSession" withExpectedType:@"KalturaLoginSession"];
}

- (KalturaLoginSession*)refreshSessionWithRefreshToken:(NSString*)aRefreshToken
{
    return [self refreshSessionWithRefreshToken:aRefreshToken withUdid:nil];
}

- (KalturaOTTUser*)registerWithPartnerId:(int)aPartnerId withUser:(KalturaOTTUser*)aUser withPassword:(NSString*)aPassword
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"user" withObject:aUser];
    [self.client.params addIfDefinedKey:@"password" withString:aPassword];
    return [self.client queueObjectService:@"ottuser" withAction:@"register" withExpectedType:@"KalturaOTTUser"];
}

- (KALTURA_BOOL)resendActivationTokenWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"username" withString:aUsername];
    return [self.client queueBoolService:@"ottuser" withAction:@"resendActivationToken"];
}

- (KALTURA_BOOL)resetPasswordWithPartnerId:(int)aPartnerId withUsername:(NSString*)aUsername
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"username" withString:aUsername];
    return [self.client queueBoolService:@"ottuser" withAction:@"resetPassword"];
}

- (KalturaOTTUser*)setInitialPasswordWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withPassword:(NSString*)aPassword
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"token" withString:aToken];
    [self.client.params addIfDefinedKey:@"password" withString:aPassword];
    return [self.client queueObjectService:@"ottuser" withAction:@"setInitialPassword" withExpectedType:@"KalturaOTTUser"];
}

- (KalturaOTTUser*)updateWithUser:(KalturaOTTUser*)aUser
{
    [self.client.params addIfDefinedKey:@"user" withObject:aUser];
    return [self.client queueObjectService:@"ottuser" withAction:@"update" withExpectedType:@"KalturaOTTUser"];
}

- (KALTURA_BOOL)updateLoginDataWithUsername:(NSString*)aUsername withOldPassword:(NSString*)aOldPassword withNewPassword:(NSString*)aNewPassword
{
    [self.client.params addIfDefinedKey:@"username" withString:aUsername];
    [self.client.params addIfDefinedKey:@"oldPassword" withString:aOldPassword];
    [self.client.params addIfDefinedKey:@"newPassword" withString:aNewPassword];
    return [self.client queueBoolService:@"ottuser" withAction:@"updateLoginData"];
}

@end

@implementation KalturaParentalRuleService
- (KALTURA_BOOL)disableWithRuleId:(int)aRuleId withEntityReference:(NSString*)aEntityReference
{
    [self.client.params addIfDefinedKey:@"ruleId" withInt:aRuleId];
    [self.client.params addIfDefinedKey:@"entityReference" withString:aEntityReference];
    return [self.client queueBoolService:@"parentalrule" withAction:@"disable"];
}

- (KALTURA_BOOL)disableDefaultWithEntityReference:(NSString*)aEntityReference
{
    [self.client.params addIfDefinedKey:@"entityReference" withString:aEntityReference];
    return [self.client queueBoolService:@"parentalrule" withAction:@"disableDefault"];
}

- (KALTURA_BOOL)enableWithRuleId:(int)aRuleId withEntityReference:(NSString*)aEntityReference
{
    [self.client.params addIfDefinedKey:@"ruleId" withInt:aRuleId];
    [self.client.params addIfDefinedKey:@"entityReference" withString:aEntityReference];
    return [self.client queueBoolService:@"parentalrule" withAction:@"enable"];
}

- (KalturaParentalRuleListResponse*)listWithFilter:(KalturaParentalRuleFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"parentalrule" withAction:@"list" withExpectedType:@"KalturaParentalRuleListResponse"];
}

@end

@implementation KalturaPartnerConfigurationService
- (KALTURA_BOOL)updateWithConfiguration:(KalturaPartnerConfiguration*)aConfiguration
{
    [self.client.params addIfDefinedKey:@"configuration" withObject:aConfiguration];
    return [self.client queueBoolService:@"partnerconfiguration" withAction:@"update"];
}

@end

@implementation KalturaPaymentGatewayProfileService
- (KalturaPaymentGatewayProfile*)addWithPaymentGateway:(KalturaPaymentGatewayProfile*)aPaymentGateway
{
    [self.client.params addIfDefinedKey:@"paymentGateway" withObject:aPaymentGateway];
    return [self.client queueObjectService:@"paymentgatewayprofile" withAction:@"add" withExpectedType:@"KalturaPaymentGatewayProfile"];
}

- (KALTURA_BOOL)deleteWithPaymentGatewayId:(int)aPaymentGatewayId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    return [self.client queueBoolService:@"paymentgatewayprofile" withAction:@"delete"];
}

- (KalturaPaymentGatewayProfile*)generateSharedSecretWithPaymentGatewayId:(int)aPaymentGatewayId
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    return [self.client queueObjectService:@"paymentgatewayprofile" withAction:@"generateSharedSecret" withExpectedType:@"KalturaPaymentGatewayProfile"];
}

- (KalturaPaymentGatewayConfiguration*)getConfigurationWithAlias:(NSString*)aAlias withIntent:(NSString*)aIntent withExtraParameters:(NSArray*)aExtraParameters
{
    [self.client.params addIfDefinedKey:@"alias" withString:aAlias];
    [self.client.params addIfDefinedKey:@"intent" withString:aIntent];
    [self.client.params addIfDefinedKey:@"extraParameters" withArray:aExtraParameters];
    return [self.client queueObjectService:@"paymentgatewayprofile" withAction:@"getConfiguration" withExpectedType:@"KalturaPaymentGatewayConfiguration"];
}

- (KalturaPaymentGatewayProfileListResponse*)list
{
    return [self.client queueObjectService:@"paymentgatewayprofile" withAction:@"list" withExpectedType:@"KalturaPaymentGatewayProfileListResponse"];
}

- (KalturaPaymentGatewayProfile*)updateWithPaymentGatewayId:(int)aPaymentGatewayId withPaymentGateway:(KalturaPaymentGatewayProfile*)aPaymentGateway
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withInt:aPaymentGatewayId];
    [self.client.params addIfDefinedKey:@"paymentGateway" withObject:aPaymentGateway];
    return [self.client queueObjectService:@"paymentgatewayprofile" withAction:@"update" withExpectedType:@"KalturaPaymentGatewayProfile"];
}

@end

@implementation KalturaPaymentMethodProfileService
- (KalturaPaymentMethodProfile*)addWithPaymentMethod:(KalturaPaymentMethodProfile*)aPaymentMethod
{
    [self.client.params addIfDefinedKey:@"paymentMethod" withObject:aPaymentMethod];
    return [self.client queueObjectService:@"paymentmethodprofile" withAction:@"add" withExpectedType:@"KalturaPaymentMethodProfile"];
}

- (KALTURA_BOOL)deleteWithPaymentMethodId:(int)aPaymentMethodId
{
    [self.client.params addIfDefinedKey:@"paymentMethodId" withInt:aPaymentMethodId];
    return [self.client queueBoolService:@"paymentmethodprofile" withAction:@"delete"];
}

- (KalturaPaymentMethodProfileListResponse*)listWithFilter:(KalturaPaymentMethodProfileFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"paymentmethodprofile" withAction:@"list" withExpectedType:@"KalturaPaymentMethodProfileListResponse"];
}

- (KalturaPaymentMethodProfile*)updateWithPaymentMethodId:(int)aPaymentMethodId withPaymentMethod:(KalturaPaymentMethodProfile*)aPaymentMethod
{
    [self.client.params addIfDefinedKey:@"paymentMethodId" withInt:aPaymentMethodId];
    [self.client.params addIfDefinedKey:@"paymentMethod" withObject:aPaymentMethod];
    return [self.client queueObjectService:@"paymentmethodprofile" withAction:@"update" withExpectedType:@"KalturaPaymentMethodProfile"];
}

@end

@implementation KalturaPersonalFeedService
- (KalturaPersonalFeedListResponse*)listWithFilter:(KalturaPersonalFeedFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"personalfeed" withAction:@"list" withExpectedType:@"KalturaPersonalFeedListResponse"];
}

- (KalturaPersonalFeedListResponse*)listWithFilter:(KalturaPersonalFeedFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaPersonalFeedListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaPinService
- (KalturaPin*)getWithBy:(NSString*)aBy withType:(NSString*)aType withRuleId:(int)aRuleId
{
    [self.client.params addIfDefinedKey:@"by" withString:aBy];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    [self.client.params addIfDefinedKey:@"ruleId" withInt:aRuleId];
    return [self.client queueObjectService:@"pin" withAction:@"get" withExpectedType:@"KalturaPin"];
}

- (KalturaPin*)getWithBy:(NSString*)aBy withType:(NSString*)aType
{
    return [self getWithBy:aBy withType:aType withRuleId:KALTURA_UNDEF_INT];
}

- (KalturaPin*)updateWithBy:(NSString*)aBy withType:(NSString*)aType withPin:(KalturaPin*)aPin withRuleId:(int)aRuleId
{
    [self.client.params addIfDefinedKey:@"by" withString:aBy];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    [self.client.params addIfDefinedKey:@"pin" withObject:aPin];
    [self.client.params addIfDefinedKey:@"ruleId" withInt:aRuleId];
    return [self.client queueObjectService:@"pin" withAction:@"update" withExpectedType:@"KalturaPin"];
}

- (KalturaPin*)updateWithBy:(NSString*)aBy withType:(NSString*)aType withPin:(KalturaPin*)aPin
{
    return [self updateWithBy:aBy withType:aType withPin:aPin withRuleId:KALTURA_UNDEF_INT];
}

- (KALTURA_BOOL)validateWithPin:(NSString*)aPin withType:(NSString*)aType withRuleId:(int)aRuleId
{
    [self.client.params addIfDefinedKey:@"pin" withString:aPin];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    [self.client.params addIfDefinedKey:@"ruleId" withInt:aRuleId];
    return [self.client queueBoolService:@"pin" withAction:@"validate"];
}

- (KALTURA_BOOL)validateWithPin:(NSString*)aPin withType:(NSString*)aType
{
    return [self validateWithPin:aPin withType:aType withRuleId:KALTURA_UNDEF_INT];
}

@end

@implementation KalturaPpvService
- (KalturaPpv*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"ppv" withAction:@"get" withExpectedType:@"KalturaPpv"];
}

@end

@implementation KalturaProductPriceService
- (KalturaProductPriceListResponse*)listWithFilter:(KalturaProductPriceFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"productprice" withAction:@"list" withExpectedType:@"KalturaProductPriceListResponse"];
}

@end

@implementation KalturaPurchaseSettingsService
- (KalturaPurchaseSettings*)getWithBy:(NSString*)aBy
{
    [self.client.params addIfDefinedKey:@"by" withString:aBy];
    return [self.client queueObjectService:@"purchasesettings" withAction:@"get" withExpectedType:@"KalturaPurchaseSettings"];
}

- (KalturaPurchaseSettings*)updateWithEntityReference:(NSString*)aEntityReference withSettings:(KalturaPurchaseSettings*)aSettings
{
    [self.client.params addIfDefinedKey:@"entityReference" withString:aEntityReference];
    [self.client.params addIfDefinedKey:@"settings" withObject:aSettings];
    return [self.client queueObjectService:@"purchasesettings" withAction:@"update" withExpectedType:@"KalturaPurchaseSettings"];
}

@end

@implementation KalturaRecommendationProfileService
- (KalturaRecommendationProfile*)addWithRecommendationEngine:(KalturaRecommendationProfile*)aRecommendationEngine
{
    [self.client.params addIfDefinedKey:@"recommendationEngine" withObject:aRecommendationEngine];
    return [self.client queueObjectService:@"recommendationprofile" withAction:@"add" withExpectedType:@"KalturaRecommendationProfile"];
}

- (KALTURA_BOOL)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueBoolService:@"recommendationprofile" withAction:@"delete"];
}

- (KalturaRecommendationProfile*)generateSharedSecretWithRecommendationEngineId:(int)aRecommendationEngineId
{
    [self.client.params addIfDefinedKey:@"recommendationEngineId" withInt:aRecommendationEngineId];
    return [self.client queueObjectService:@"recommendationprofile" withAction:@"generateSharedSecret" withExpectedType:@"KalturaRecommendationProfile"];
}

- (KalturaRecommendationProfileListResponse*)list
{
    return [self.client queueObjectService:@"recommendationprofile" withAction:@"list" withExpectedType:@"KalturaRecommendationProfileListResponse"];
}

- (KalturaRecommendationProfile*)updateWithRecommendationEngineId:(int)aRecommendationEngineId withRecommendationEngine:(KalturaRecommendationProfile*)aRecommendationEngine
{
    [self.client.params addIfDefinedKey:@"recommendationEngineId" withInt:aRecommendationEngineId];
    [self.client.params addIfDefinedKey:@"recommendationEngine" withObject:aRecommendationEngine];
    return [self.client queueObjectService:@"recommendationprofile" withAction:@"update" withExpectedType:@"KalturaRecommendationProfile"];
}

@end

@implementation KalturaRecordingService
- (KalturaRecording*)addWithRecording:(KalturaRecording*)aRecording
{
    [self.client.params addIfDefinedKey:@"recording" withObject:aRecording];
    return [self.client queueObjectService:@"recording" withAction:@"add" withExpectedType:@"KalturaRecording"];
}

- (KalturaRecording*)cancelWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"recording" withAction:@"cancel" withExpectedType:@"KalturaRecording"];
}

- (KalturaRecording*)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"recording" withAction:@"delete" withExpectedType:@"KalturaRecording"];
}

- (KalturaRecording*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"recording" withAction:@"get" withExpectedType:@"KalturaRecording"];
}

- (KalturaRecordingListResponse*)listWithFilter:(KalturaRecordingFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"recording" withAction:@"list" withExpectedType:@"KalturaRecordingListResponse"];
}

- (KalturaRecordingListResponse*)listWithFilter:(KalturaRecordingFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaRecordingListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KalturaRecording*)protectWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"recording" withAction:@"protect" withExpectedType:@"KalturaRecording"];
}

@end

@implementation KalturaRegionService
- (KalturaRegionListResponse*)listWithFilter:(KalturaRegionFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"region" withAction:@"list" withExpectedType:@"KalturaRegionListResponse"];
}

@end

@implementation KalturaRegistrySettingsService
- (KalturaRegistrySettingsListResponse*)list
{
    return [self.client queueObjectService:@"registrysettings" withAction:@"list" withExpectedType:@"KalturaRegistrySettingsListResponse"];
}

@end

@implementation KalturaSeriesRecordingService
- (KalturaSeriesRecording*)addWithRecording:(KalturaSeriesRecording*)aRecording
{
    [self.client.params addIfDefinedKey:@"recording" withObject:aRecording];
    return [self.client queueObjectService:@"seriesrecording" withAction:@"add" withExpectedType:@"KalturaSeriesRecording"];
}

- (KalturaSeriesRecording*)cancelWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"seriesrecording" withAction:@"cancel" withExpectedType:@"KalturaSeriesRecording"];
}

- (KalturaSeriesRecording*)cancelByEpgIdWithId:(int)aId withEpgId:(int)aEpgId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"epgId" withInt:aEpgId];
    return [self.client queueObjectService:@"seriesrecording" withAction:@"cancelByEpgId" withExpectedType:@"KalturaSeriesRecording"];
}

- (KalturaSeriesRecording*)cancelBySeasonNumberWithId:(int)aId withSeasonNumber:(int)aSeasonNumber
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"seasonNumber" withInt:aSeasonNumber];
    return [self.client queueObjectService:@"seriesrecording" withAction:@"cancelBySeasonNumber" withExpectedType:@"KalturaSeriesRecording"];
}

- (KalturaSeriesRecording*)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"seriesrecording" withAction:@"delete" withExpectedType:@"KalturaSeriesRecording"];
}

- (KalturaSeriesRecording*)deleteBySeasonNumberWithId:(int)aId withSeasonNumber:(int)aSeasonNumber
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"seasonNumber" withInt:aSeasonNumber];
    return [self.client queueObjectService:@"seriesrecording" withAction:@"deleteBySeasonNumber" withExpectedType:@"KalturaSeriesRecording"];
}

- (KalturaSeriesRecordingListResponse*)listWithFilter:(KalturaSeriesRecordingFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"seriesrecording" withAction:@"list" withExpectedType:@"KalturaSeriesRecordingListResponse"];
}

- (KalturaSeriesRecordingListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaSessionService
- (KalturaSession*)getWithSession:(NSString*)aSession
{
    [self.client.params addIfDefinedKey:@"session" withString:aSession];
    return [self.client queueObjectService:@"session" withAction:@"get" withExpectedType:@"KalturaSession"];
}

- (KalturaSession*)get
{
    return [self getWithSession:nil];
}

- (KalturaLoginSession*)switchUserWithUserIdToSwitch:(NSString*)aUserIdToSwitch
{
    [self.client.params addIfDefinedKey:@"userIdToSwitch" withString:aUserIdToSwitch];
    return [self.client queueObjectService:@"session" withAction:@"switchUser" withExpectedType:@"KalturaLoginSession"];
}

@end

@implementation KalturaSocialService
- (KalturaSocial*)getWithType:(NSString*)aType
{
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    return [self.client queueObjectService:@"social" withAction:@"get" withExpectedType:@"KalturaSocial"];
}

- (KalturaSocial*)getByTokenWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"token" withString:aToken];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    return [self.client queueObjectService:@"social" withAction:@"getByToken" withExpectedType:@"KalturaSocial"];
}

- (KalturaSocialConfig*)getConfigurationWithPartnerId:(int)aPartnerId withType:(NSString*)aType
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    return [self.client queueObjectService:@"social" withAction:@"getConfiguration" withExpectedType:@"KalturaSocialConfig"];
}

- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType withUdid:(NSString*)aUdid
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"token" withString:aToken];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    [self.client.params addIfDefinedKey:@"udid" withString:aUdid];
    return [self.client queueObjectService:@"social" withAction:@"login" withExpectedType:@"KalturaLoginResponse"];
}

- (KalturaLoginResponse*)loginWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType
{
    return [self loginWithPartnerId:aPartnerId withToken:aToken withType:aType withUdid:nil];
}

- (KalturaSocial*)mergeWithToken:(NSString*)aToken withType:(NSString*)aType
{
    [self.client.params addIfDefinedKey:@"token" withString:aToken];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    return [self.client queueObjectService:@"social" withAction:@"merge" withExpectedType:@"KalturaSocial"];
}

- (KalturaSocial*)registerWithPartnerId:(int)aPartnerId withToken:(NSString*)aToken withType:(NSString*)aType
{
    [self.client.params addIfDefinedKey:@"partnerId" withInt:aPartnerId];
    [self.client.params addIfDefinedKey:@"token" withString:aToken];
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    return [self.client queueObjectService:@"social" withAction:@"register" withExpectedType:@"KalturaSocial"];
}

- (KalturaSocial*)unmergeWithType:(NSString*)aType
{
    [self.client.params addIfDefinedKey:@"type" withString:aType];
    return [self.client queueObjectService:@"social" withAction:@"unmerge" withExpectedType:@"KalturaSocial"];
}

@end

@implementation KalturaSubscriptionService
- (KalturaSubscriptionListResponse*)listWithFilter:(KalturaSubscriptionFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"subscription" withAction:@"list" withExpectedType:@"KalturaSubscriptionListResponse"];
}

@end

@implementation KalturaSystemService
- (KalturaCountry*)getCountryWithIp:(NSString*)aIp
{
    [self.client.params addIfDefinedKey:@"ip" withString:aIp];
    return [self.client queueObjectService:@"system" withAction:@"getCountry" withExpectedType:@"KalturaCountry"];
}

- (KalturaCountry*)getCountry
{
    return [self getCountryWithIp:nil];
}

- (int)getTime
{
    return [self.client queueIntService:@"system" withAction:@"getTime"];
}

- (NSString*)getVersion
{
    return [self.client queueStringService:@"system" withAction:@"getVersion"];
}

- (KALTURA_BOOL)ping
{
    return [self.client queueBoolService:@"system" withAction:@"ping"];
}

@end

@implementation KalturaTimeShiftedTvPartnerSettingsService
- (KalturaTimeShiftedTvPartnerSettings*)get
{
    return [self.client queueObjectService:@"timeshiftedtvpartnersettings" withAction:@"get" withExpectedType:@"KalturaTimeShiftedTvPartnerSettings"];
}

- (KALTURA_BOOL)updateWithSettings:(KalturaTimeShiftedTvPartnerSettings*)aSettings
{
    [self.client.params addIfDefinedKey:@"settings" withObject:aSettings];
    return [self.client queueBoolService:@"timeshiftedtvpartnersettings" withAction:@"update"];
}

@end

@implementation KalturaTopicService
- (KALTURA_BOOL)deleteWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueBoolService:@"topic" withAction:@"delete"];
}

- (KalturaTopic*)getWithId:(int)aId
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    return [self.client queueObjectService:@"topic" withAction:@"get" withExpectedType:@"KalturaTopic"];
}

- (KalturaTopicListResponse*)listWithFilter:(KalturaTopicFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"topic" withAction:@"list" withExpectedType:@"KalturaTopicListResponse"];
}

- (KalturaTopicListResponse*)listWithFilter:(KalturaTopicFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaTopicListResponse*)list
{
    return [self listWithFilter:nil];
}

- (KALTURA_BOOL)updateStatusWithId:(int)aId withAutomaticIssueNotification:(NSString*)aAutomaticIssueNotification
{
    [self.client.params addIfDefinedKey:@"id" withInt:aId];
    [self.client.params addIfDefinedKey:@"automaticIssueNotification" withString:aAutomaticIssueNotification];
    return [self.client queueBoolService:@"topic" withAction:@"updateStatus"];
}

@end

@implementation KalturaTransactionService
- (int)getPurchaseSessionIdWithPurchaseSession:(KalturaPurchaseSession*)aPurchaseSession
{
    [self.client.params addIfDefinedKey:@"purchaseSession" withObject:aPurchaseSession];
    return [self.client queueIntService:@"transaction" withAction:@"getPurchaseSessionId"];
}

- (KalturaTransaction*)purchaseWithPurchase:(KalturaPurchase*)aPurchase
{
    [self.client.params addIfDefinedKey:@"purchase" withObject:aPurchase];
    return [self.client queueObjectService:@"transaction" withAction:@"purchase" withExpectedType:@"KalturaTransaction"];
}

- (KALTURA_BOOL)setWaiverWithAssetId:(int)aAssetId withTransactionType:(NSString*)aTransactionType
{
    [self.client.params addIfDefinedKey:@"assetId" withInt:aAssetId];
    [self.client.params addIfDefinedKey:@"transactionType" withString:aTransactionType];
    return [self.client queueBoolService:@"transaction" withAction:@"setWaiver"];
}

- (void)updateStatusWithPaymentGatewayId:(NSString*)aPaymentGatewayId withExternalTransactionId:(NSString*)aExternalTransactionId withSignature:(NSString*)aSignature withStatus:(KalturaTransactionStatus*)aStatus
{
    [self.client.params addIfDefinedKey:@"paymentGatewayId" withString:aPaymentGatewayId];
    [self.client.params addIfDefinedKey:@"externalTransactionId" withString:aExternalTransactionId];
    [self.client.params addIfDefinedKey:@"signature" withString:aSignature];
    [self.client.params addIfDefinedKey:@"status" withObject:aStatus];
    [self.client queueVoidService:@"transaction" withAction:@"updateStatus"];
}

- (KalturaTransaction*)validateReceiptWithExternalReceipt:(KalturaExternalReceipt*)aExternalReceipt
{
    [self.client.params addIfDefinedKey:@"externalReceipt" withObject:aExternalReceipt];
    return [self.client queueObjectService:@"transaction" withAction:@"validateReceipt" withExpectedType:@"KalturaTransaction"];
}

@end

@implementation KalturaTransactionHistoryService
- (KalturaBillingTransactionListResponse*)listWithFilter:(KalturaTransactionHistoryFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"transactionhistory" withAction:@"list" withExpectedType:@"KalturaBillingTransactionListResponse"];
}

- (KalturaBillingTransactionListResponse*)listWithFilter:(KalturaTransactionHistoryFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaBillingTransactionListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaUserAssetRuleService
- (KalturaUserAssetRuleListResponse*)listWithFilter:(KalturaUserAssetRuleFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"userassetrule" withAction:@"list" withExpectedType:@"KalturaUserAssetRuleListResponse"];
}

@end

@implementation KalturaUserAssetsListItemService
- (KalturaUserAssetsListItem*)addWithUserAssetsListItem:(KalturaUserAssetsListItem*)aUserAssetsListItem
{
    [self.client.params addIfDefinedKey:@"userAssetsListItem" withObject:aUserAssetsListItem];
    return [self.client queueObjectService:@"userassetslistitem" withAction:@"add" withExpectedType:@"KalturaUserAssetsListItem"];
}

- (KALTURA_BOOL)deleteWithAssetId:(NSString*)aAssetId withListType:(NSString*)aListType
{
    [self.client.params addIfDefinedKey:@"assetId" withString:aAssetId];
    [self.client.params addIfDefinedKey:@"listType" withString:aListType];
    return [self.client queueBoolService:@"userassetslistitem" withAction:@"delete"];
}

- (KalturaUserAssetsListItem*)getWithAssetId:(NSString*)aAssetId withListType:(NSString*)aListType withItemType:(NSString*)aItemType
{
    [self.client.params addIfDefinedKey:@"assetId" withString:aAssetId];
    [self.client.params addIfDefinedKey:@"listType" withString:aListType];
    [self.client.params addIfDefinedKey:@"itemType" withString:aItemType];
    return [self.client queueObjectService:@"userassetslistitem" withAction:@"get" withExpectedType:@"KalturaUserAssetsListItem"];
}

@end

@implementation KalturaUserLoginPinService
- (KalturaUserLoginPin*)addWithSecret:(NSString*)aSecret
{
    [self.client.params addIfDefinedKey:@"secret" withString:aSecret];
    return [self.client queueObjectService:@"userloginpin" withAction:@"add" withExpectedType:@"KalturaUserLoginPin"];
}

- (KalturaUserLoginPin*)add
{
    return [self addWithSecret:nil];
}

- (KALTURA_BOOL)deleteWithPinCode:(NSString*)aPinCode
{
    [self.client.params addIfDefinedKey:@"pinCode" withString:aPinCode];
    return [self.client queueBoolService:@"userloginpin" withAction:@"delete"];
}

- (KALTURA_BOOL)deleteAll
{
    return [self.client queueBoolService:@"userloginpin" withAction:@"deleteAll"];
}

- (KalturaUserLoginPin*)updateWithPinCode:(NSString*)aPinCode withSecret:(NSString*)aSecret
{
    [self.client.params addIfDefinedKey:@"pinCode" withString:aPinCode];
    [self.client.params addIfDefinedKey:@"secret" withString:aSecret];
    return [self.client queueObjectService:@"userloginpin" withAction:@"update" withExpectedType:@"KalturaUserLoginPin"];
}

- (KalturaUserLoginPin*)updateWithPinCode:(NSString*)aPinCode
{
    return [self updateWithPinCode:aPinCode withSecret:nil];
}

@end

@implementation KalturaUserRoleService
- (KalturaUserRoleListResponse*)listWithFilter:(KalturaUserRoleFilter*)aFilter
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    return [self.client queueObjectService:@"userrole" withAction:@"list" withExpectedType:@"KalturaUserRoleListResponse"];
}

- (KalturaUserRoleListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaClient

- (id)initWithConfig:(KalturaConfiguration*)aConfig
{
    self = [super initWithConfig:aConfig];
    if (self == nil)
        return nil;
    self.apiVersion = API_VERSION;
    return self;
}

- (KalturaAnnouncementService*)announcement
{
    if (self->_announcement == nil)
    	self->_announcement = [[KalturaAnnouncementService alloc] initWithClient:self];
    return self->_announcement;
}

- (KalturaAppTokenService*)appToken
{
    if (self->_appToken == nil)
    	self->_appToken = [[KalturaAppTokenService alloc] initWithClient:self];
    return self->_appToken;
}

- (KalturaAssetCommentService*)assetComment
{
    if (self->_assetComment == nil)
    	self->_assetComment = [[KalturaAssetCommentService alloc] initWithClient:self];
    return self->_assetComment;
}

- (KalturaAssetService*)asset
{
    if (self->_asset == nil)
    	self->_asset = [[KalturaAssetService alloc] initWithClient:self];
    return self->_asset;
}

- (KalturaAssetFileService*)assetFile
{
    if (self->_assetFile == nil)
    	self->_assetFile = [[KalturaAssetFileService alloc] initWithClient:self];
    return self->_assetFile;
}

- (KalturaAssetHistoryService*)assetHistory
{
    if (self->_assetHistory == nil)
    	self->_assetHistory = [[KalturaAssetHistoryService alloc] initWithClient:self];
    return self->_assetHistory;
}

- (KalturaAssetStatisticsService*)assetStatistics
{
    if (self->_assetStatistics == nil)
    	self->_assetStatistics = [[KalturaAssetStatisticsService alloc] initWithClient:self];
    return self->_assetStatistics;
}

- (KalturaBookmarkService*)bookmark
{
    if (self->_bookmark == nil)
    	self->_bookmark = [[KalturaBookmarkService alloc] initWithClient:self];
    return self->_bookmark;
}

- (KalturaCdnAdapterProfileService*)cdnAdapterProfile
{
    if (self->_cdnAdapterProfile == nil)
    	self->_cdnAdapterProfile = [[KalturaCdnAdapterProfileService alloc] initWithClient:self];
    return self->_cdnAdapterProfile;
}

- (KalturaCdnPartnerSettingsService*)cdnPartnerSettings
{
    if (self->_cdnPartnerSettings == nil)
    	self->_cdnPartnerSettings = [[KalturaCdnPartnerSettingsService alloc] initWithClient:self];
    return self->_cdnPartnerSettings;
}

- (KalturaCDVRAdapterProfileService*)cDVRAdapterProfile
{
    if (self->_cDVRAdapterProfile == nil)
    	self->_cDVRAdapterProfile = [[KalturaCDVRAdapterProfileService alloc] initWithClient:self];
    return self->_cDVRAdapterProfile;
}

- (KalturaChannelService*)channel
{
    if (self->_channel == nil)
    	self->_channel = [[KalturaChannelService alloc] initWithClient:self];
    return self->_channel;
}

- (KalturaCouponService*)coupon
{
    if (self->_coupon == nil)
    	self->_coupon = [[KalturaCouponService alloc] initWithClient:self];
    return self->_coupon;
}

- (KalturaEntitlementService*)entitlement
{
    if (self->_entitlement == nil)
    	self->_entitlement = [[KalturaEntitlementService alloc] initWithClient:self];
    return self->_entitlement;
}

- (KalturaExportTaskService*)exportTask
{
    if (self->_exportTask == nil)
    	self->_exportTask = [[KalturaExportTaskService alloc] initWithClient:self];
    return self->_exportTask;
}

- (KalturaExternalChannelProfileService*)externalChannelProfile
{
    if (self->_externalChannelProfile == nil)
    	self->_externalChannelProfile = [[KalturaExternalChannelProfileService alloc] initWithClient:self];
    return self->_externalChannelProfile;
}

- (KalturaFavoriteService*)favorite
{
    if (self->_favorite == nil)
    	self->_favorite = [[KalturaFavoriteService alloc] initWithClient:self];
    return self->_favorite;
}

- (KalturaFollowTvSeriesService*)followTvSeries
{
    if (self->_followTvSeries == nil)
    	self->_followTvSeries = [[KalturaFollowTvSeriesService alloc] initWithClient:self];
    return self->_followTvSeries;
}

- (KalturaHomeNetworkService*)homeNetwork
{
    if (self->_homeNetwork == nil)
    	self->_homeNetwork = [[KalturaHomeNetworkService alloc] initWithClient:self];
    return self->_homeNetwork;
}

- (KalturaHouseholdService*)household
{
    if (self->_household == nil)
    	self->_household = [[KalturaHouseholdService alloc] initWithClient:self];
    return self->_household;
}

- (KalturaHouseholdDeviceService*)householdDevice
{
    if (self->_householdDevice == nil)
    	self->_householdDevice = [[KalturaHouseholdDeviceService alloc] initWithClient:self];
    return self->_householdDevice;
}

- (KalturaHouseholdLimitationsService*)householdLimitations
{
    if (self->_householdLimitations == nil)
    	self->_householdLimitations = [[KalturaHouseholdLimitationsService alloc] initWithClient:self];
    return self->_householdLimitations;
}

- (KalturaHouseholdPaymentGatewayService*)householdPaymentGateway
{
    if (self->_householdPaymentGateway == nil)
    	self->_householdPaymentGateway = [[KalturaHouseholdPaymentGatewayService alloc] initWithClient:self];
    return self->_householdPaymentGateway;
}

- (KalturaHouseholdPaymentMethodService*)householdPaymentMethod
{
    if (self->_householdPaymentMethod == nil)
    	self->_householdPaymentMethod = [[KalturaHouseholdPaymentMethodService alloc] initWithClient:self];
    return self->_householdPaymentMethod;
}

- (KalturaHouseholdPremiumServiceService*)householdPremiumService
{
    if (self->_householdPremiumService == nil)
    	self->_householdPremiumService = [[KalturaHouseholdPremiumServiceService alloc] initWithClient:self];
    return self->_householdPremiumService;
}

- (KalturaHouseholdQuotaService*)householdQuota
{
    if (self->_householdQuota == nil)
    	self->_householdQuota = [[KalturaHouseholdQuotaService alloc] initWithClient:self];
    return self->_householdQuota;
}

- (KalturaHouseholdUserService*)householdUser
{
    if (self->_householdUser == nil)
    	self->_householdUser = [[KalturaHouseholdUserService alloc] initWithClient:self];
    return self->_householdUser;
}

- (KalturaInboxMessageService*)inboxMessage
{
    if (self->_inboxMessage == nil)
    	self->_inboxMessage = [[KalturaInboxMessageService alloc] initWithClient:self];
    return self->_inboxMessage;
}

- (KalturaLicensedUrlService*)licensedUrl
{
    if (self->_licensedUrl == nil)
    	self->_licensedUrl = [[KalturaLicensedUrlService alloc] initWithClient:self];
    return self->_licensedUrl;
}

- (KalturaMessageTemplateService*)messageTemplate
{
    if (self->_messageTemplate == nil)
    	self->_messageTemplate = [[KalturaMessageTemplateService alloc] initWithClient:self];
    return self->_messageTemplate;
}

- (KalturaNotificationService*)notification
{
    if (self->_notification == nil)
    	self->_notification = [[KalturaNotificationService alloc] initWithClient:self];
    return self->_notification;
}

- (KalturaNotificationsPartnerSettingsService*)notificationsPartnerSettings
{
    if (self->_notificationsPartnerSettings == nil)
    	self->_notificationsPartnerSettings = [[KalturaNotificationsPartnerSettingsService alloc] initWithClient:self];
    return self->_notificationsPartnerSettings;
}

- (KalturaNotificationsSettingsService*)notificationsSettings
{
    if (self->_notificationsSettings == nil)
    	self->_notificationsSettings = [[KalturaNotificationsSettingsService alloc] initWithClient:self];
    return self->_notificationsSettings;
}

- (KalturaOssAdapterProfileService*)ossAdapterProfile
{
    if (self->_ossAdapterProfile == nil)
    	self->_ossAdapterProfile = [[KalturaOssAdapterProfileService alloc] initWithClient:self];
    return self->_ossAdapterProfile;
}

- (KalturaOttCategoryService*)ottCategory
{
    if (self->_ottCategory == nil)
    	self->_ottCategory = [[KalturaOttCategoryService alloc] initWithClient:self];
    return self->_ottCategory;
}

- (KalturaOttUserService*)ottUser
{
    if (self->_ottUser == nil)
    	self->_ottUser = [[KalturaOttUserService alloc] initWithClient:self];
    return self->_ottUser;
}

- (KalturaParentalRuleService*)parentalRule
{
    if (self->_parentalRule == nil)
    	self->_parentalRule = [[KalturaParentalRuleService alloc] initWithClient:self];
    return self->_parentalRule;
}

- (KalturaPartnerConfigurationService*)partnerConfiguration
{
    if (self->_partnerConfiguration == nil)
    	self->_partnerConfiguration = [[KalturaPartnerConfigurationService alloc] initWithClient:self];
    return self->_partnerConfiguration;
}

- (KalturaPaymentGatewayProfileService*)paymentGatewayProfile
{
    if (self->_paymentGatewayProfile == nil)
    	self->_paymentGatewayProfile = [[KalturaPaymentGatewayProfileService alloc] initWithClient:self];
    return self->_paymentGatewayProfile;
}

- (KalturaPaymentMethodProfileService*)paymentMethodProfile
{
    if (self->_paymentMethodProfile == nil)
    	self->_paymentMethodProfile = [[KalturaPaymentMethodProfileService alloc] initWithClient:self];
    return self->_paymentMethodProfile;
}

- (KalturaPersonalFeedService*)personalFeed
{
    if (self->_personalFeed == nil)
    	self->_personalFeed = [[KalturaPersonalFeedService alloc] initWithClient:self];
    return self->_personalFeed;
}

- (KalturaPinService*)pin
{
    if (self->_pin == nil)
    	self->_pin = [[KalturaPinService alloc] initWithClient:self];
    return self->_pin;
}

- (KalturaPpvService*)ppv
{
    if (self->_ppv == nil)
    	self->_ppv = [[KalturaPpvService alloc] initWithClient:self];
    return self->_ppv;
}

- (KalturaProductPriceService*)productPrice
{
    if (self->_productPrice == nil)
    	self->_productPrice = [[KalturaProductPriceService alloc] initWithClient:self];
    return self->_productPrice;
}

- (KalturaPurchaseSettingsService*)purchaseSettings
{
    if (self->_purchaseSettings == nil)
    	self->_purchaseSettings = [[KalturaPurchaseSettingsService alloc] initWithClient:self];
    return self->_purchaseSettings;
}

- (KalturaRecommendationProfileService*)recommendationProfile
{
    if (self->_recommendationProfile == nil)
    	self->_recommendationProfile = [[KalturaRecommendationProfileService alloc] initWithClient:self];
    return self->_recommendationProfile;
}

- (KalturaRecordingService*)recording
{
    if (self->_recording == nil)
    	self->_recording = [[KalturaRecordingService alloc] initWithClient:self];
    return self->_recording;
}

- (KalturaRegionService*)region
{
    if (self->_region == nil)
    	self->_region = [[KalturaRegionService alloc] initWithClient:self];
    return self->_region;
}

- (KalturaRegistrySettingsService*)registrySettings
{
    if (self->_registrySettings == nil)
    	self->_registrySettings = [[KalturaRegistrySettingsService alloc] initWithClient:self];
    return self->_registrySettings;
}

- (KalturaSeriesRecordingService*)seriesRecording
{
    if (self->_seriesRecording == nil)
    	self->_seriesRecording = [[KalturaSeriesRecordingService alloc] initWithClient:self];
    return self->_seriesRecording;
}

- (KalturaSessionService*)session
{
    if (self->_session == nil)
    	self->_session = [[KalturaSessionService alloc] initWithClient:self];
    return self->_session;
}

- (KalturaSocialService*)social
{
    if (self->_social == nil)
    	self->_social = [[KalturaSocialService alloc] initWithClient:self];
    return self->_social;
}

- (KalturaSubscriptionService*)subscription
{
    if (self->_subscription == nil)
    	self->_subscription = [[KalturaSubscriptionService alloc] initWithClient:self];
    return self->_subscription;
}

- (KalturaSystemService*)system
{
    if (self->_system == nil)
    	self->_system = [[KalturaSystemService alloc] initWithClient:self];
    return self->_system;
}

- (KalturaTimeShiftedTvPartnerSettingsService*)timeShiftedTvPartnerSettings
{
    if (self->_timeShiftedTvPartnerSettings == nil)
    	self->_timeShiftedTvPartnerSettings = [[KalturaTimeShiftedTvPartnerSettingsService alloc] initWithClient:self];
    return self->_timeShiftedTvPartnerSettings;
}

- (KalturaTopicService*)topic
{
    if (self->_topic == nil)
    	self->_topic = [[KalturaTopicService alloc] initWithClient:self];
    return self->_topic;
}

- (KalturaTransactionService*)transaction
{
    if (self->_transaction == nil)
    	self->_transaction = [[KalturaTransactionService alloc] initWithClient:self];
    return self->_transaction;
}

- (KalturaTransactionHistoryService*)transactionHistory
{
    if (self->_transactionHistory == nil)
    	self->_transactionHistory = [[KalturaTransactionHistoryService alloc] initWithClient:self];
    return self->_transactionHistory;
}

- (KalturaUserAssetRuleService*)userAssetRule
{
    if (self->_userAssetRule == nil)
    	self->_userAssetRule = [[KalturaUserAssetRuleService alloc] initWithClient:self];
    return self->_userAssetRule;
}

- (KalturaUserAssetsListItemService*)userAssetsListItem
{
    if (self->_userAssetsListItem == nil)
    	self->_userAssetsListItem = [[KalturaUserAssetsListItemService alloc] initWithClient:self];
    return self->_userAssetsListItem;
}

- (KalturaUserLoginPinService*)userLoginPin
{
    if (self->_userLoginPin == nil)
    	self->_userLoginPin = [[KalturaUserLoginPinService alloc] initWithClient:self];
    return self->_userLoginPin;
}

- (KalturaUserRoleService*)userRole
{
    if (self->_userRole == nil)
    	self->_userRole = [[KalturaUserRoleService alloc] initWithClient:self];
    return self->_userRole;
}

- (void)dealloc
{
    [self->_announcement release];
    [self->_appToken release];
    [self->_assetComment release];
    [self->_asset release];
    [self->_assetFile release];
    [self->_assetHistory release];
    [self->_assetStatistics release];
    [self->_bookmark release];
    [self->_cdnAdapterProfile release];
    [self->_cdnPartnerSettings release];
    [self->_cDVRAdapterProfile release];
    [self->_channel release];
    [self->_coupon release];
    [self->_entitlement release];
    [self->_exportTask release];
    [self->_externalChannelProfile release];
    [self->_favorite release];
    [self->_followTvSeries release];
    [self->_homeNetwork release];
    [self->_household release];
    [self->_householdDevice release];
    [self->_householdLimitations release];
    [self->_householdPaymentGateway release];
    [self->_householdPaymentMethod release];
    [self->_householdPremiumService release];
    [self->_householdQuota release];
    [self->_householdUser release];
    [self->_inboxMessage release];
    [self->_licensedUrl release];
    [self->_messageTemplate release];
    [self->_notification release];
    [self->_notificationsPartnerSettings release];
    [self->_notificationsSettings release];
    [self->_ossAdapterProfile release];
    [self->_ottCategory release];
    [self->_ottUser release];
    [self->_parentalRule release];
    [self->_partnerConfiguration release];
    [self->_paymentGatewayProfile release];
    [self->_paymentMethodProfile release];
    [self->_personalFeed release];
    [self->_pin release];
    [self->_ppv release];
    [self->_productPrice release];
    [self->_purchaseSettings release];
    [self->_recommendationProfile release];
    [self->_recording release];
    [self->_region release];
    [self->_registrySettings release];
    [self->_seriesRecording release];
    [self->_session release];
    [self->_social release];
    [self->_subscription release];
    [self->_system release];
    [self->_timeShiftedTvPartnerSettings release];
    [self->_topic release];
    [self->_transaction release];
    [self->_transactionHistory release];
    [self->_userAssetRule release];
    [self->_userAssetsListItem release];
    [self->_userLoginPin release];
    [self->_userRole release];
	[super dealloc];
}

@end

