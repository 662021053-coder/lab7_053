import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
   
  }
  
  //void increment () => state>=25?state=25:state++;
  //void decrement () => state<=0?state=0:state--;
  void increment () {
    if (state < 25) {
      state++;
    }
  }
  void decrement () {
    if (state > 0) {
      state--;
    }
  }
}

final counterProvider =
  NotifierProvider<CounterNotifier, int> (CounterNotifier.new);