class CountryCityModel {
  List<CountryDataModel>? data;

  CountryCityModel({this.data});

  CountryCityModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(CountryDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CountryDataModel {
  String? country;
  List<String>? cities;

  CountryDataModel({this.country, this.cities});

  CountryDataModel.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    cities = json['cities'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = country;
    data['cities'] = cities;
    return data;
  }
}
