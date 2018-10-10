
import { NativeModules } from 'react-native';

const { RNConnectionStatus } = NativeModules;
const hasInternetConnection = RNConnectionStatus.hasInternetConnection;

export default RNConnectionStatus;
export { hasInternetConnection };
