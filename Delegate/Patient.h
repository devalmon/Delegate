//
//  Patient.h
//  Delegate
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) double temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) takeShot;

@end

@protocol PatientDelegate <NSObject>

- (void) patientFeelsBad: (Patient*) patient;
- (void) patient:(Patient *) patient hasQuestion:(NSString *) question;

@end

NS_ASSUME_NONNULL_END
