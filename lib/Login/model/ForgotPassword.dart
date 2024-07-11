class Forgotpassword{
  final String responsedata;
  final String message;

  Forgotpassword({
    required this.responsedata,
    required this.message,
  });

  factory Forgotpassword.fromjson(Map<String,dynamic>json){
    return Forgotpassword(
      responsedata: json['response_data'],
      message: json['message']
    );
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['response_data']=responsedata;
    data['message']= message;
    return data;
  }

}