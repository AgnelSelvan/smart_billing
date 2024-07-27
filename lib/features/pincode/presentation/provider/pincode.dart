import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/features/pincode/domain/usecases/pincode.dart';

class PincodeProvider extends ChangeNotifier {
  final GetPincodeDetailsUseCase pincodeUseCase;
  final formKey = GlobalKey<FormBuilderState>();
  PincodeProvider(
    this.pincodeUseCase, {
    @Named('pincode') String? pincode,
    @Named('state') String? state,
    @Named('city') String? city,
  }) {
    notifyListeners();
  }

  String? _selectedState;
  String? _selectedCity;
  List<String>? _cities;
  String? _pincode;

  String? get selectedState => _selectedState;
  String? get selectedCity => _selectedCity;
  List<String>? get cities => _cities;
  String? get pincode => _pincode;

  void updateState(String? selectedState, List<String>? cities) {
    _selectedState = selectedState;
    _cities = cities;
    _selectedCity = null;
    formKey.currentState?.fields['city']?.setValue(null);
    notifyListeners();
  }

  void updateCity(String? selectedCity) {
    _selectedCity = selectedCity;
    formKey.currentState?.fields['city']?.setValue(selectedCity);
    notifyListeners();
  }

  Future<String?> updatePincode(String? pincode) async {
    _pincode = pincode;
    final result = await pincodeUseCase.execute(pincode ?? '');
    return result.fold((l) => l.toString(), (r) {
      _selectedState = r.firstOrNull?.state;
      _selectedCity = r.firstOrNull?.district;
      formKey.currentState?.patchValue({
        'state': _selectedState,
        'city': _selectedCity,
      });
      notifyListeners();
      return null;
    });
  }

  void clearAll() {
    _selectedState = null;
    _selectedCity = null;
    _cities = null;
    _pincode = null;
    formKey.currentState?.fields['state']?.setValue(null);
    formKey.currentState?.fields['city']?.setValue(null);
    formKey.currentState?.fields['pincode']?.setValue(null);
    notifyListeners();
  }
}
