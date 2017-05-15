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
#import "KalturaDrmClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
// @package Kaltura
// @subpackage Client
@interface KalturaFairplayDrmProfile : KalturaDrmProfile
@property (nonatomic,copy) NSString* publicCertificate;
- (KalturaFieldType)getTypeOfPublicCertificate;
@end

// @package Kaltura
// @subpackage Client
@interface KalturaFairplayEntryContextPluginData : KalturaPluginData
// For fairplay (and maybe in the future other drm providers) we need to return a public certificate to encrypt
// 	 the request from the player to the server.
@property (nonatomic,copy) NSString* publicCertificate;
- (KalturaFieldType)getTypeOfPublicCertificate;
@end

///////////////////////// services /////////////////////////
