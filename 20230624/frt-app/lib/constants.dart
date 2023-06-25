import 'package:flutter_flavor/flutter_flavor.dart';

const viewCount = 30;
const loginTokenName = 'x-iyns-login-token';
const firstUseTokenName = 'x-iyns-7id-first-use-token';
const ssoStateTokenName = 'x-iyns-sso-state-token';
const ssoStateName = 'state';
const appIdName = 'appid';
const userHashName = 'userhash';
const ssoStartTimeName = 'ts';
const oneTimeTokenName = 'tn';
const signatureName = 'sig';
const iyVisitIdName = 'iy_visit_id';
const trackIdName = 'nds-trackid';
const trackUuidName = 'x-iyns-fcid';

const akachanhonpoChangeTargetShopCode = '00115';
const akachanhonpoChangeShopName = 'グランツリー武蔵小杉店';

const iyBaseUrl = 'https://www.itoyokado.co.jp';
final iynsAwsS3 = FlavorConfig.instance.variables['iynsAwsS3'] as String;

const dartEnvironmentNameAndroidGoogleMapApiKey = 'ANDROID_GOOGLE_MAP_API_KEY';
const dartEnvironmentNameIosGoogleMapApiKey = 'IOS_GOOGLE_MAP_API_KEY';
const dartEnvironmentNameAdjustAppToken = 'ADJUST_APP_TOKEN';

const dartEnvironmentValueAndroidGoogleMapApiKey = String.fromEnvironment(dartEnvironmentNameAndroidGoogleMapApiKey);
const dartEnvironmentValueIosGoogleMapApiKey = String.fromEnvironment(dartEnvironmentNameIosGoogleMapApiKey);
const dartEnvironmentValueAdjustAppToken = String.fromEnvironment(dartEnvironmentNameAdjustAppToken);
