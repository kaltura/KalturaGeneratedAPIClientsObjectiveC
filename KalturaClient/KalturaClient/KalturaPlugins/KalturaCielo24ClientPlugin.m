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
#import "KalturaCielo24ClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaCielo24Fidelity
+ (NSString*)MECHANICAL
{
    return @"MECHANICAL";
}
+ (NSString*)PREMIUM
{
    return @"PREMIUM";
}
+ (NSString*)PROFESSIONAL
{
    return @"PROFESSIONAL";
}
@end

@implementation KalturaCielo24Priority
+ (NSString*)PRIORITY
{
    return @"PRIORITY";
}
+ (NSString*)STANDARD
{
    return @"STANDARD";
}
@end

///////////////////////// classes /////////////////////////
@interface KalturaCielo24JobProviderData()
@property (nonatomic,copy) NSString* username;
@property (nonatomic,copy) NSString* password;
@property (nonatomic,copy) NSString* baseUrl;
@end

@implementation KalturaCielo24JobProviderData
@synthesize entryId = _entryId;
@synthesize flavorAssetId = _flavorAssetId;
@synthesize captionAssetFormats = _captionAssetFormats;
@synthesize priority = _priority;
@synthesize fidelity = _fidelity;
@synthesize username = _username;
@synthesize password = _password;
@synthesize baseUrl = _baseUrl;
@synthesize spokenLanguage = _spokenLanguage;
@synthesize replaceMediaContent = _replaceMediaContent;
@synthesize additionalParameters = _additionalParameters;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_replaceMediaContent = KALTURA_UNDEF_BOOL;
    return self;
}

- (KalturaFieldType)getTypeOfEntryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFlavorAssetId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCaptionAssetFormats
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPriority
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFidelity
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfBaseUrl
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSpokenLanguage
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfReplaceMediaContent
{
    return KFT_Bool;
}

- (KalturaFieldType)getTypeOfAdditionalParameters
{
    return KFT_String;
}

- (void)setReplaceMediaContentFromString:(NSString*)aPropVal
{
    self.replaceMediaContent = [KalturaSimpleTypeParser parseBool:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaCielo24JobProviderData"];
    [aParams addIfDefinedKey:@"entryId" withString:self.entryId];
    [aParams addIfDefinedKey:@"flavorAssetId" withString:self.flavorAssetId];
    [aParams addIfDefinedKey:@"captionAssetFormats" withString:self.captionAssetFormats];
    [aParams addIfDefinedKey:@"priority" withString:self.priority];
    [aParams addIfDefinedKey:@"fidelity" withString:self.fidelity];
    [aParams addIfDefinedKey:@"spokenLanguage" withString:self.spokenLanguage];
    [aParams addIfDefinedKey:@"replaceMediaContent" withBool:self.replaceMediaContent];
    [aParams addIfDefinedKey:@"additionalParameters" withString:self.additionalParameters];
}

- (void)dealloc
{
    [self->_entryId release];
    [self->_flavorAssetId release];
    [self->_captionAssetFormats release];
    [self->_priority release];
    [self->_fidelity release];
    [self->_username release];
    [self->_password release];
    [self->_baseUrl release];
    [self->_spokenLanguage release];
    [self->_additionalParameters release];
    [super dealloc];
}

@end

///////////////////////// services /////////////////////////
