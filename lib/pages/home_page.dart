import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sharing_codelab/model/photos_library_api_model.dart';
import 'package:sharing_codelab/pages/login_page.dart';
import 'package:sharing_codelab/pages/trip_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<PhotosLibraryApiModel>(
      builder: (context, child, apiModel) {
        return apiModel.isLoggedIn() ? TripListPage() : LoginPage();
      },
    );
  }
}
