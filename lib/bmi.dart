import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0;
  void onState(){
   double heightcm=double.parse(height.text);
   double weightd=double.parse(weight.text);
   double heightm=heightcm/100;
   double heightsquare=heightm*heightm;
   result=weightd/heightsquare;
   double res=result;
   setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: height,
                decoration: InputDecoration(
          fillColor: Colors.pinkAccent,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'height'
                ),
              ),

              SizedBox(
                height: 15,
              ),
              TextField(
                controller: weight,
                decoration: InputDecoration(
              fillColor: Colors.pinkAccent,
                  filled: true,
                  border: OutlineInputBorder(),
    hintText: 'weight'
                  )
                ),
              SizedBox(
                height: 15,
              ),
               TextButton(
                   style:ButtonStyle(
                       backgroundColor:MaterialStatePropertyAll(
                           Colors.blue) ),onPressed: (){onState();} , child: Text("calculate",
                 style: TextStyle(color: Colors.white,fontSize: 20),
               )
               ),
              SizedBox(
                height: 15,
              ),


              SizedBox(
                height: 15,
              ),
              Text(result==null?"Enter valuer":"${result.toStringAsFixed(2)}",

              ),
          ],
        ),
      ),
    ),
    );
  }
}
