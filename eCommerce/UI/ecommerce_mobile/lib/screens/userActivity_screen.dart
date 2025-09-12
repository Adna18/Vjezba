import 'package:ecommerce_mobile/layouts/master_screen.dart';
import 'package:ecommerce_mobile/model/search_result.dart';
import 'package:ecommerce_mobile/model/userActivity.dart';
import 'package:ecommerce_mobile/providers/userActivity_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserActivityScreen extends StatefulWidget {
  const UserActivityScreen({super.key});

  @override
  State<UserActivityScreen> createState() => _UserActivityScreenState();
}

class _UserActivityScreenState extends State<UserActivityScreen> {
  late UserActivityProvider userActivityProvider;
  TextEditingController statusController=TextEditingController();

  SearchResult<UserActivity>? userActivityData;

@override
  void didChangeDependencies() {
    super.didChangeDependencies();
  
  }

  @override
  void initState() {
    super.initState();

    userActivityProvider=context.read<UserActivityProvider>();
   
    loadData();
  }

  void loadData() async{
    var UserActivity=await userActivityProvider.get();
    this.userActivityData=UserActivity;

    setState((){});

  }

  
  



  @override
  Widget build(BuildContext context) {
    return MasterScreen(
      title:"ActivityList",
      child:Center(
        child:Column(children: [
          _buildResultView(),
        ],)
      )
    );
  }

Widget _buildResultView(){
  return Expanded(child: Container(
    width: double.infinity,
    child:SingleChildScrollView(
      child: Container(
        height:500,
        child:GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
        childAspectRatio: 4/3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30),
        scrollDirection: Axis.horizontal,
        children:_buildProductCardList(),
      ),
    ),
  ),),
  );
}
  

  List<Widget> _buildProductCardList(){
    if(userActivityData==null || userActivityData?.items?.length==0){
    return [Text("Loading...")];
  }

  List<Widget>list=userActivityData!.items!.map((x)=>Container(
    child:Column(
      children:[
        Text(x.user?.FirstName?? " "),
        Text(x.user?.LastName?? " "),
        Text(x.activity?.Name?? " "),
        Text(x.Status ?? " "),
      ],
    ),
  )).cast<Widget>().toList();
  return list;
}

}