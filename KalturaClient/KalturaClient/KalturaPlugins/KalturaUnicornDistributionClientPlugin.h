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
@interface KalturaUnicornDistributionProfileOrderBy : NSObject
+ (NSString*)CREATED_AT_ASC;
+ (NSString*)UPDATED_AT_ASC;
+ (NSString*)CREATED_AT_DESC;
+ (NSString*)UPDATED_AT_DESC;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionProviderOrderBy : NSObject
@end

///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionProvider : KalturaDistributionProvider
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionJobProviderData : KalturaConfigurableDistributionJobProviderData
// The Catalog GUID the video is in or will be ingested into.
@property (nonatomic,copy) NSString* catalogGuid;
// The Title assigned to the video. The Foreign Key will be used if no title is provided.
@property (nonatomic,copy) NSString* title;
// Indicates that the media content changed and therefore the job should wait for HTTP callback notification to be closed.
@property (nonatomic,assign) KALTURA_BOOL mediaChanged;
// Flavor asset version.
@property (nonatomic,copy) NSString* flavorAssetVersion;
// The schema and host name to the Kaltura server, e.g. http://www.kaltura.com
@property (nonatomic,copy) NSString* notificationBaseUrl;
- (KalturaFieldType)getTypeOfCatalogGuid;
- (KalturaFieldType)getTypeOfTitle;
- (KalturaFieldType)getTypeOfMediaChanged;
- (KalturaFieldType)getTypeOfFlavorAssetVersion;
- (KalturaFieldType)getTypeOfNotificationBaseUrl;
- (void)setMediaChangedFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionProfile : KalturaConfigurableDistributionProfile
// The email address associated with the Upload User, used to authorize the incoming request.
@property (nonatomic,copy) NSString* username;
// The password used in association with the email to determine if the Upload User is authorized the incoming request.
@property (nonatomic,copy) NSString* password;
// The name of the Domain that the Upload User should have access to, Used for authentication.
@property (nonatomic,copy) NSString* domainName;
// The Channel GUID assigned to this Publication Rule. Must be a valid Channel in the Domain that was used in authentication.
@property (nonatomic,copy) NSString* channelGuid;
// The API host URL that the Upload User should have access to, Used for HTTP content submission.
@property (nonatomic,copy) NSString* apiHostUrl;
// The GUID of the Customer Domain in the Unicorn system obtained by contacting your Unicorn representative.
@property (nonatomic,copy) NSString* domainGuid;
// The GUID for the application in which to record metrics and enforce business rules obtained through your Unicorn representative.
@property (nonatomic,copy) NSString* adFreeApplicationGuid;
// The flavor-params that will be used for the remote asset.
@property (nonatomic,assign) int remoteAssetParamsId;
// The remote storage that should be used for the remote asset.
@property (nonatomic,copy) NSString* storageProfileId;
- (KalturaFieldType)getTypeOfUsername;
- (KalturaFieldType)getTypeOfPassword;
- (KalturaFieldType)getTypeOfDomainName;
- (KalturaFieldType)getTypeOfChannelGuid;
- (KalturaFieldType)getTypeOfApiHostUrl;
- (KalturaFieldType)getTypeOfDomainGuid;
- (KalturaFieldType)getTypeOfAdFreeApplicationGuid;
- (KalturaFieldType)getTypeOfRemoteAssetParamsId;
- (KalturaFieldType)getTypeOfStorageProfileId;
- (void)setRemoteAssetParamsIdFromString:(NSString*)aPropVal;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionProviderBaseFilter : KalturaDistributionProviderFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionProviderFilter : KalturaUnicornDistributionProviderBaseFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionProfileBaseFilter : KalturaConfigurableDistributionProfileFilter
@end

// @package Kaltura
// @subpackage Client
@interface KalturaUnicornDistributionProfileFilter : KalturaUnicornDistributionProfileBaseFilter
@end

///////////////////////// services /////////////////////////
// @package Kaltura
// @subpackage Client
// Unicorn Service
@interface KalturaUnicornService : KalturaServiceBase
- (void)notifyWithId:(int)aId;
@end

@interface KalturaUnicornDistributionClientPlugin : KalturaClientPlugin
{
	KalturaUnicornService* _unicorn;
}

@property (nonatomic, assign) KalturaClientBase* client;
@property (nonatomic, readonly) KalturaUnicornService* unicorn;
@end

