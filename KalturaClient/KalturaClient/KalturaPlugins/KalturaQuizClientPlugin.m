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
// Copyright (C) 2006-2015  Kaltura Inc.
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
#import "KalturaQuizClientPlugin.h"

///////////////////////// enums /////////////////////////
@implementation KalturaAnswerCuePointOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)PARTNER_SORT_VALUE_ASC
{
    return @"+partnerSortValue";
}
+ (NSString*)START_TIME_ASC
{
    return @"+startTime";
}
+ (NSString*)TRIGGERED_AT_ASC
{
    return @"+triggeredAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)PARTNER_SORT_VALUE_DESC
{
    return @"-partnerSortValue";
}
+ (NSString*)START_TIME_DESC
{
    return @"-startTime";
}
+ (NSString*)TRIGGERED_AT_DESC
{
    return @"-triggeredAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

@implementation KalturaQuestionCuePointOrderBy
+ (NSString*)CREATED_AT_ASC
{
    return @"+createdAt";
}
+ (NSString*)PARTNER_SORT_VALUE_ASC
{
    return @"+partnerSortValue";
}
+ (NSString*)START_TIME_ASC
{
    return @"+startTime";
}
+ (NSString*)TRIGGERED_AT_ASC
{
    return @"+triggeredAt";
}
+ (NSString*)UPDATED_AT_ASC
{
    return @"+updatedAt";
}
+ (NSString*)CREATED_AT_DESC
{
    return @"-createdAt";
}
+ (NSString*)PARTNER_SORT_VALUE_DESC
{
    return @"-partnerSortValue";
}
+ (NSString*)START_TIME_DESC
{
    return @"-startTime";
}
+ (NSString*)TRIGGERED_AT_DESC
{
    return @"-triggeredAt";
}
+ (NSString*)UPDATED_AT_DESC
{
    return @"-updatedAt";
}
@end

///////////////////////// classes /////////////////////////
@implementation KalturaOptionalAnswer
@synthesize key = _key;
@synthesize text = _text;
@synthesize weight = _weight;
@synthesize isCorrect = _isCorrect;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_weight = KALTURA_UNDEF_FLOAT;
    self->_isCorrect = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfText
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfWeight
{
    return KFT_Float;
}

- (KalturaFieldType)getTypeOfIsCorrect
{
    return KFT_Int;
}

- (void)setWeightFromString:(NSString*)aPropVal
{
    self.weight = [KalturaSimpleTypeParser parseFloat:aPropVal];
}

- (void)setIsCorrectFromString:(NSString*)aPropVal
{
    self.isCorrect = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaOptionalAnswer"];
    [aParams addIfDefinedKey:@"key" withString:self.key];
    [aParams addIfDefinedKey:@"text" withString:self.text];
    [aParams addIfDefinedKey:@"weight" withFloat:self.weight];
    [aParams addIfDefinedKey:@"isCorrect" withInt:self.isCorrect];
}

- (void)dealloc
{
    [self->_key release];
    [self->_text release];
    [super dealloc];
}

@end

@interface KalturaQuiz()
@property (nonatomic,assign) int version;
@end

@implementation KalturaQuiz
@synthesize version = _version;
@synthesize uiAttributes = _uiAttributes;
@synthesize showResultOnAnswer = _showResultOnAnswer;
@synthesize showCorrectKeyOnAnswer = _showCorrectKeyOnAnswer;
@synthesize allowAnswerUpdate = _allowAnswerUpdate;
@synthesize showCorrectAfterSubmission = _showCorrectAfterSubmission;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_version = KALTURA_UNDEF_INT;
    self->_showResultOnAnswer = KALTURA_UNDEF_INT;
    self->_showCorrectKeyOnAnswer = KALTURA_UNDEF_INT;
    self->_allowAnswerUpdate = KALTURA_UNDEF_INT;
    self->_showCorrectAfterSubmission = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfVersion
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfUiAttributes
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfUiAttributes
{
    return @"KalturaKeyValue";
}

- (KalturaFieldType)getTypeOfShowResultOnAnswer
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfShowCorrectKeyOnAnswer
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfAllowAnswerUpdate
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfShowCorrectAfterSubmission
{
    return KFT_Int;
}

- (void)setVersionFromString:(NSString*)aPropVal
{
    self.version = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setShowResultOnAnswerFromString:(NSString*)aPropVal
{
    self.showResultOnAnswer = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setShowCorrectKeyOnAnswerFromString:(NSString*)aPropVal
{
    self.showCorrectKeyOnAnswer = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setAllowAnswerUpdateFromString:(NSString*)aPropVal
{
    self.allowAnswerUpdate = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)setShowCorrectAfterSubmissionFromString:(NSString*)aPropVal
{
    self.showCorrectAfterSubmission = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuiz"];
    [aParams addIfDefinedKey:@"uiAttributes" withArray:self.uiAttributes];
    [aParams addIfDefinedKey:@"showResultOnAnswer" withInt:self.showResultOnAnswer];
    [aParams addIfDefinedKey:@"showCorrectKeyOnAnswer" withInt:self.showCorrectKeyOnAnswer];
    [aParams addIfDefinedKey:@"allowAnswerUpdate" withInt:self.allowAnswerUpdate];
    [aParams addIfDefinedKey:@"showCorrectAfterSubmission" withInt:self.showCorrectAfterSubmission];
}

- (void)dealloc
{
    [self->_uiAttributes release];
    [super dealloc];
}

@end

@interface KalturaAnswerCuePoint()
@property (nonatomic,assign) int isCorrect;
@property (nonatomic,retain) KalturaTypedArray* correctAnswerKeys;
@property (nonatomic,copy) NSString* explanation;
@end

@implementation KalturaAnswerCuePoint
@synthesize parentId = _parentId;
@synthesize quizUserEntryId = _quizUserEntryId;
@synthesize answerKey = _answerKey;
@synthesize isCorrect = _isCorrect;
@synthesize correctAnswerKeys = _correctAnswerKeys;
@synthesize explanation = _explanation;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isCorrect = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfParentId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfQuizUserEntryId
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfAnswerKey
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfIsCorrect
{
    return KFT_Int;
}

- (KalturaFieldType)getTypeOfCorrectAnswerKeys
{
    return KFT_Object;
}

- (NSString*)getObjectTypeOfCorrectAnswerKeys
{
    return @"KalturaTypedArray";
}

- (KalturaFieldType)getTypeOfExplanation
{
    return KFT_String;
}

- (void)setIsCorrectFromString:(NSString*)aPropVal
{
    self.isCorrect = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAnswerCuePoint"];
    [aParams addIfDefinedKey:@"parentId" withString:self.parentId];
    [aParams addIfDefinedKey:@"quizUserEntryId" withString:self.quizUserEntryId];
    [aParams addIfDefinedKey:@"answerKey" withString:self.answerKey];
}

- (void)dealloc
{
    [self->_parentId release];
    [self->_quizUserEntryId release];
    [self->_answerKey release];
    [self->_correctAnswerKeys release];
    [self->_explanation release];
    [super dealloc];
}

@end

@implementation KalturaQuestionCuePoint
@synthesize optionalAnswers = _optionalAnswers;
@synthesize hint = _hint;
@synthesize question = _question;
@synthesize explanation = _explanation;

- (KalturaFieldType)getTypeOfOptionalAnswers
{
    return KFT_Dictionary;
}

- (NSString*)getObjectTypeOfOptionalAnswers
{
    return @"KalturaOptionalAnswer";
}

- (KalturaFieldType)getTypeOfHint
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfQuestion
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfExplanation
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuestionCuePoint"];
    [aParams addIfDefinedKey:@"optionalAnswers" withDictionary:self.optionalAnswers];
    [aParams addIfDefinedKey:@"hint" withString:self.hint];
    [aParams addIfDefinedKey:@"question" withString:self.question];
    [aParams addIfDefinedKey:@"explanation" withString:self.explanation];
}

- (void)dealloc
{
    [self->_optionalAnswers release];
    [self->_hint release];
    [self->_question release];
    [self->_explanation release];
    [super dealloc];
}

@end

@implementation KalturaQuizAdvancedFilter
@synthesize isQuiz = _isQuiz;

- (id)init
{
    self = [super init];
    if (self == nil)
        return nil;
    self->_isQuiz = KALTURA_UNDEF_INT;
    return self;
}

- (KalturaFieldType)getTypeOfIsQuiz
{
    return KFT_Int;
}

- (void)setIsQuizFromString:(NSString*)aPropVal
{
    self.isQuiz = [KalturaSimpleTypeParser parseInt:aPropVal];
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuizAdvancedFilter"];
    [aParams addIfDefinedKey:@"isQuiz" withInt:self.isQuiz];
}

@end

@interface KalturaQuizListResponse()
@property (nonatomic,retain) NSMutableArray* objects;
@end

@implementation KalturaQuizListResponse
@synthesize objects = _objects;

- (KalturaFieldType)getTypeOfObjects
{
    return KFT_Array;
}

- (NSString*)getObjectTypeOfObjects
{
    return @"KalturaQuiz";
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuizListResponse"];
}

- (void)dealloc
{
    [self->_objects release];
    [super dealloc];
}

@end

@implementation KalturaQuizFilter
@synthesize entryIdEqual = _entryIdEqual;
@synthesize entryIdIn = _entryIdIn;

- (KalturaFieldType)getTypeOfEntryIdEqual
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfEntryIdIn
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuizFilter"];
    [aParams addIfDefinedKey:@"entryIdEqual" withString:self.entryIdEqual];
    [aParams addIfDefinedKey:@"entryIdIn" withString:self.entryIdIn];
}

- (void)dealloc
{
    [self->_entryIdEqual release];
    [self->_entryIdIn release];
    [super dealloc];
}

@end

@implementation KalturaAnswerCuePointBaseFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAnswerCuePointBaseFilter"];
}

@end

@implementation KalturaQuestionCuePointBaseFilter
@synthesize questionLike = _questionLike;
@synthesize questionMultiLikeOr = _questionMultiLikeOr;
@synthesize questionMultiLikeAnd = _questionMultiLikeAnd;

- (KalturaFieldType)getTypeOfQuestionLike
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfQuestionMultiLikeOr
{
    return KFT_String;
}

- (KalturaFieldType)getTypeOfQuestionMultiLikeAnd
{
    return KFT_String;
}

- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuestionCuePointBaseFilter"];
    [aParams addIfDefinedKey:@"questionLike" withString:self.questionLike];
    [aParams addIfDefinedKey:@"questionMultiLikeOr" withString:self.questionMultiLikeOr];
    [aParams addIfDefinedKey:@"questionMultiLikeAnd" withString:self.questionMultiLikeAnd];
}

- (void)dealloc
{
    [self->_questionLike release];
    [self->_questionMultiLikeOr release];
    [self->_questionMultiLikeAnd release];
    [super dealloc];
}

@end

@implementation KalturaAnswerCuePointFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaAnswerCuePointFilter"];
}

@end

@implementation KalturaQuestionCuePointFilter
- (void)toParams:(KalturaParams*)aParams isSuper:(BOOL)aIsSuper
{
    [super toParams:aParams isSuper:YES];
    if (!aIsSuper)
        [aParams putKey:@"objectType" withString:@"KalturaQuestionCuePointFilter"];
}

@end

///////////////////////// services /////////////////////////
@implementation KalturaQuizService
- (KalturaQuiz*)addWithEntryId:(NSString*)aEntryId withQuiz:(KalturaQuiz*)aQuiz
{
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    [self.client.params addIfDefinedKey:@"quiz" withObject:aQuiz];
    return [self.client queueObjectService:@"quiz_quiz" withAction:@"add" withExpectedType:@"KalturaQuiz"];
}

- (KalturaQuiz*)updateWithEntryId:(NSString*)aEntryId withQuiz:(KalturaQuiz*)aQuiz
{
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    [self.client.params addIfDefinedKey:@"quiz" withObject:aQuiz];
    return [self.client queueObjectService:@"quiz_quiz" withAction:@"update" withExpectedType:@"KalturaQuiz"];
}

- (KalturaQuiz*)getWithEntryId:(NSString*)aEntryId
{
    [self.client.params addIfDefinedKey:@"entryId" withString:aEntryId];
    return [self.client queueObjectService:@"quiz_quiz" withAction:@"get" withExpectedType:@"KalturaQuiz"];
}

- (KalturaQuizListResponse*)listWithFilter:(KalturaQuizFilter*)aFilter withPager:(KalturaFilterPager*)aPager
{
    [self.client.params addIfDefinedKey:@"filter" withObject:aFilter];
    [self.client.params addIfDefinedKey:@"pager" withObject:aPager];
    return [self.client queueObjectService:@"quiz_quiz" withAction:@"list" withExpectedType:@"KalturaQuizListResponse"];
}

- (KalturaQuizListResponse*)listWithFilter:(KalturaQuizFilter*)aFilter
{
    return [self listWithFilter:aFilter withPager:nil];
}

- (KalturaQuizListResponse*)list
{
    return [self listWithFilter:nil];
}

@end

@implementation KalturaQuizClientPlugin
@synthesize client = _client;

- (id)initWithClient:(KalturaClient*)aClient
{
    self = [super init];
    if (self == nil)
        return nil;
    self.client = aClient;
    return self;
}

- (KalturaQuizService*)quiz
{
    if (self->_quiz == nil)
    	self->_quiz = [[KalturaQuizService alloc] initWithClient:self.client];
    return self->_quiz;
}

- (void)dealloc
{
    [self->_quiz release];
	[super dealloc];
}

@end

