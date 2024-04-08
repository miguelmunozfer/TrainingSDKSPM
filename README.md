# NutritionSDK React Native Plugin Documentation

This documentation is intended to guide React Native developers through the process of integrating and utilizing the NutritionSDK in their projects. The NutritionSDK provides various methods to manage nutrition-related data and user preferences.

## Importing NutritionSDK with Swift Package Manager (SPM)

To integrate the NutritionSDK in your React Native project using Swift Package Manager, follow these steps:

1. **Open your project in Xcode**: First, ensure your React Native project is open in Xcode.

2. **Adding Swift Package**:
   - Go to `File` -> `Swift Packages` -> `Add Package Dependency`.
   - Enter the URL for the NutritionSDK: `https://github.com/miguelmunozfer/NutritionSDKPlugin`
   - Follow the prompts to choose the version and options for integrating the package into your project.

3. **Verifying Integration**:
   - Once added, ensure that the NutritionSDK package appears in the Swift Package Dependencies section of your project.
   - You can now use the SDK as per the documentation provided.

This process will integrate the NutritionSDK into your React Native project, allowing you to utilize its functionalities through Swift and bridging to React Native.


## Installation

Before starting, ensure that your React Native project is set up and ready to integrate native modules.

### Add Swift Files to Your Project:
- Place the `NutritionSDKBridge.swift` and `NutritionSDKBridge.m` along with any other required Swift files in your project's directory.

### Configure Objective-C Bridging Header:
- If you haven't already, create a bridging header to use Swift with Objective-C in your project. This is usually done automatically by Xcode when you add a new Swift file to an Objective-C project.
- Add `#import "React/RCTBridgeModule.h"` to the bridging header.

## Usage

After successfully integrating the SDK, you can use the provided methods in your React Native JavaScript code. Here’s a brief overview of the available methods:

### `start(user, appID, password)`
Starts the NutritionSDK session with the given user credentials.

#### Parameters:
- `user`: String - The user identifier.
- `appID`: String - The application ID.
- `password`: String - The password.

#### Example:
```javascript
import { NutritionSDKBridge } from 'NativeModules';

NutritionSDKBridge.start('username', 'appId', 'password');
```

### `updateProfile(sex, height, weight, birthDateString)`
Updates the user's profile with the provided details.

#### Parameters:
- `sex`: String (optional) - The user's gender. The possible options are:
  - `Male` for male
  - `Female` for female
- `height`: Number (optional) - The user's height in centimeters.
- `weight`: Number (optional) - The user's weight in kilograms.
- `birthDateString`: String (optional) - The user's birth date in 'yyyy-MM-dd' format.

#### Example:
```javascript
NutritionSDKBridge.updateProfile('Male', 180, 75, '1990-01-01');
```

### `showNutritionModule()`
Displays the nutrition module.

#### Example:
```javascript
NutritionSDKBridge.showNutritionModule();
```

### `isProfileFilled()`
Checks if the user's profile is completely filled.

#### Example:
```javascript
NutritionSDKBridge.isProfileFilled().then(isFilled => {
  console.log('Is profile filled:', isFilled);
});
```

### `setMemberId(memberId)`
Sets the member ID for the user.

#### Parameters:
- `memberId`: String - The member identifier.

#### Example:
```javascript
NutritionSDKBridge.setMemberId('memberId');
```

### `setCountry(country)`
Sets the user's country in the SDK.

#### Parameters:
- `country`: Int - The country identifier, based on NutritionUserCountry enum. The possible options are:
  - Spain = 1
  - Portugal = 2
  - Colombia = 3
  - UK = 4
  - USA = 9
  - Germany = 10
  - Italy = 11
  - Cataluña = 12

#### Example:
```javascript
NutritionSDKBridge.setCountry(1); // For Spain
```

### `startSession(appID, password)`
Starts a new session with the provided app ID and password.

#### Parameters:
- `appID`: String - The application ID.
- `password`: String - The password.

#### Example:
```javascript
NutritionSDKBridge.startSession('appID', 'password');
```

### `logout()`
Logs out the current user from the SDK.

#### Example:
```javascript
NutritionSDKBridge.logout();
```

### `setMainColor(color)`
Sets the main color theme for the SDK's UI elements.

#### Parameters:
- `color`: String - The color in a string format (e.g., hex code).

#### Example:
```javascript
NutritionSDKBridge.setMainColor('FF5733'); // Example with a hex color code
```

### `setNavigationBarColor(color)`
Sets the navigation bar color.

#### Parameters:
- `color`: String - The color in a string format.

#### Example:
```javascript
NutritionSDKBridge.setNavigationBarColor('007AFF');
```

### `setNavigationTintColor(color)`
Sets the navigation tint color, which is often used for button items in the navigation bar.

#### Parameters:
- `color`: String - The color in a string format.

#### Example:
```javascript
NutritionSDKBridge.setNavigationTintColor('FFFFFF');
```

### `setNavigationTitle(title)`
Sets the title for the navigation bar.

#### Parameters:
- `title`: String - The title text.

#### Example:
```javascript
NutritionSDKBridge.setNavigationTitle('My Nutrition App');
```

### `setLanguage(language)`
Sets the language for the SDK.

#### Parameters:
- `language`: String - The language identifier. The possible options are:
  - `es` for Spanish
  - `en` for English
  - `pt` for Portuguese
  - `de` for German
  - `ca` for Catalan
  - `it` for Italian

#### Example:
```javascript
NutritionSDKBridge.setLanguage('en'); // For English
```

## Note
- Ensure that the data types passed from JavaScript match the expected types in Swift.
- Some functions might require additional handling based on the NutritionIASDK's requirements and capabilities.

This documentation provides a basic outline for using the NutritionSDK in a React Native environment. Developers may need to adjust usage and implementation details based on their specific project needs and the SDK's capabilities.
