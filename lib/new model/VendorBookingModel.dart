/// response_code : "1"
/// msg : "My Bookings"
/// data : [{"booking_id":"30","subtotal":"24500.00","date":"2023-03-07","vendor_payemnt_amount":"24500","gst_charge":"0","vendor_Gst":"540","admin_commsion":"","platform_charge":"","delivery_charge":"","payment_mode":"COD","address":"Indore, Madhya Pradesh, India","txn_id":"","status":"0","username":"devesh parihar","mobile":"9876543210","vendor_name":"Shivam cater ","vendor_mobile":"8528528528","vendor_address":"150, Ward 35, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India","services":[{"service_id":"37","hours":null,"subtotal":"4500","no_of_person":"5","plan_id":null,"no_of_helper":"10","no_of_days":null}],"products":[{"id":"37","artist_name":"dummy cater","category_id":"22","sub_id":"0","services_image":"https://developmentalphawizz.com/ramnaam/uploads/1678181584Screenshot_2023-01-31-17-51-13-062_com_heddri_user.jpg,1678181584Screenshot_2023-01-31-17-51-29-655_com_heddri_user.jpg","profile_image":"640704d073d5d.jpg","mrp_price":"5000","special_price":"4500","v_id":"26","roll":"5","ser_desc":"dummy description ","service_status":"0","helper_price":"200","chefs_price":null,"per_d_charge":null,"tax_status":"0","gst_amount":"0","charge_type":""}]},{"booking_id":"27","subtotal":"3847500.00","date":"2023-03-07","vendor_payemnt_amount":"3847500","gst_charge":"0","vendor_Gst":"540","admin_commsion":"","platform_charge":"","delivery_charge":"","payment_mode":"COD","address":"Indore, Madhya Pradesh, India","txn_id":"","status":"3","username":"devesh parihar","mobile":"9876543210","vendor_name":"Shivam cater ","vendor_mobile":"8528528528","vendor_address":"150, Ward 35, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India","services":[{"service_id":"29","hours":null,"subtotal":"4500","no_of_person":"855","plan_id":null,"no_of_helper":"10","no_of_days":null}],"products":[null]}]

class VendorBookingModel {
  VendorBookingModel({
      String? responseCode, 
      String? msg, 
      List<Data>? data,}){
    _responseCode = responseCode;
    _msg = msg;
    _data = data;
}

  VendorBookingModel.fromJson(dynamic json) {
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
VendorBookingModel copyWith({  String? responseCode,
  String? msg,
  List<Data>? data,
}) => VendorBookingModel(  responseCode: responseCode ?? _responseCode,
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

/// booking_id : "30"
/// subtotal : "24500.00"
/// date : "2023-03-07"
/// vendor_payemnt_amount : "24500"
/// gst_charge : "0"
/// vendor_Gst : "540"
/// admin_commsion : ""
/// platform_charge : ""
/// delivery_charge : ""
/// payment_mode : "COD"
/// address : "Indore, Madhya Pradesh, India"
/// txn_id : ""
/// status : "0"
/// username : "devesh parihar"
/// mobile : "9876543210"
/// vendor_name : "Shivam cater "
/// vendor_mobile : "8528528528"
/// vendor_address : "150, Ward 35, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India"
/// services : [{"service_id":"37","hours":null,"subtotal":"4500","no_of_person":"5","plan_id":null,"no_of_helper":"10","no_of_days":null}]
/// products : [{"id":"37","artist_name":"dummy cater","category_id":"22","sub_id":"0","services_image":"https://developmentalphawizz.com/ramnaam/uploads/1678181584Screenshot_2023-01-31-17-51-13-062_com_heddri_user.jpg,1678181584Screenshot_2023-01-31-17-51-29-655_com_heddri_user.jpg","profile_image":"640704d073d5d.jpg","mrp_price":"5000","special_price":"4500","v_id":"26","roll":"5","ser_desc":"dummy description ","service_status":"0","helper_price":"200","chefs_price":null,"per_d_charge":null,"tax_status":"0","gst_amount":"0","charge_type":""}]

class Data {
  Data({
      String? bookingId, 
      String? subtotal, 
      String? date, 
      String? vendorPayemntAmount, 
      String? gstCharge, 
      String? vendorGst, 
      String? adminCommsion, 
      String? platformCharge, 
      String? deliveryCharge, 
      String? paymentMode, 
      String? address, 
      String? txnId, 
      String? status, 
      String? username, 
      String? mobile, 
      String? vendorName, 
      String? vendorMobile, 
      String? vendorAddress, 
      List<Services>? services, 
      List<Products>? products,}){
    _bookingId = bookingId;
    _subtotal = subtotal;
    _date = date;
    _vendorPayemntAmount = vendorPayemntAmount;
    _gstCharge = gstCharge;
    _vendorGst = vendorGst;
    _adminCommsion = adminCommsion;
    _platformCharge = platformCharge;
    _deliveryCharge = deliveryCharge;
    _paymentMode = paymentMode;
    _address = address;
    _txnId = txnId;
    _status = status;
    _username = username;
    _mobile = mobile;
    _vendorName = vendorName;
    _vendorMobile = vendorMobile;
    _vendorAddress = vendorAddress;
    _services = services;
    _products = products;
}

  Data.fromJson(dynamic json) {
    _bookingId = json['booking_id'];
    _subtotal = json['subtotal'];
    _date = json['date'];
    _vendorPayemntAmount = json['vendor_payemnt_amount'];
    _gstCharge = json['gst_charge'];
    _vendorGst = json['vendor_Gst'];
    _adminCommsion = json['admin_commsion'];
    _platformCharge = json['platform_charge'];
    _deliveryCharge = json['delivery_charge'];
    _paymentMode = json['payment_mode'];
    _address = json['address'];
    _txnId = json['txn_id'];
    _status = json['status'];
    _username = json['username'];
    _mobile = json['mobile'];
    _vendorName = json['vendor_name'];
    _vendorMobile = json['vendor_mobile'];
    _vendorAddress = json['vendor_address'];
    if (json['services'] != null) {
      _services = [];
      json['services'].forEach((v) {
        _services?.add(Services.fromJson(v));
      });
    }
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
  }
  String? _bookingId;
  String? _subtotal;
  String? _date;
  String? _vendorPayemntAmount;
  String? _gstCharge;
  String? _vendorGst;
  String? _adminCommsion;
  String? _platformCharge;
  String? _deliveryCharge;
  String? _paymentMode;
  String? _address;
  String? _txnId;
  String? _status;
  String? _username;
  String? _mobile;
  String? _vendorName;
  String? _vendorMobile;
  String? _vendorAddress;
  List<Services>? _services;
  List<Products>? _products;
Data copyWith({  String? bookingId,
  String? subtotal,
  String? date,
  String? vendorPayemntAmount,
  String? gstCharge,
  String? vendorGst,
  String? adminCommsion,
  String? platformCharge,
  String? deliveryCharge,
  String? paymentMode,
  String? address,
  String? txnId,
  String? status,
  String? username,
  String? mobile,
  String? vendorName,
  String? vendorMobile,
  String? vendorAddress,
  List<Services>? services,
  List<Products>? products,
}) => Data(  bookingId: bookingId ?? _bookingId,
  subtotal: subtotal ?? _subtotal,
  date: date ?? _date,
  vendorPayemntAmount: vendorPayemntAmount ?? _vendorPayemntAmount,
  gstCharge: gstCharge ?? _gstCharge,
  vendorGst: vendorGst ?? _vendorGst,
  adminCommsion: adminCommsion ?? _adminCommsion,
  platformCharge: platformCharge ?? _platformCharge,
  deliveryCharge: deliveryCharge ?? _deliveryCharge,
  paymentMode: paymentMode ?? _paymentMode,
  address: address ?? _address,
  txnId: txnId ?? _txnId,
  status: status ?? _status,
  username: username ?? _username,
  mobile: mobile ?? _mobile,
  vendorName: vendorName ?? _vendorName,
  vendorMobile: vendorMobile ?? _vendorMobile,
  vendorAddress: vendorAddress ?? _vendorAddress,
  services: services ?? _services,
  products: products ?? _products,
);
  String? get bookingId => _bookingId;
  String? get subtotal => _subtotal;
  String? get date => _date;
  String? get vendorPayemntAmount => _vendorPayemntAmount;
  String? get gstCharge => _gstCharge;
  String? get vendorGst => _vendorGst;
  String? get adminCommsion => _adminCommsion;
  String? get platformCharge => _platformCharge;
  String? get deliveryCharge => _deliveryCharge;
  String? get paymentMode => _paymentMode;
  String? get address => _address;
  String? get txnId => _txnId;
  String? get status => _status;
  String? get username => _username;
  String? get mobile => _mobile;
  String? get vendorName => _vendorName;
  String? get vendorMobile => _vendorMobile;
  String? get vendorAddress => _vendorAddress;
  List<Services>? get services => _services;
  List<Products>? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['booking_id'] = _bookingId;
    map['subtotal'] = _subtotal;
    map['date'] = _date;
    map['vendor_payemnt_amount'] = _vendorPayemntAmount;
    map['gst_charge'] = _gstCharge;
    map['vendor_Gst'] = _vendorGst;
    map['admin_commsion'] = _adminCommsion;
    map['platform_charge'] = _platformCharge;
    map['delivery_charge'] = _deliveryCharge;
    map['payment_mode'] = _paymentMode;
    map['address'] = _address;
    map['txn_id'] = _txnId;
    map['status'] = _status;
    map['username'] = _username;
    map['mobile'] = _mobile;
    map['vendor_name'] = _vendorName;
    map['vendor_mobile'] = _vendorMobile;
    map['vendor_address'] = _vendorAddress;
    if (_services != null) {
      map['services'] = _services?.map((v) => v.toJson()).toList();
    }
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "37"
/// artist_name : "dummy cater"
/// category_id : "22"
/// sub_id : "0"
/// services_image : "https://developmentalphawizz.com/ramnaam/uploads/1678181584Screenshot_2023-01-31-17-51-13-062_com_heddri_user.jpg,1678181584Screenshot_2023-01-31-17-51-29-655_com_heddri_user.jpg"
/// profile_image : "640704d073d5d.jpg"
/// mrp_price : "5000"
/// special_price : "4500"
/// v_id : "26"
/// roll : "5"
/// ser_desc : "dummy description "
/// service_status : "0"
/// helper_price : "200"
/// chefs_price : null
/// per_d_charge : null
/// tax_status : "0"
/// gst_amount : "0"
/// charge_type : ""

class Products {
  Products({
      String? id, 
      String? artistName, 
      String? categoryId, 
      String? subId, 
      String? servicesImage, 
      String? profileImage, 
      String? mrpPrice, 
      String? specialPrice, 
      String? vId, 
      String? roll, 
      String? serDesc, 
      String? serviceStatus, 
      String? helperPrice, 
      dynamic chefsPrice, 
      dynamic perDCharge, 
      String? taxStatus, 
      String? gstAmount, 
      String? chargeType,}){
    _id = id;
    _artistName = artistName;
    _categoryId = categoryId;
    _subId = subId;
    _servicesImage = servicesImage;
    _profileImage = profileImage;
    _mrpPrice = mrpPrice;
    _specialPrice = specialPrice;
    _vId = vId;
    _roll = roll;
    _serDesc = serDesc;
    _serviceStatus = serviceStatus;
    _helperPrice = helperPrice;
    _chefsPrice = chefsPrice;
    _perDCharge = perDCharge;
    _taxStatus = taxStatus;
    _gstAmount = gstAmount;
    _chargeType = chargeType;
}

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _artistName = json['artist_name'];
    _categoryId = json['category_id'];
    _subId = json['sub_id'];
    _servicesImage = json['services_image'];
    _profileImage = json['profile_image'];
    _mrpPrice = json['mrp_price'];
    _specialPrice = json['special_price'];
    _vId = json['v_id'];
    _roll = json['roll'];
    _serDesc = json['ser_desc'];
    _serviceStatus = json['service_status'];
    _helperPrice = json['helper_price'];
    _chefsPrice = json['chefs_price'];
    _perDCharge = json['per_d_charge'];
    _taxStatus = json['tax_status'];
    _gstAmount = json['gst_amount'];
    _chargeType = json['charge_type'];
  }
  String? _id;
  String? _artistName;
  String? _categoryId;
  String? _subId;
  String? _servicesImage;
  String? _profileImage;
  String? _mrpPrice;
  String? _specialPrice;
  String? _vId;
  String? _roll;
  String? _serDesc;
  String? _serviceStatus;
  String? _helperPrice;
  dynamic _chefsPrice;
  dynamic _perDCharge;
  String? _taxStatus;
  String? _gstAmount;
  String? _chargeType;
Products copyWith({  String? id,
  String? artistName,
  String? categoryId,
  String? subId,
  String? servicesImage,
  String? profileImage,
  String? mrpPrice,
  String? specialPrice,
  String? vId,
  String? roll,
  String? serDesc,
  String? serviceStatus,
  String? helperPrice,
  dynamic chefsPrice,
  dynamic perDCharge,
  String? taxStatus,
  String? gstAmount,
  String? chargeType,
}) => Products(  id: id ?? _id,
  artistName: artistName ?? _artistName,
  categoryId: categoryId ?? _categoryId,
  subId: subId ?? _subId,
  servicesImage: servicesImage ?? _servicesImage,
  profileImage: profileImage ?? _profileImage,
  mrpPrice: mrpPrice ?? _mrpPrice,
  specialPrice: specialPrice ?? _specialPrice,
  vId: vId ?? _vId,
  roll: roll ?? _roll,
  serDesc: serDesc ?? _serDesc,
  serviceStatus: serviceStatus ?? _serviceStatus,
  helperPrice: helperPrice ?? _helperPrice,
  chefsPrice: chefsPrice ?? _chefsPrice,
  perDCharge: perDCharge ?? _perDCharge,
  taxStatus: taxStatus ?? _taxStatus,
  gstAmount: gstAmount ?? _gstAmount,
  chargeType: chargeType ?? _chargeType,
);
  String? get id => _id;
  String? get artistName => _artistName;
  String? get categoryId => _categoryId;
  String? get subId => _subId;
  String? get servicesImage => _servicesImage;
  String? get profileImage => _profileImage;
  String? get mrpPrice => _mrpPrice;
  String? get specialPrice => _specialPrice;
  String? get vId => _vId;
  String? get roll => _roll;
  String? get serDesc => _serDesc;
  String? get serviceStatus => _serviceStatus;
  String? get helperPrice => _helperPrice;
  dynamic get chefsPrice => _chefsPrice;
  dynamic get perDCharge => _perDCharge;
  String? get taxStatus => _taxStatus;
  String? get gstAmount => _gstAmount;
  String? get chargeType => _chargeType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['artist_name'] = _artistName;
    map['category_id'] = _categoryId;
    map['sub_id'] = _subId;
    map['services_image'] = _servicesImage;
    map['profile_image'] = _profileImage;
    map['mrp_price'] = _mrpPrice;
    map['special_price'] = _specialPrice;
    map['v_id'] = _vId;
    map['roll'] = _roll;
    map['ser_desc'] = _serDesc;
    map['service_status'] = _serviceStatus;
    map['helper_price'] = _helperPrice;
    map['chefs_price'] = _chefsPrice;
    map['per_d_charge'] = _perDCharge;
    map['tax_status'] = _taxStatus;
    map['gst_amount'] = _gstAmount;
    map['charge_type'] = _chargeType;
    return map;
  }

}

/// service_id : "37"
/// hours : null
/// subtotal : "4500"
/// no_of_person : "5"
/// plan_id : null
/// no_of_helper : "10"
/// no_of_days : null

class Services {
  Services({
      String? serviceId, 
      dynamic hours, 
      String? subtotal, 
      String? noOfPerson, 
      dynamic planId, 
      String? noOfHelper, 
      dynamic noOfDays,}){
    _serviceId = serviceId;
    _hours = hours;
    _subtotal = subtotal;
    _noOfPerson = noOfPerson;
    _planId = planId;
    _noOfHelper = noOfHelper;
    _noOfDays = noOfDays;
}

  Services.fromJson(dynamic json) {
    _serviceId = json['service_id'];
    _hours = json['hours'];
    _subtotal = json['subtotal'];
    _noOfPerson = json['no_of_person'];
    _planId = json['plan_id'];
    _noOfHelper = json['no_of_helper'];
    _noOfDays = json['no_of_days'];
  }
  String? _serviceId;
  dynamic _hours;
  String? _subtotal;
  String? _noOfPerson;
  dynamic _planId;
  String? _noOfHelper;
  dynamic _noOfDays;
Services copyWith({  String? serviceId,
  dynamic hours,
  String? subtotal,
  String? noOfPerson,
  dynamic planId,
  String? noOfHelper,
  dynamic noOfDays,
}) => Services(  serviceId: serviceId ?? _serviceId,
  hours: hours ?? _hours,
  subtotal: subtotal ?? _subtotal,
  noOfPerson: noOfPerson ?? _noOfPerson,
  planId: planId ?? _planId,
  noOfHelper: noOfHelper ?? _noOfHelper,
  noOfDays: noOfDays ?? _noOfDays,
);
  String? get serviceId => _serviceId;
  dynamic get hours => _hours;
  String? get subtotal => _subtotal;
  String? get noOfPerson => _noOfPerson;
  dynamic get planId => _planId;
  String? get noOfHelper => _noOfHelper;
  dynamic get noOfDays => _noOfDays;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_id'] = _serviceId;
    map['hours'] = _hours;
    map['subtotal'] = _subtotal;
    map['no_of_person'] = _noOfPerson;
    map['plan_id'] = _planId;
    map['no_of_helper'] = _noOfHelper;
    map['no_of_days'] = _noOfDays;
    return map;
  }

}