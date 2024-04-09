//
//  TrainingSDKBridge.swift
//  SDKTrainingExample
//
//

import Foundation
import TrainingSDK
import React

@objc(TrainingSDKBridge)
class TrainingSDKBridge: NSObject {
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc func start(_ user: String, clientId: String, clientSecret: String, resolver resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) {
    WorkoutSDK.sharedInstance.start(with: user, clientId: clientId, clientSecret: clientSecret)
    resolve(nil)
  }
  
  @objc
  func updateProfile(sex: String?, height: NSNumber?, weight: NSNumber?, birthDateString: String?, resolver resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "yyyy-MM-dd" // Asegúrate de que este formato coincida con el que envías desde JS

      let birthDate = birthDateString != nil ? dateFormatter.date(from: birthDateString!) : nil
      let gender = sex != nil ? TrainingGender(rawValue: sex!) : nil

      WorkoutSDK.sharedInstance.updateProfile(sex: gender, height: height?.intValue, weigth: weight?.intValue, birthDate: birthDate)

      resolve(nil)
  }

  @objc
  func showTrainingModule() {
    WorkoutSDK.sharedInstance.showWorkoutPlan()
  }
  
  @objc func startSession(user: String, _ clientId: String, clientSecret: String) {
    WorkoutSDK.sharedInstance.start(with: user, clientId: clientId, clientSecret: clientSecret)
  }
  
  @objc func logout() {
    WorkoutSDK.sharedInstance.logout()
  }
  
  @objc func setMainColor(_ color: String) {
    WorkoutSDK.sharedInstance.setMainColor(color: color)
  }
  
  @objc
  func setNavigationBarColor(_ color: String) {
    WorkoutSDK.sharedInstance.setNavigationBarColor(color: color)
  }

  @objc
  func setNavigationTintColor(_ color: String) {
    WorkoutSDK.sharedInstance.setNavigationTintColor(color: color)
  }

  
}
