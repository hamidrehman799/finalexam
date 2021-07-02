class Student {
  final int id;
  final String name;
  final String email;
  final String address;
  final String phone;

  Student({this.id, this.name, this.email, this.phone, this.address});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
    'address': address,
  };
}
