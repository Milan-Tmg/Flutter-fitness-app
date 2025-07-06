import "dart:io";
import "package:flutter/material.dart";
import "package:flutter_fitness_app/theme/app_theme.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:image_picker/image_picker.dart";

class Profilepic extends StatefulWidget {
  const Profilepic({super.key});

  @override
  State<Profilepic> createState() => _PickGalleryimageState();
}

class _PickGalleryimageState extends State<Profilepic> {
  @override

  XFile? _pickedImage;

  Future<void> _pickImage()async{

    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(pickedFile != null){
      setState((){
        _pickedImage = pickedFile;
      });
    }
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      height: 0.15.sh,
      width: 1.sw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              _pickImage();
            },
            child: CircleAvatar(
              radius: 40.w,
              backgroundColor: buttonColor,
              child: _pickedImage == null?
              Center(
                child: Icon(Icons.person_outline, size: 75.sp, color: Colors.black),
              ): ClipRRect(
                borderRadius: BorderRadius.circular(40.w),
                child: Container(
                  width: 80.w,
                  height: 80.w,
                  child: Image.file(File(_pickedImage!.path,),fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Spacer(),
          Text("Profile", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
