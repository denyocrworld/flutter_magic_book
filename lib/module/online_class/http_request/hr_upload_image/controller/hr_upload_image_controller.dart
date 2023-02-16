import 'dart:io';

import 'package:flutter/material.dart';
import '../../../../../core.dart';

class HrUploadImageController extends State<HrUploadImageView>
    implements MvcController {
  static late HrUploadImageController instance;
  late HrUploadImageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? imageUrl;
  bool uploading = false;
  doUpload() async {
    //1. ambil filenya
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        "png",
        "jpg",
      ],
      allowMultiple: false,
    );
    if (result == null) return;
    File file = File(result.files.single.path!);
    String filePath = file.path;

    //2. upload file-nya
    //dio_upload
    final formData = FormData.fromMap({
      'image': MultipartFile.fromBytes(
        File(filePath).readAsBytesSync(),
        filename: "upload.jpg",
      ),
    });

    uploading = true;
    setState(() {});

    var res = await Dio().post(
      'https://api.imgbb.com/1/upload?key=b55ef3fd02b80ab180f284e479acd7c4',
      data: formData,
    );

    var data = res.data["data"];
    var url = data["url"];
    imageUrl = url;
    uploading = false;
    setState(() {});
  }
}
