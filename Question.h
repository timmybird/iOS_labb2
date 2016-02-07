//
//  Question.h
//  iOS Labb 2
//
//  Created by Bartek Svaberg on 2016-02-05.
//  Copyright © 2016 Bartek Svaberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString *questionText;
@property (nonatomic) NSString *correctAnswer;
@property (nonatomic) NSString *wrongAnswer1;
@property (nonatomic) NSString *wrongAnswer2;
@property (nonatomic) NSString *wrongAnswer3;
@property (nonatomic) BOOL *gone;


@end
