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
#import "KalturaPollClientPlugin.h"

///////////////////////// enums /////////////////////////
///////////////////////// classes /////////////////////////
///////////////////////// services /////////////////////////
@implementation KalturaPollService
- (NSString*)addWithPollType:(NSString*)aPollType
{
    [self.client.params addIfDefinedKey:@"pollType" withString:aPollType];
    return [self.client queueStringService:@"poll_poll" withAction:@"add"];
}

- (NSString*)add
{
    return [self addWithPollType:nil];
}

- (NSString*)getVoteWithPollId:(NSString*)aPollId withUserId:(NSString*)aUserId
{
    [self.client.params addIfDefinedKey:@"pollId" withString:aPollId];
    [self.client.params addIfDefinedKey:@"userId" withString:aUserId];
    return [self.client queueStringService:@"poll_poll" withAction:@"getVote"];
}

- (NSString*)getVotesWithPollId:(NSString*)aPollId withAnswerIds:(NSString*)aAnswerIds
{
    [self.client.params addIfDefinedKey:@"pollId" withString:aPollId];
    [self.client.params addIfDefinedKey:@"answerIds" withString:aAnswerIds];
    return [self.client queueStringService:@"poll_poll" withAction:@"getVotes"];
}

- (void)resetVotesWithPollId:(NSString*)aPollId
{
    [self.client.params addIfDefinedKey:@"pollId" withString:aPollId];
    [self.client queueVoidService:@"poll_poll" withAction:@"resetVotes"];
}

- (NSString*)voteWithPollId:(NSString*)aPollId withUserId:(NSString*)aUserId withAnswerIds:(NSString*)aAnswerIds
{
    [self.client.params addIfDefinedKey:@"pollId" withString:aPollId];
    [self.client.params addIfDefinedKey:@"userId" withString:aUserId];
    [self.client.params addIfDefinedKey:@"answerIds" withString:aAnswerIds];
    return [self.client queueStringService:@"poll_poll" withAction:@"vote"];
}

@end

@implementation KalturaPollClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaPollService*)poll
{
    if (self->_poll == nil)
    	self->_poll = [[KalturaPollService alloc] initWithClient:self.client];
    return self->_poll;
}

- (void)dealloc
{
    [self->_poll release];
	[super dealloc];
}

@end

