class Person {
  String id;
  String name;
  String area;
  String mainCircle;
  String startedAt;
  String picture;
  List<String> characteristicsAtWork;
  List<String> funFacts;

  Person(
      {this.id,
      this.name,
      this.area,
      this.mainCircle,
      this.startedAt,
      this.picture,
      this.characteristicsAtWork,
      this.funFacts});

  Person.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    area = json['area'];
    startedAt = json['startedAt'];
    mainCircle = json['mainCircle'];

    characteristicsAtWork = json['characteristicsAtWork'] != null
        ? json['characteristicsAtWork'].cast<String>()
        : null;

    funFacts =
        json['funFacts'] != null ? json['funFacts'].cast<String>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['area'] = this.area;
    data['startedAt'] = this.startedAt;
    data['mainCircle'] = this.mainCircle;
    data['characteristicsAtWork'] = this.characteristicsAtWork;
    data['funFacts'] = this.funFacts;
    return data;
  }
}
