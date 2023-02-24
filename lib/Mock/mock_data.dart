class Products {
  String? id;
  String? title;
  String? img;
  var offPrice;
  var quantity;

  Products({this.id, this.title, this.img, this.offPrice, this.quantity});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    img = json['img'];
    offPrice = json['offPrice'];
    offPrice = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['img'] = this.img;
    data['offPrice'] = this.offPrice;
    data['quantity'] = this.quantity;
    return data;
  }
}

class MockData {
  List cat_data = [
    {'text': 'Fruits', "img": "images/f.png"},
    {'text': 'Vagitable', "img": "images/vag_vector.png"},
    {'text': 'Juice', "img": "images/juice.png"},
    {'text': 'Drinks', "img": "images/bag.png"},
    {'text': 'Apple', "img": "images/f.png"},
    {'text': 'Vagitable', "img": "images/cart.png"},
    {'text': 'Juice', "img": "images/cart.png"},
  ];
  List productData = [
    {
      "id": "501",
      "title": "Fruits",
      "price": "\$9.99",
      "offPrice": "6",
      "quantity": "1",
      "img": "images/tomato.png",
      "img1": "images/tomato1.jpeg",
      "img2": "images/tomato2.png",
      "img3": "images/bag.png"
    },
    {
      'id': "502",
      'title': 'Vagitable',
      'price': '\$9.99',
      "offPrice": "6",
      "quantity": "1",
      "img": "images/f.png",
      "img1": "images/tomato1.jpeg",
      "img2": "images/tomato2.png",
      "img3": "images/bag.png"
    },
    {
      'id': "503",
      'title': 'Juice',
      'price': '\$9.99',
      "offPrice": "6",
      "quantity": "1",
      "img": "images/bag.png",
      "img1": "images/tomato1.jpeg",
      "img2": "images/tomato2.png",
      "img3": "images/bag.png",
    },
    {
      'id': "504",
      'title': 'Drinks',
      'price': '\$9.99',
      "offPrice": "6",
      "quantity": "1",
      "img": "images/f.png",
      "img1": "images/tomato1.jpeg",
      "img2": "images/tomato2.png",
      "img3": "images/bag.png",
    },
    {
      'id': "505",
      'title': 'Fruits',
      'price': '9.99',
      "offPrice": "6",
      "quantity": "1",
      "img": "images/f.png",
      "img1": "images/tomato1.jpeg",
      "img2": "images/tomato2.png",
      "img3": "images/bag.png",
    },
  ];
  List sliderImg = [
    {
      'id': '1',
      'title': 'Fresh Grocery',
      'heading': 'Theres you can Buy \n your all of grocery \n products',
      "img_path": "images/f.png",
    },
    {
      'id': '2',
      'title': 'Fresh Fruits',
      'heading': 'Delivery at your door step',
      "img_path": "images/slider1.png",
    },
    {
      'id': '3',
      'title': 'Fresh Vagitable',
      'heading': 'Theres you can Buy \n your all of Vagitable \n products',
      "img_path": "images/bag.png",
    },
  ];
}

List pp = [
  {
    "id": "501",
    "title": "Fruits",
    "price": "\$9.99",
    "offPrice": "\$6.99",
    "img": "images/tomato.png",
    "img1": "images/tomato1.jpeg",
    "img2": "images/tomato2.png",
    "img3": "images/bag.png"
  },
  {
    'id': "502",
    'title': 'Vagitable',
    'price': '\$9.99',
    'offPrice': '\$6.99',
    "img": "images/f.png",
    "img1": "images/tomato1.jpeg",
    "img2": "images/tomato2.png",
    "img3": "images/bag.png"
  },
  {
    'id': "503",
    'title': 'Juice',
    'price': '\$9.99',
    'offPrice': '\$6.99',
    "img": "images/bag.png",
    "img1": "images/tomato1.jpeg",
    "img2": "images/tomato2.png",
    "img3": "images/bag.png",
  },
  {
    'id': "504",
    'title': 'Drinks',
    'price': '\$9.99',
    'offPrice': '\$6.99',
    "img": "images/f.png",
    "img1": "images/tomato1.jpeg",
    "img2": "images/tomato2.png",
    "img3": "images/bag.png",
  },
  {
    'id': "505",
    'title': 'Fruits',
    'price': '9.99',
    'offPrice': '6.99',
    "img": "images/f.png",
    "img1": "images/tomato1.jpeg",
    "img2": "images/tomato2.png",
    "img3": "images/bag.png",
  },
];
