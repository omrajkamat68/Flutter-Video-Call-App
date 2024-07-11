import 'package:flutter/material.dart';
import 'package:video_call_app/components/text_field_widget.dart';
import 'package:video_call_app/constants/current_user.dart';
import 'package:video_call_app/constants/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final callID=TextEditingController();

  @override
  void dispose() {
    super.dispose();
    callID.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: const Text('Call App',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.white
        ),),
      ),
      body: WillPopScope(
        onWillPop: ()async{
          return false;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Your Phone Number: ${currentUser.id}'),
            const SizedBox(height: 20,),
            Text('Enter Phone Number',style: TextStyle(
              fontSize: 18,color: Colors.grey[700]
            ),),
            const SizedBox(height: 10,),
            joinCallContainer()
          ],
        ),
      ),
    );
  }
  Widget joinCallContainer(){
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFieldWidget(
                controller: callID,
                hintText: 'join call by id',
                icon: const SizedBox()
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: (){
                    if(callID.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please input unique ID'),
                        )
                      );
                      print('Please input unique ID');
                    }else{
                      Navigator.pushNamed(context, PageRouteNames.call,
                          arguments: <String,String>{
                            PageParam.call_id: callID.text.trim(),
                          });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  child:const Text('Call Now',style: TextStyle(
                    color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold
                  ),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
