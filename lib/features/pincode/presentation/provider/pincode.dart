import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/features/pincode/domain/usecases/pincode.dart';

class PincodeProvider extends ChangeNotifier {
  final GetPincodeDetailsUseCase pincodeUseCase;
  PincodeProvider(
    this.pincodeUseCase, {
    @Named('pincode') String? pincode,
    @Named('state') String? state,
    @Named('city') String? city,
  }) {
    pincodeController.text = pincode ?? '';
    stateController.text = state ?? '';
    cityController.text = city ?? '';
    notifyListeners();
  }

  String? _selectedState;
  String? _selectedCity;
  List<String>? _cities;
  String? _pincode;
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  String? get selectedState => _selectedState;
  String? get selectedCity => _selectedCity;
  List<String>? get cities => _cities;
  String? get pincode => _pincode;

  void updateState(String? selectedState, List<String>? cities) {
    _selectedState = selectedState;
    _cities = cities;
    _selectedCity = null;
    cityController.clear();
    notifyListeners();
  }

  void updateCity(String? selectedCity) {
    _selectedCity = selectedCity;
    cityController.text = selectedCity ?? '';
    notifyListeners();
  }

  Future<String?> updatePincode(String? pincode) async {
    _pincode = pincode;
    final result = await pincodeUseCase.execute(pincode ?? '');
    return result.fold((l) => l.toString(), (r) {
      _selectedState = r.firstOrNull?.state;
      _selectedCity = r.firstOrNull?.district;
      stateController.text = _selectedState ?? '';
      cityController.text = _selectedCity ?? '';
      notifyListeners();
      return null;
    });
  }

  void clearAll() {
    _selectedState = null;
    _selectedCity = null;
    _cities = null;
    _pincode = null;
    pincodeController.clear();
    stateController.clear();
    cityController.clear();
    notifyListeners();
  }
}
