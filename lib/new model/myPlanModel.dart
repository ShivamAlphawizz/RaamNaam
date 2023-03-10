/// response_code : "1"
/// msg : "Membership plans"
/// data : [{"id":"11","title":"demo","description":"dejo","price":120,"no_of_person":"10","type":"0","image":"https://developmentalphawizz.com/ramnaam/uploads/63ec691f57d52.jpg","created_at":"2023-02-15 05:09:51","updated_at":"2023-02-15 09:42:39","v_id":"1,2","plan_type":"","pooja_samagri":"1","fruit_flower":"1","time_text":" "},{"id":"13","title":"fdgfdg","description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius eros consequat auctor gravida. Fusce tristique lacus at urna sollicitudin pulvinar. Suspendisse hendrerit ultrices mauris.","price":2500,"no_of_person":"400","type":"0","image":"https://developmentalphawizz.com/ramnaam/uploads/63ecaec471e05.jpg","created_at":"2023-02-15 10:07:00","updated_at":"2023-02-15 10:20:22","v_id":"1,2","plan_type":"","pooja_samagri":"1","fruit_flower":"1","time_text":" "},{"id":"15","title":"demo","description":"demo","price":450,"no_of_person":"50","type":"0","image":"https://developmentalphawizz.com/ramnaam/uploads/63ef610ec94ec.jpg","created_at":"2023-02-17 11:12:14","updated_at":"2023-02-17 11:12:14","v_id":"1,2","plan_type":"","pooja_samagri":"0","fruit_flower":"0","time_text":" "},{"id":"20","title":"demoooo","description":"dfgdfgdfg","price":5000,"no_of_person":"5","type":"0","image":"https://developmentalphawizz.com/ramnaam/uploads/64058f0468abb.jpg","created_at":"2023-03-06 06:58:12","updated_at":"2023-03-06 06:58:12","v_id":"1","plan_type":"","pooja_samagri":"1","fruit_flower":"1","time_text":" "},{"id":"21","title":"demoooo","description":"dfgdfgdfg","price":5000,"no_of_person":"5","type":"0","image":"https://developmentalphawizz.com/ramnaam/uploads/6405942436099.png","created_at":"2023-03-06 07:20:04","updated_at":"2023-03-06 07:20:04","v_id":"1","plan_type":"","pooja_samagri":"1","fruit_flower":"1","time_text":" "}]

class MyPlanModel {
  MyPlanModel({
      String? responseCode, 
      String? msg, 
      List<Data>? data,}){
    _responseCode = responseCode;
    _msg = msg;
    _data = data;
}

  MyPlanModel.fromJson(dynamic json) {
    _responseCode = json['response_code'];
    _msg = json['msg'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  String? _responseCode;
  String? _msg;
  List<Data>? _data;
MyPlanModel copyWith({  String? responseCode,
  String? msg,
  List<Data>? data,
}) => MyPlanModel(  responseCode: responseCode ?? _responseCode,
  msg: msg ?? _msg,
  data: data ?? _data,
);
  String? get responseCode => _responseCode;
  String? get msg => _msg;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response_code'] = _responseCode;
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "11"
/// title : "demo"
/// description : "dejo"
/// price : 120
/// no_of_person : "10"
/// type : "0"
/// image : "https://developmentalphawizz.com/ramnaam/uploads/63ec691f57d52.jpg"
/// created_at : "2023-02-15 05:09:51"
/// updated_at : "2023-02-15 09:42:39"
/// v_id : "1,2"
/// plan_type : ""
/// pooja_samagri : "1"
/// fruit_flower : "1"
/// time_text : " "

class Data {
  Data({
      String? id, 
      String? title, 
      String? description, 
      num? price, 
      String? noOfPerson, 
      String? type, 
      String? image, 
      String? createdAt, 
      String? updatedAt, 
      String? vId, 
      String? planType, 
      String? poojaSamagri, 
      String? fruitFlower, 
      String? timeText,}){
    _id = id;
    _title = title;
    _description = description;
    _price = price;
    _noOfPerson = noOfPerson;
    _type = type;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _vId = vId;
    _planType = planType;
    _poojaSamagri = poojaSamagri;
    _fruitFlower = fruitFlower;
    _timeText = timeText;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _price = json['price'];
    _noOfPerson = json['no_of_person'];
    _type = json['type'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _vId = json['v_id'];
    _planType = json['plan_type'];
    _poojaSamagri = json['pooja_samagri'];
    _fruitFlower = json['fruit_flower'];
    _timeText = json['time_text'];
  }
  String? _id;
  String? _title;
  String? _description;
  num? _price;
  String? _noOfPerson;
  String? _type;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
  String? _vId;
  String? _planType;
  String? _poojaSamagri;
  String? _fruitFlower;
  String? _timeText;
Data copyWith({  String? id,
  String? title,
  String? description,
  num? price,
  String? noOfPerson,
  String? type,
  String? image,
  String? createdAt,
  String? updatedAt,
  String? vId,
  String? planType,
  String? poojaSamagri,
  String? fruitFlower,
  String? timeText,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  description: description ?? _description,
  price: price ?? _price,
  noOfPerson: noOfPerson ?? _noOfPerson,
  type: type ?? _type,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  vId: vId ?? _vId,
  planType: planType ?? _planType,
  poojaSamagri: poojaSamagri ?? _poojaSamagri,
  fruitFlower: fruitFlower ?? _fruitFlower,
  timeText: timeText ?? _timeText,
);
  String? get id => _id;
  String? get title => _title;
  String? get description => _description;
  num? get price => _price;
  String? get noOfPerson => _noOfPerson;
  String? get type => _type;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get vId => _vId;
  String? get planType => _planType;
  String? get poojaSamagri => _poojaSamagri;
  String? get fruitFlower => _fruitFlower;
  String? get timeText => _timeText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['price'] = _price;
    map['no_of_person'] = _noOfPerson;
    map['type'] = _type;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['v_id'] = _vId;
    map['plan_type'] = _planType;
    map['pooja_samagri'] = _poojaSamagri;
    map['fruit_flower'] = _fruitFlower;
    map['time_text'] = _timeText;
    return map;
  }

}