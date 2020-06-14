//
//  SceneDelegate.m
//  Delegate
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewController.h"
#import "Doctor.h"
#import "Patient.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *) scene];
    self.window.backgroundColor = [UIColor systemRedColor];
    ViewController *rootViewController = ViewController.new;
//    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    
    Patient *patient1 = Patient.new;
    Patient *patient2 = Patient.new;
    Patient *patient3 = Patient.new;
    Patient *patient4 = Patient.new;
    
    patient1.name = @"Vova";
    patient2.name = @"Petya";
    patient3.name = @"Vasya";
    patient4.name = @"Max";
    
    patient1.temperature = 36.6f;
    patient2.temperature = 40.2f;
    patient3.temperature = 37.0f;
    patient4.temperature = 38.0f;
    
    Doctor *doctor1 = Doctor.new;
    
    patient1.delegate = doctor1;
    patient2.delegate = doctor1;
    patient3.delegate = doctor1;
    patient4.delegate = doctor1;
    
    NSLog(@"%@ are you ok? %s", patient1.name, [patient1 howAreYou] ? "Yes" : "No");
    NSLog(@"%@ are you ok? %s", patient2.name, [patient2 howAreYou] ? "Yes" : "No");
    NSLog(@"%@ are you ok? %s", patient3.name, [patient3 howAreYou] ? "Yes" : "No");
    NSLog(@"%@ are you ok? %s", patient4.name, [patient4 howAreYou] ? "Yes" : "No");
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
