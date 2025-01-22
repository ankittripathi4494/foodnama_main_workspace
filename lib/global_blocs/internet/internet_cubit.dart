import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodnamamain/global_blocs/internet/internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  Connectivity connectivity = Connectivity();
  InternetCubit() : super(InternetState.initial) {
    // Step 1 :- on app lauch device is connected with internet or not
    _checkNetworkConnection();
    // Step 2:=  to check network switch in internet connection
    connectivity.onConnectivityChanged.listen((result) {
      if (result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi) ||
          result.contains(ConnectivityResult.vpn) ||
          result.contains(ConnectivityResult.ethernet)) {
        emit(InternetState.connected);
      } else {
        emit(InternetState.disconnected);
      }
    });
  }

  _checkNetworkConnection() async {
    List<ConnectivityResult> result = (await connectivity.checkConnectivity());

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi) ||
        result.contains(ConnectivityResult.vpn) ||
        result.contains(ConnectivityResult.ethernet)) {
      emit(InternetState.connected);
    } else {
      emit(InternetState.disconnected);
    }
  }
}
