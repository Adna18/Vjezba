import 'package:ecommerce_mobile/layouts/master_screen.dart';
import 'package:ecommerce_mobile/model/cart_provider.dart';
import 'package:ecommerce_mobile/model/product.dart';
import 'package:ecommerce_mobile/model/search_result.dart';
import 'package:ecommerce_mobile/model/user.dart';
import 'package:ecommerce_mobile/model/userActivity.dart';
import 'package:ecommerce_mobile/providers/userActivity_provider.dart';
import 'package:ecommerce_mobile/providers/utils.dart';
import 'package:ecommerce_mobile/screens/product_details_screen.dart';
import 'package:ecommerce_mobile/screens/userActivityDetails_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_mobile/providers/product_provider.dart';

class UserActivityScreen extends StatefulWidget {
  const UserActivityScreen({super.key});

  @override
  State<UserActivityScreen> createState() => _UserActivityScreenState();
}

class _UserActivityScreenState extends State<UserActivityScreen> {
  late UserActivityProvider userActivityProvider;

   TextEditingController searchController = TextEditingController();


  SearchResult<UserActivity>? userActivityData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  
  }

  @override
  void initState() {
    super.initState();
    userActivityProvider = context.read<UserActivityProvider>();
   
    loadData();
  }

  Future<void> loadData() async {
    var activities = await userActivityProvider.get();
    this.userActivityData = activities;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MasterScreen(
      title: "User activities",
      child: Center(
        child: Column(
          children: [
            
            _buildResultView(),
             _buildSearch(),

            SizedBox(height:20),

            ElevatedButton(onPressed: ()async{
             var result= await Navigator.push(context,MaterialPageRoute(builder: (context)=>UserActivitydetailsScreen()),
              );

              if(result==true){
              await loadData();
              }
              


            },
            child: Text("dodaj"),
            )

          ],
        ),
      ),
    );
  }

  Widget _buildSearch() {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(),
                ),
                controller: searchController,
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () async {
                var filter = {
                  "status": searchController.text,
                };
                debugPrint(filter.toString());
                var userActivity = await userActivityProvider.get(filter: filter);
                
                this.userActivityData = userActivity;
                setState(() {});
              },
              child: Text("Search"),
            ),
            SizedBox(width: 10),
          ],
        ));
  }
  

  Widget _buildResultView() {
    return Expanded(child: Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Container(
              height: 500,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30
                ),
                scrollDirection: Axis.horizontal,
                children: _buildUserActivitiesList(),
              ),
            ),
      ),
    ));
  }



    List<Widget> _buildUserActivitiesList() {
    if (userActivityData == null || userActivityData?.items?.length == 0) {
      return [Text("Loading...")];
    }

    List<Widget> list = userActivityData!.items!.map((x) => Container(
      child: Column(
        children: [
        
          Text(x.user?.firstName?? ' '),
          Text(x.user?.lastName?? ' '),
          Text(x.activity?.name ??  ' '),
          Text(x.status?? ' '),


          
        ],
      ),
    )).cast<Widget>().toList();
    
    return list;
  }

}
