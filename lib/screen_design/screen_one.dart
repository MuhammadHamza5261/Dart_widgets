import 'package:flutter/material.dart';


class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {

    // media query
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade200.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SBANK',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Icon(Icons.account_circle,size: 35,)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
             const Row(
                children: [
                  Icon(Icons.real_estate_agent_outlined,color: Colors.deepOrange,size: 30,),
                 SizedBox(
                   width: 20,
                 ),
                  Text('upgrade my plan',style: TextStyle(
                    fontSize:18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: height*0.05,
              ),
              const Text('Bank made by users For the peoples',
                maxLines: 2,
                style: TextStyle(
                fontSize: 40,
              ),
              ),
               const SizedBox(
                  height: 30,
                ),
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  // rich text
                  Row(
                    children: [
                      Text('BLOG',
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
        
                      ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text('124',
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),)
                    ],
                  ),
                   Row(
                     children: [
                       Icon(Icons.add,size: 25,color: Colors.blue,),
                       SizedBox(
                         width: 10,
                       ),
                       Text('CREATE',style: TextStyle(
                         fontSize: 20,
                         color: Colors.blue,
                         fontWeight: FontWeight.w500,
                       ),
                       ),
                     ],
                   ),
        
        
                 ],
               ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: width*0.8,
                height: height*0.48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height*0.2,
                            width: width*0.45,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset('assets/images/bank.png'),
        
                          ),
                          Container(
                            height: height*0.2,
                            width: width*0.2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'SB-BANK',
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
        
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text('SOFTWARE',
                            style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                         SizedBox(
                            width: 20,
                          ),
                          Text('10:35 PM',style: TextStyle(
                            fontSize: 18,
        
                          ),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'How our app became the most loved by users',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
        
        
        
                    ],
                  ),
                ),
        
              ),
        
        
              
            ],
          ),
        ),
      ),



    );
  }
}
