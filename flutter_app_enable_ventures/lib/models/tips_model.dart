class TipsModel {
  String id;
  String description;
  Button button;

  TipsModel({this.id, this.description, this.button});

  TipsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    button =
        json['button'] != null ? new Button.fromJson(json['button']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    if (this.button != null) {
      data['button'] = this.button.toJson();
    }
    return data;
  }
}

class Button {
  bool show;
  String label;
  String url;

  Button({this.show, this.label, this.url});

  Button.fromJson(Map<String, dynamic> json) {
    show = json['show'];
    label = json['label'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['show'] = this.show;
    data['label'] = this.label;
    data['url'] = this.url;
    return data;
  }
}