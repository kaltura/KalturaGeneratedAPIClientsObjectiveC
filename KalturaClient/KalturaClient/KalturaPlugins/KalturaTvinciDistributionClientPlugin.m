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
#import "KalturaTvinciDistributionClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaTvinciDistributionProfileOrderBy
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

@implementation KalturaTvinciDistributionProviderOrderBy
@end

///////////////////////// classes /////////////////////////
@implementation KalturaTvinciDistributionTag
@synthesize tagname = _tagname;
@synthesize extension = _extension;
@synthesize protocol = _protocol;
@synthesize format = _format;
@synthesize filename = _filename;
@synthesize ppvmodule = _ppvmodule;

- (KalturaFieldType)getTypeOfTagname
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExtension
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfProtocol
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFormat
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfFilename
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfPpvmodule
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionTag"];
    [aParams addIfDefinedKey:@"tagname" withString:self.tagname];
    [aParams addIfDefinedKey:@"extension" withString:self.extension];
    [aParams addIfDefinedKey:@"protocol" withString:self.protocol];
    [aParams addIfDefinedKey:@"format" withString:self.format];
    [aParams addIfDefinedKey:@"filename" withString:self.filename];
    [aParams addIfDefinedKey:@"ppvmodule" withString:self.ppvmodule];
}

- (void)dealloc
{
    [self->_tagname release];
    [self->_extension release];
    [self->_protocol release];
    [self->_format release];
    [self->_filename release];
    [self->_ppvmodule release];
    [super dealloc];
}

@end

@implementation KalturaTvinciDistributionProvider
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionProvider"];
}

@end

@implementation KalturaTvinciDistributionJobProviderData
@synthesize xml = _xml;

- (KalturaFieldType)getTypeOfXml
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionJobProviderData"];
    [aParams addIfDefinedKey:@"xml" withString:self.xml];
}

- (void)dealloc
{
    [self->_xml release];
    [super dealloc];
}

@end

@implementation KalturaTvinciDistributionProfile
@synthesize ingestUrl = _ingestUrl;
@synthesize username = _username;
@synthesize password = _password;
@synthesize tags = _tags;
@synthesize xsltFile = _xsltFile;

- (KalturaFieldType)getTypeOfIngestUrl
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

- (KalturaFieldType)getTypeOfTags
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfTags
{
    return @"KalturaTvinciDistributionTag";
}

- (KalturaFieldType)getTypeOfXsltFile
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionProfile"];
    [aParams addIfDefinedKey:@"ingestUrl" withString:self.ingestUrl];
    [aParams addIfDefinedKey:@"username" withString:self.username];
    [aParams addIfDefinedKey:@"password" withString:self.password];
    [aParams addIfDefinedKey:@"tags" withArray:self.tags];
    [aParams addIfDefinedKey:@"xsltFile" withString:self.xsltFile];
}

- (void)dealloc
{
    [self->_ingestUrl release];
    [self->_username release];
    [self->_password release];
    [self->_tags release];
    [self->_xsltFile release];
    [super dealloc];
}

@end

@implementation KalturaTvinciDistributionProviderBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionProviderBaseFilter"];
}

@end

@implementation KalturaTvinciDistributionProviderFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionProviderFilter"];
}

@end

@implementation KalturaTvinciDistributionProfileBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionProfileBaseFilter"];
}

@end

@implementation KalturaTvinciDistributionProfileFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaTvinciDistributionProfileFilter"];
}

@end

///////////////////////// services /////////////////////////
