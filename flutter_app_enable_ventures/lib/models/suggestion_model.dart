class SuggestionModel {
  String jobAdTile;
  String company;
  String date;
  int totalPositions;
  List<String> locations;
  Salary salary;

  SuggestionModel(
      {this.jobAdTile,
      this.company,
      this.date,
      this.totalPositions,
      this.locations,
      this.salary});

  SuggestionModel.fromJson(Map<String, dynamic> json) {
    jobAdTile = json['jobAdTile'];
    company = json['company'];
    date = json['date'];
    totalPositions = json['totalPositions'];
    locations = json['locations'].cast<String>();
    salary =
        json['salary'] != null ? new Salary.fromJson(json['salary']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jobAdTile'] = this.jobAdTile;
    data['company'] = this.company;
    data['date'] = this.date;
    data['totalPositions'] = this.totalPositions;
    data['locations'] = this.locations;
    if (this.salary != null) {
      data['salary'] = this.salary.toJson();
    }
    return data;
  }
}

class Salary {
  String real;
  String range;

  Salary({this.real, this.range});

  Salary.fromJson(Map<String, dynamic> json) {
    real = json['real'];
    range = json['range'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['real'] = this.real;
    data['range'] = this.range;
    return data;
  }
}