import 'package:fast_app_base/common/data/preference/item/rx_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';
import 'item/nullable_preference_item.dart';
import 'item/rxn_preference_item.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOnRx = RxPreferenceItem<bool,RxBool>('isPushOn', false);
  static final sliderPosition = RxPreferenceItem<double,RxDouble>('sliderPosition', 0.0);
  static final birthday = RxnPreferenceItem<DateTime,Rxn<DateTime>>('birthday',null);
  static final numBer = RxPreferenceItem<int,RxInt>('number',0);
}
