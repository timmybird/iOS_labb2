//
//  GameLogic.m
//  iOS Labb 2
//
//  Created by Bartek Svaberg on 2016-02-05.
//  Copyright © 2016 Bartek Svaberg. All rights reserved.
//

#import "GameLogic.h"
#import "Question.h"


@implementation GameLogic

- (void) initNewGame {
    Question *q1 = [[Question alloc]init];
    Question *q2 = [[Question alloc]init];
    Question *q3 = [[Question alloc]init];
    Question *q4 = [[Question alloc]init];
    Question *q5 = [[Question alloc]init];
    Question *q6 = [[Question alloc]init];
    Question *q7 = [[Question alloc]init];
    Question *q8 = [[Question alloc]init];
    Question *q9 = [[Question alloc]init];
    Question *q10 = [[Question alloc]init];
    
    
    q1.questionText = @"Bibeln talar om Fadern, Sonen och...?";
    q1.correctAnswer = @"Den Helige Anden";
    q1.wrongAnswer1 = @"Den Veliga Tanten";
    q1.wrongAnswer2 = @"Den Repade Vanten";
    q1.wrongAnswer3 = @"Den Skenhelige Mannen";
    
    q2.questionText = @"Vad heter Adam och Evas två äldsta söner?";
    q2.correctAnswer = @"Kain och Abel";
    q2.wrongAnswer1 = @"Ain och Kabel";
    q2.wrongAnswer2 = @"Kanin och Snabel";
    q2.wrongAnswer3 = @"Skandal och Aber";
    
    q3.questionText = @"Vad heter Adam och Evas tredje son?";
    q3.correctAnswer = @"Set";
    q3.wrongAnswer1 = @"Game";
    q3.wrongAnswer2 = @"Match";
    q3.wrongAnswer3 = @"Boll";
    
    q4.questionText = @"Av hur många medlemmar består metalbandet Slipknot";
    q4.correctAnswer = @"9";
    q4.wrongAnswer1 = @"3";
    q4.wrongAnswer2 = @"6";
    q4.wrongAnswer3 = @"12";
    
    q5.questionText = @"Vad hette Elvis Presleys första album?";
    q5.correctAnswer = @"Elvis Presley";
    q5.wrongAnswer1 = @"Elvis";
    q5.wrongAnswer2 = @"Presley";
    q5.wrongAnswer3 = @"This is Elvis";
    
    q6.questionText = @"Hur gammal var Mozart då han skrev sitt första musikstycke";
    q6.correctAnswer = @"3";
    q6.wrongAnswer1 = @"4";
    q6.wrongAnswer2 = @"5";
    q6.wrongAnswer3 = @"6";
    
    q7.questionText = @"Apple Inc släppte 1976 sin första dator. Vad hette den?";
    q7.correctAnswer = @"Apple I";
    q7.wrongAnswer1 = @"iComputer";
    q7.wrongAnswer2 = @"Macintosh";
    q7.wrongAnswer3 = @"Jobsworth";
    
    q8.questionText = @"Grundaren av Telefonaktiebolaget L M Ericsson hette...?";
    q8.correctAnswer = @"Lars Magnus Ericsson";
    q8.wrongAnswer1 = @"Lars Michael Ericsson";
    q8.wrongAnswer2 = @"Leif Martin Ericsson";
    q8.wrongAnswer3 = @"Lukas Mazarin Ericsson";
    
    q9.questionText = @"År 1914 föll bokstavligen startskotten för första världskriget i och med skotten i...?";
    q9.correctAnswer = @"Sarajevo";
    q9.wrongAnswer1 = @"Wien";
    q9.wrongAnswer2 = @"Belgrad";
    q9.wrongAnswer3 = @"Stalingrad";
    
    q10.questionText = @"Om du lider av araechanfobi har du skräck för...?";
    q10.correctAnswer = @"Spindlar";
    q10.wrongAnswer1 = @"Torg";
    q10.wrongAnswer2 = @"Fåglar";
    q10.wrongAnswer3 = @"Ormar";
    
    
    self.questions = [[NSMutableArray alloc]init];
    
    [self.questions addObject:q1];
    [self.questions addObject:q2];
    [self.questions addObject:q3];
    [self.questions addObject:q4];
    [self.questions addObject:q5];
    [self.questions addObject:q6];
    [self.questions addObject:q7];
    [self.questions addObject:q8];
    [self.questions addObject:q9];
    [self.questions addObject:q10];
    
}

- (Question *) generateNewQuestion {
    return self.questions[arc4random() % [self.questions count]];
    
}

- (BOOL *) checkIfGivenAnswer:(NSString *)guess
            equalsRightAnswer:(NSString *)rightAnswer{
    
    return ([guess isEqualToString:rightAnswer]);
}


@end
