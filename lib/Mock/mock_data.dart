class Products {
  String? id;
  String? title;
  String? price;
  var offPrice;
  String? unit;
  var quantity;
  String? img;
  String? img1;
  String? img2;
  String? img3;

  Products(
      {this.id,
      this.title,
      this.price,
      this.offPrice,
      this.unit,
      this.quantity,
      this.img,
      this.img1,
      this.img2,
      this.img3});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    offPrice = json['offPrice'];
    unit = json['unit'];
    quantity = json['quantity'];
    img = json['img'];
    img1 = json['img1'];
    img2 = json['img2'];
    img3 = json['img3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['offPrice'] = this.offPrice;
    data['unit'] = this.unit;
    data['quantity'] = this.quantity;
    data['img'] = this.img;
    data['img1'] = this.img1;
    data['img2'] = this.img2;
    data['img3'] = this.img3;
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

  List<Products> productData = [
    Products(
        id: "501",
        title: "Fruits",
        price: "\$9.99",
        offPrice: 10,
        quantity: 1,
        unit: "kg",
        img: "images/tomato.png",
        img1: "images/tomato1.jpeg",
        img2: "images/tomato2.png",
        img3: "images/bag.png"),
    Products(
        id: "502",
        title: 'Vagitable',
        price: '\$9.99',
        unit: "kg",
        offPrice: 9,
        quantity: 1,
        img: "images/tomato2.png",
        img1: "images/tomato1.jpeg",
        img2: "images/f.png",
        img3: "images/bag.png"),
    Products(
      id: "503",
      title: 'Juice',
      price: '\$9.99',
      offPrice: 9,
      unit: "box",
      quantity: 1,
      img: "images/bag.png",
      img1: "images/tomato1.jpeg",
      img2: "images/tomato2.png",
      img3: "images/bag.png",
    ),
    Products(
      id: "504",
      title: 'Drinks',
      price: '\$9.99',
      offPrice: 7,
      unit: "box",
      quantity: 1,
      img: "images/f.png",
      img1: "images/tomato1.jpeg",
      img2: "images/tomato2.png",
      img3: "images/bag.png",
    ),
    Products(
      id: "505",
      title: 'Fruits',
      price: '9.99',
      offPrice: 6,
      unit: "kg",
      quantity: 1,
      img: "images/f.png",
      img1: "images/tomato1.jpeg",
      img2: "images/tomato2.png",
      img3: "images/bag.png",
    )
  ];

  List sliderImg = [
    {
      'id': '1',
      'title': 'Fresh Grocery',
      'heading': 'Theres you can Buy \n your all of grocery \n products',
      "img_path": "images/tomato2.png",
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
    "img": "images/tomato2.png",
    "img1": "images/tomato1.jpeg",
    "img2": "images/f.png",
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
