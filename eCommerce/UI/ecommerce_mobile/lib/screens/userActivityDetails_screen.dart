import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_mobile/layouts/master_screen.dart';
import 'package:ecommerce_mobile/model/activity.dart';
import 'package:ecommerce_mobile/model/product.dart';
import 'package:ecommerce_mobile/model/product_type.dart';
import 'package:ecommerce_mobile/model/search_result.dart';
import 'package:ecommerce_mobile/model/unit_of_measure.dart';
import 'package:ecommerce_mobile/model/user.dart';
import 'package:ecommerce_mobile/model/userActivity.dart';
import 'package:ecommerce_mobile/providers/activity_provider.dart';
import 'package:ecommerce_mobile/providers/product_provider.dart';
import 'package:ecommerce_mobile/providers/product_type_provider.dart';
import 'package:ecommerce_mobile/providers/unit_of_measure_provider.dart';
import 'package:ecommerce_mobile/providers/userActivity_provider.dart';
import 'package:ecommerce_mobile/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:file_picker/file_picker.dart';

class UserActivitydetailsScreen extends StatefulWidget {
  UserActivity? userActivity;
  User? users;
  Activity? activity;
  UserActivitydetailsScreen({super.key, this.userActivity,this.users,this.activity});

  @override
  State<UserActivitydetailsScreen> createState() => _UserActivitydetailsScreenState();
}

class _UserActivitydetailsScreenState extends State<UserActivitydetailsScreen> {
  final formKey = GlobalKey<FormBuilderState>();

  Map<String, dynamic> _initalValue = {};

  late UserActivityProvider userActivityProvider;
  late UserProvider usersProvider;
  late ActivityProvider activityProvider;
  

  SearchResult<UserActivity>? userActivity;
  SearchResult<User>?users;
  SearchResult<Activity>?activity;
 
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    userActivityProvider = Provider.of<UserActivityProvider>(context, listen: false);
    usersProvider=Provider.of<UserProvider>(context,listen:false);
    activityProvider=Provider.of<ActivityProvider>(context,listen: false);
   
    _initalValue = {
      "userId": widget.users?.id,
      "activityId": widget.activity?.id.toString(),
      "dateAssigned": widget.userActivity?.dateAssigned?.toIso8601String(),
      "status": widget.userActivity?.status,
      "note": widget.userActivity?.note.toString(),
      "completedAt": widget.userActivity?.completedAt?.toIso8601String(),

    };
   
    print(_initalValue);

    initFormData();
  }

  initFormData() async {
     userActivity= await userActivityProvider.get();
     users=await usersProvider.get();
     activity=await activityProvider.get();

   

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MasterScreen(
      title: "User activity Details",
      child: Column(children: [
        _buildForm(),
        _buildSaveButton()
      ],),
    );
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      onPressed: () async {
        formKey.currentState?.saveAndValidate();
        if (formKey.currentState?.validate() ?? false) {
          print(formKey.currentState?.value.toString());
          var request = Map.from(formKey.currentState?.value ?? {});
          if (widget.userActivity == null) {
            widget.userActivity = await userActivityProvider.insert(request);
          } else {
            widget.userActivity = await userActivityProvider.update(widget.userActivity!.id!, request);
          }
           Navigator.pop(context,true);
        }
      
      },
      child: Text("Save"),
    );
  }


  
  
  File? _image;
  String? _base64Image;

  Widget _buildForm() {
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return FormBuilder(
        key: formKey,
        initialValue: _initalValue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
             
              Row(
                children: [
                  Expanded(
                      child: FormBuilderDropdown(
                    name: "userId",
                    decoration: InputDecoration(labelText: "Korisnik"),
                    items: users?.items
                            ?.map((e) => DropdownMenuItem(
                                value: e.id, child: Text(e.firstName!.toString())))
                            .toList() ??
                        [],
                  )),
                  Expanded(
                      child: FormBuilderDropdown(
                    name: "activityId",
                    decoration: InputDecoration(labelText: "Activity"),
                    items: activity?.items
                            ?.map((e) => DropdownMenuItem(
                                value: e.id, child: Text(e.name!.toString())))
                            .toList() ??
                        [],
                  ))
                ],
              ),

               FormBuilderDateTimePicker(
                name: "dateAssigned",
                decoration: InputDecoration(labelText: "Date assigned"),
                inputType: InputType.date,
                valueTransformer: (value) => value?.toIso8601String(),
              ),

              FormBuilderTextField(
                name: "status",
                decoration: InputDecoration(labelText: "status activity"),
              ),

              
              FormBuilderTextField(
                name: "note",
                decoration: InputDecoration(labelText: "note"),
              ),

                FormBuilderDateTimePicker(
                name: "completedAt",
                decoration: InputDecoration(labelText: "Completed at"),
                inputType: InputType.date,
                valueTransformer: (value) => value?.toIso8601String(),
              ),


              // Row(
              //   children: [
              //     Expanded(
              //         child: FormBuilderField(
              //             name: "image",
              //             builder: (FormFieldState<dynamic> field) {
              //               return TextButton(
              //                 onPressed: () async {
              //                   FilePickerResult? result =
              //                       await FilePicker.platform.pickFiles();
              //                   if (result != null) {
              //                     _image = File(result.files.single.path!);
              //                     _base64Image = base64Encode(_image!.readAsBytesSync());
              //                   }
              //                 },
              //                 child: Text("Upload Image"),
              //               );
              //             }))
              //   ],
              // )
            ],
          ),
        ));
  }
}
