
# react-native-connection-status

- React Native Bridge to check if device is able to access internet, since React Native NetInfo doesn't check if the user
can access the internet, it only checks if the device is connected to a network

## Getting started

`$ npm install react-native-connection-status --save`

### Mostly automatic installation

`$ react-native link react-native-connection-status`

### Manual installation

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNConnectionStatusPackage;` to the imports at the top of the file
  - Add `new RNConnectionStatusPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-connection-status'
  	project(':react-native-connection-status').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-connection-status/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-connection-status')
  	```

#### iOS

1. In XCode, right-click the Libraries folder under your project ➜ Add Files to <your project>

2. Go to node_modules ➜ react-native-connection-status ➜ ios and add the RNConnectionStatus.xcodeproj file

3. Go to your apps project settings ➜ "Build Phases" ➜ "Link Binary With Libraries" and add libRNConnectionStatus.a from the linked project

## Usage
```javascript
import { hasInternetConnection } from 'react-native-connection-status';

const myCallback = console.log;
hasInternetConnection(myCallback);
```
  
