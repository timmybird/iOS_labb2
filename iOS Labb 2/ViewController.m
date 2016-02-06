//
//  ViewController.m
//  iOS Labb 2
//
//  Created by Bartek Svaberg on 2016-02-05.
//  Copyright © 2016 Bartek Svaberg. All rights reserved.
//

#import "ViewController.h"
#import "GameLogic.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *tvQuestion;
@property (nonatomic) GameLogic *gl;
@property (nonatomic) Question *question;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UILabel *labelRightWrong;
@property (weak, nonatomic) IBOutlet UIButton *btnNextQuestion;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gl = [[GameLogic alloc] init];
    [self.gl initNewGame];
    [self getNewQuestionAndUpdateScreen];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getNewQuestionAndUpdateScreen {
    self.btnNextQuestion.hidden = YES;
    self.labelRightWrong.text = @"";
    self.question = [[Question alloc] init];
    self.question =[self.gl generateNewQuestion];
    self.tvQuestion.text = self.question.questionText;
    [self.button1 setTitle: self.question.correctAnswer forState:UIControlStateNormal];
    [self.button2 setTitle:self.question.wrongAnswer1 forState:UIControlStateNormal];
    [self.button3 setTitle:self.question.wrongAnswer2 forState:UIControlStateNormal];
    [self.button4 setTitle:self.question.wrongAnswer3 forState:UIControlStateNormal];
    
}
- (IBAction)answerButtonPressed:(id)sender {
    NSString *buttonText = [sender titleForState:UIControlStateNormal];
    if ([self.gl checkIfGivenAnswer:buttonText equalsRightAnswer:self.question.correctAnswer]) {
        self.labelRightWrong.text = @"Grattis, ditt svar var rätt!";
    } else {
        self.labelRightWrong.text = @"Tyvärr, dit svar var felaktigt!";
    }
    self.btnNextQuestion.hidden = NO;
}

- (IBAction)nextQuestion:(id)sender {
    [self getNewQuestionAndUpdateScreen];
}


@end
