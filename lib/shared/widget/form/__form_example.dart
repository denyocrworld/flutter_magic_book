import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class FormExampleView extends StatefulWidget {
  const FormExampleView({Key? key}) : super(key: key);

  @override
  State<FormExampleView> createState() => FormExampleViewState();
}

class FormExampleViewState extends State<FormExampleView> {
  static late FormExampleViewState instance;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool lightMode = false;

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      primaryColor: Colors.blueGrey,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueGrey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey[900],
        ),
      ),
      hintColor: Colors.orange,
    );
  }

  ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange[900],
        ),
      ),
      hintColor: Colors.blue,
    );
  }

  String? email = "";
  String? password = "";
  String? age = "";
  String? address = "";
  DateTime? birthDate;
  TimeOfDay? workingHour;
  dynamic gender;
  dynamic footballClub;
  dynamic membership;
  dynamic role;
  dynamic favoriteEmployee;
  dynamic staff;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: lightMode ? lightTheme : darkTheme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Form Test"),
          actions: [
            IconButton(
              onPressed: () {
                lightMode = !lightMode;
                setState(() {});
              },
              icon: const Icon(
                Icons.light_mode,
                size: 24.0,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormDetailExampleView(),
                  ),
                );
              },
              icon: const Icon(
                Icons.check,
                size: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  bool isValid = formKey.currentState!.validate();
                  if (!isValid) return;
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Basic Form",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  QImagePicker(
                    label: "Photo",
                    hint: "Your photo",
                    validator: Validator.required,
                    value:
                        "https://i.ibb.co/SnzPNqd/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                    onChanged: (value) {
                      print("photo: $value");
                    },
                  ),
                  QImagePicker(
                    label: "Your alternative photo",
                    hint: "Alternative photo",
                    validator: Validator.required,
                    value: null,
                    onChanged: (value) {
                      print("photo: $value");
                    },
                  ),
                  QTextField(
                    label: "Email",
                    hint: "Your email",
                    validator: Validator.required,
                    value: "demo@gmail.com",
                    onChanged: (value) {
                      email = value;
                      print("email: $value");
                    },
                  ),
                  QTextField(
                    label: "Password",
                    hint: "Your password",
                    obscure: true,
                    validator: Validator.required,
                    value: "123456",
                    onChanged: (value) {
                      password = value;
                      print("password: $value");
                    },
                  ),
                  QNumberField(
                    label: "Age",
                    hint: "Your age's",
                    validator: Validator.required,
                    value: "24",
                    onChanged: (value) {
                      age = value;
                      print("age: $value");
                    },
                  ),
                  QMemoField(
                    label: "Address",
                    hint: "Your addresses",
                    validator: Validator.required,
                    value: "Kamboja street 16, Bogor, West Java, Indonesia",
                    onChanged: (value) {
                      address = value;
                      print("address: $value");
                    },
                  ),
                  QDatePicker(
                    label: "Birth date",
                    hint: "Your birth date",
                    validator: Validator.required,
                    onChanged: (value) {
                      birthDate = value;
                      print("value: $value");
                    },
                  ),
                  QTimePicker(
                    label: "Working hour",
                    hint: "Your working hour",
                    validator: Validator.required,
                    onChanged: (value) {
                      workingHour = value;
                      print("value: $value");
                    },
                  ),
                  QRadioField(
                    label: "Gender",
                    hint: "Gender",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Female",
                        "value": 1,
                      },
                      {
                        "label": "Male",
                        "value": 2,
                      }
                    ],
                    onChanged: (value, label) {
                      gender = value;
                      print("gender: value > $value");
                      print("gender: label > $label");
                    },
                  ),
                  QCheckField(
                    label: "Club",
                    hint: "Your favorite football club",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Persib",
                        "value": 101,
                        "checked": false,
                      },
                      {
                        "label": "Persikabo",
                        "value": 102,
                        "checked": true,
                      }
                    ],
                    onChanged: (values, ids) {
                      footballClub = values.toString();
                      print("footballClub: values > $values");
                      print("footballClub: ids > $ids");
                    },
                  ),
                  QSwitch(
                    label: "Member",
                    hint: "Your membership",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Private",
                        "value": 1,
                      },
                      {
                        "label": "Premium",
                        "value": 2,
                      }
                    ],
                    onChanged: (values, ids) {
                      membership = values.toString();
                      print("membership: values > $values");
                      print("membership: ids > $ids");
                    },
                  ),
                  QDropdownField(
                    label: "Roles",
                    hint: "Your roles",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Admin",
                        "value": 1,
                      },
                      {
                        "label": "Staff",
                        "value": 2,
                      }
                    ],
                    onChanged: (value, label) {
                      role = value;
                      print("membership: values > $value");
                      print("membership: label > $label");
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Advanced Form",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  QAutoComplete(
                    label: "Favorite employee",
                    hint: "Your favorite Employee",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Jackie Roo",
                        "value": "101",
                        "info": "Hacker",
                      },
                      {
                        "label": "Dan Milton",
                        "value": "102",
                        "info": "UI/UX Designer",
                      },
                      {
                        "label": "Ryper Roo",
                        "value": "103",
                        "info": "Android Developer",
                      }
                    ],
                    onChanged: (value, label) {
                      favoriteEmployee = value;
                      print("favoriteEmployee: values > $value");
                      print("favoriteEmployee: label > $label");
                    },
                  ),
                  QAutoComplete(
                    label: "Staff",
                    hint: "Your staff",
                    validator: Validator.required,
                    items: const [
                      {
                        "photo":
                            "https://i.ibb.co/MSM9Pmm/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        "label": "Jessica Rin",
                        "value": 1,
                        "info": "Hacker",
                      },
                      {
                        "photo":
                            "https://i.ibb.co/VM8w6SY/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        "label": "Jessica Dolf",
                        "value": 2,
                        "info": "UI/UX Designer",
                      },
                      {
                        "photo":
                            "https://i.ibb.co/ckMm0Lq/photo-1576568699715-bae7154950c7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        "label": "Melisa Roo",
                        "value": 3,
                        "info": "Android Developer",
                      }
                    ],
                    onChanged: (value, label) {
                      staff = value;
                      print("staff: values > $value");
                      print("staff: label > $label");
                    },
                  ),
                  const SizedBox(
                    height: 300.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
