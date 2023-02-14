import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/imran_dashboard_view.dart';

class ImranDashboardController extends State<ImranDashboardView>
    implements MvcController {
  static late ImranDashboardController instance;
  late ImranDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  var scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedCategoryIndex = 0;
  updateIndex(int newIndex) {
    selectedCategoryIndex = newIndex;
    setState(() {});
  }

  List<Map<String, dynamic>> categories = [
    {
      'category_name': 'Sofa',
      'description':
          'A piece of furniture for seating two or more people in the form of a bench, typically with arm and a back.'
    },
    {
      'category_name': 'Chair',
      'description':
          'A separate seat for one person, typically with a back and four legs.'
    },
    {
      'category_name': 'Table',
      'description':
          'A piece of furniture with a flat top and one or more legs, providing a level surface on which objects may be placed.'
    },
    {
      'category_name': 'Cabinet',
      'description':
          'A piece of furniture with doors and shelves, used for storage.'
    },
    {
      'category_name': 'Bed',
      'description':
          'A piece of furniture for sleep or rest, typically a framework with a mattress and coverings.'
    },
    {
      'category_name': 'Wardrobe',
      'description':
          'A tall cupboard or closet, typically used for storing clothes.'
    },
    {
      'category_name': 'Bookshelf',
      'description':
          'A piece of furniture with horizontal shelves, used for storing books.'
    },
    {
      'category_name': 'Desk',
      'description':
          'A piece of furniture with a flat or sloping surface and typically with drawers, at which one can read, write, or do other work.'
    },
    {
      'category_name': 'Coffee Table',
      'description':
          'A low table, typically placed in front of a sofa, with a surface area for holding drinks, magazines, or other items.'
    },
    {
      'category_name': 'Dresser',
      'description':
          'A piece of furniture with drawers for keeping clothes, typically placed in a bedroom.'
    },
  ];

  List<Map> products = [
    {
      'id': 1,
      'product_name': 'Sofa',
      'photo':
          "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      'price': '20'
    },
    {
      'id': 2,
      'product_name': 'Kursi',
      'photo':
          'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
      'price': '30'
    },
    {
      'id': 3,
      'product_name': 'Meja',
      'photo':
          'https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      'price': '40'
    },
    {
      'id': 4,
      'product_name': 'Lemari',
      'photo':
          'https://images.unsplash.com/photo-1556020685-ae41abfc9365?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'price': '50'
    },
    {
      'id': 5,
      'product_name': 'Rak Buku',
      'photo': 'assets/rakbuku.jpg',
      'price': '24'
    },
    {
      'id': 6,
      'product_name': 'Kasur',
      'photo':
          'https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'price': '32'
    },
    {
      'id': 7,
      'product_name': 'Meja Rias',
      'photo':
          'https://images.unsplash.com/photo-1567016507665-356928ac6679?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
      'price': '31'
    },
    {
      'id': 8,
      'product_name': 'Meja Makan',
      'photo':
          'https://images.unsplash.com/photo-1501045661006-fcebe0257c3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'price': '26'
    },
    {
      'id': 9,
      'product_name': 'Kursi Tamu',
      'photo':
          'https://images.unsplash.com/photo-1523755231516-e43fd2e8dca5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
      'price': '39'
    },
    {
      'id': 10,
      'product_name': 'Lemari Pakaian',
      'photo':
          'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'price': '48'
    },
  ];
}
