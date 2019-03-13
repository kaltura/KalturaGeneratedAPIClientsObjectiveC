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
#import "KalturaMsnDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaMsnDistributionProfileOrderBy
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

@implementation KalturaMsnDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaMsnDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMsnDistributionProvider"];
}

@end

@implementation KalturaMsnDistributionJobProviderData
@synthesize xml = _xml;

- (KalturaFieldType)getTypeOfXml
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMsnDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"xml" withString:self.xml];
}

- (void)dealloc
{
    [self->_xml release];
    [super dealloc];
}

@end

@implementation KalturaMsnDistributionProfile
@synthesize username = _username;
@synthesize password = _password;
@synthesize domain = _domain;
@synthesize csId = _csId;
@synthesize source = _source;
@synthesize sourceFriendlyName = _sourceFriendlyName;
@synthesize pageGroup = _pageGroup;
@synthesize sourceFlavorParamsId = _sourceFlavorParamsId;
@synthesize wmvFlavorParamsId = _wmvFlavorParamsId;
@synthesize flvFlavorParamsId = _flvFlavorParamsId;
@synthesize slFlavorParamsId = _slFlavorParamsId;
@synthesize slHdFlavorParamsId = _slHdFlavorParamsId;
@synthesize msnvideoCat = _msnvideoCat;
@synthesize msnvideoTop = _msnvideoTop;
@synthesize msnvideoTopCat = _msnvideoTopCat;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_sourceFlavorParamsId = KALTURA_UNDEF_INT;
    self->_wmvFlavorParamsId = KALTURA_UNDEF_INT;
    self->_flvFlavorParamsId = KALTURA_UNDEF_INT;
    self->_slFlavorParamsId = KALTURA_UNDEF_INT;
    self->_slHdFlavorParamsId = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfUsername
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPassword
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfDomain
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfCsId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSource
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSourceFriendlyName
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPageGroup
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfSourceFlavorParamsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfWmvFlavorParamsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfFlvFlavorParamsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSlFlavorParamsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfSlHdFlavorParamsId
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfMsnvideoCat
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMsnvideoTop
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfMsnvideoTopCat
{
    return KFT_String;
}

- (void)setSourceFlavorParamsIdFromString:(NSString*)aPropVal
{
    self.sourceFlavorParamsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setWmvFlavorParamsIdFromString:(NSString*)aPropVal
{
    self.wmvFlavorParamsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setFlvFlavorParamsIdFromString:(NSString*)aPropVal
{
    self.flvFlavorParamsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSlFlavorParamsIdFromString:(NSString*)aPropVal
{
    self.slFlavorParamsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setSlHdFlavorParamsIdFromString:(NSString*)aPropVal
{
    self.slHdFlavorParamsId = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMsnDistributionProfile"];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"password" withString:self.password];
    [aParams addIfDefinedKey:@"domain" withString:self.domain];
    [aParams addIfDefinedKey:@"csId" withString:self.csId];
    [aParams addIfDefinedKey:@"source" withString:self.source];
    [aParams addIfDefinedKey:@"sourceFriendlyName" withString:self.sourceFriendlyName];
    [aParams addIfDefinedKey:@"pageGroup" withString:self.pageGroup];
    [aParams addIfDefinedKey:@"sourceFlavorParamsId" withInt:self.sourceFlavorParamsId];
    [aParams addIfDefinedKey:@"wmvFlavorParamsId" withInt:self.wmvFlavorParamsId];
    [aParams addIfDefinedKey:@"flvFlavorParamsId" withInt:self.flvFlavorParamsId];
    [aParams addIfDefinedKey:@"slFlavorParamsId" withInt:self.slFlavorParamsId];
    [aParams addIfDefinedKey:@"slHdFlavorParamsId" withInt:self.slHdFlavorParamsId];
    [aParams addIfDefinedKey:@"msnvideoCat" withString:self.msnvideoCat];
    [aParams addIfDefinedKey:@"msnvideoTop" withString:self.msnvideoTop];
    [aParams addIfDefinedKey:@"msnvideoTopCat" withString:self.msnvideoTopCat];
}

- (void)dealloc
{
    [self->_username release];
    [self->_password release];
    [self->_domain release];
    [self->_csId release];
    [self->_source release];
    [self->_sourceFriendlyName release];
    [self->_pageGroup release];
    [self->_msnvideoCat release];
    [self->_msnvideoTop release];
    [self->_msnvideoTopCat release];
    [super dealloc];
}

@end

@implementation KalturaMsnDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMsnDistributionProviderBaseFilter"];
}

@end

@implementation KalturaMsnDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMsnDistributionProviderFilter"];
}

@end

@implementation KalturaMsnDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMsnDistributionProfileBaseFilter"];
}

@end

@implementation KalturaMsnDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaMsnDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
