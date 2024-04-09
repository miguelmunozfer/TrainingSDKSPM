# TrainingSDK React Native Plugin Documentation

This documentation is intended to guide React Native developers through the process of integrating and utilizing the TrainingSDK in their projects.

## Importing TrainingSDK with Swift Package Manager (SPM)

To integrate the TrainingSDK in your React Native project using Swift Package Manager, follow these steps:

1. **Open your project in Xcode**: First, ensure your React Native project is open in Xcode.

2. **Adding Swift Package**:
   - Go to `File` -> `Swift Packages` -> `Add Package Dependency`.
   - Enter the URL for the TrainingSDK: `https://github.com/miguelmunozfer/TrainingSDKSPM`
   - Follow the prompts to choose the version and options for integrating the package into your project.

3. **Verifying Integration**:
   - Once added, ensure that the TrainingSDK package appears in the Swift Package Dependencies section of your project.
   - You can now use the SDK as per the documentation provided.

This process will integrate the TrainingSDK into your React Native project, allowing you to utilize its functionalities through Swift and bridging to React Native.


## Installation

Before starting, ensure that your React Native project is set up and ready to integrate native modules.

### Add Swift Files to Your Project:
- Place the `TrainingSDKBridge.swift` and `TrainingSDKBridge.m` along with any other required Swift files in your project's directory.

### Configure Objective-C Bridging Header:
- If you haven't already, create a bridging header to use Swift with Objective-C in your project. This is usually done automatically by Xcode when you add a new Swift file to an Objective-C project.
- Add `#import "React/RCTBridgeModule.h"` to the bridging header.

## Usage

After successfully integrating the SDK, you can use the provided methods in your React Native JavaScript code. Here’s a brief overview of the available methods:

### `start(user, appID, password)`
Starts the TrainingSDK session with the given user credentials.

#### Parameters:
- `user`: String - The user identifier.
- `appID`: String - The application ID.
- `password`: String - The password.

#### Example:
```javascript
import { TrainingSDKBridge } from 'NativeModules';

TrainingSDKBridge.start('username', 'appId', 'password');
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
TrainingSDKBridge.updateProfile('Male', 180, 75, '1990-01-01');
```

### `showTrainingModule()`
Displays the nutrition module.

#### Example:
```javascript
TrainingSDKBridge.showTrainingModule();
```

### `logout()`
Logs out the current user from the SDK.

#### Example:
```javascript
TrainingSDKBridge.logout();
```

### `setMainColor(color)`
Sets the main color theme for the SDK's UI elements.

#### Parameters:
- `color`: String - The color in a string format (e.g., hex code).

#### Example:
```javascript
TrainingSDKBridge.setMainColor('FF5733'); // Example with a hex color code
```

### `setNavigationBarColor(color)`
Sets the navigation bar color.

#### Parameters:
- `color`: String - The color in a string format.

#### Example:
```javascript
TrainingSDKBridge.setNavigationBarColor('007AFF');
```

### `setNavigationTintColor(color)`
Sets the navigation tint color, which is often used for button items in the navigation bar.

#### Parameters:
- `color`: String - The color in a string format.

#### Example:
```javascript
TrainingSDKBridge.setNavigationTintColor('FFFFFF');
```

### `setNavigationTitle(title)`
Sets the title for the navigation bar.

#### Parameters:
- `title`: String - The title text.


## Note
- Ensure that the data types passed from JavaScript match the expected types in Swift.
- Some functions might require additional handling based on the NutritionIASDK's requirements and capabilities.

This documentation provides a basic outline for using the TrainingSDK in a React Native environment. Developers may need to adjust usage and implementation details based on their specific project needs and the SDK's capabilities.
