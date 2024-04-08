//
//  NutritionSDKBridge.swift
//  SDKNutritionExample
//
//  Created by Miguel Muñoz on 28/11/23.
//

import Foundation
import NutritionIASDK
import React

@objc(NutritionSDKBridge)
class NutritionSDKBridge: NSObject {
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc func start(_ user: String, appID: String, password: String, resolver resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) {
    NutritionSDK.sharedInstance.start(with: user, appID: appID, password: password)
    resolve(nil)
  }
  
  @objc
  func updateProfile(sex: String?, height: NSNumber?, weight: NSNumber?, birthDateString: String?, resolver resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "yyyy-MM-dd" // Asegúrate de que este formato coincida con el que envías desde JS

      let birthDate = birthDateString != nil ? dateFormatter.date(from: birthDateString!) : nil
      let gender = sex != nil ? NutritionGender(rawValue: sex!) : nil

      NutritionSDK.sharedInstance.updateProfile(sex: gender, height: height?.intValue, weigth: weight?.intValue, birthDate: birthDate, generateMenu: true, needsWaitingScreens: true)

      resolve(nil)
  }

  @objc
  func showNutritionModule() {
    NutritionSDK.sharedInstance.showNutritionModule()
  }
  
  @objc func isProfileFilled(_ resolve: RCTPromiseResolveBlock) {
    let isFilled = NutritionSDK.sharedInstance.isProfileFilled()
    resolve(isFilled)
  }
  
  @objc func setMemberId(_ memberId: String) {
    NutritionSDK.sharedInstance.setMemberId(memberId)
  }
  
  @objc func setCountry(_ country: Int) {
    // Asumiendo que country se puede convertir a NutritionUserCountry
    let userCountry = NutritionUserCountry(rawValue: country) ?? .uk
    NutritionSDK.sharedInstance.setCountry(userCountry)
  }
  
  @objc func startSession(_ appID: String, password: String) {
    NutritionSDK.sharedInstance.startSession(appID: appID, password: password)
  }
  
  @objc func logout() {
    NutritionSDK.sharedInstance.logout()
  }
  
  @objc func setMainColor(_ color: String) {
    NutritionSDK.sharedInstance.setMainColor(color: color)
  }
  
  @objc
  func setNavigationBarColor(_ color: String) {
    NutritionSDK.sharedInstance.setNavigationBarColor(color: color)
  }

  @objc
  func setNavigationTintColor(_ color: String) {
    NutritionSDK.sharedInstance.setNavigationTintColor(color: color)
  }

  @objc
  func setNavigationTitle(_ title: String) {
    NutritionSDK.sharedInstance.setNavigationTitle(title: title)
  }

  @objc
  func setLanguage(_ language: String) {
    let nutritionLanguage = NutritionLanguage(rawValue: language) ?? .es
    NutritionSDK.sharedInstance.setLanguage(nutritionLanguage)
  }
  
}
