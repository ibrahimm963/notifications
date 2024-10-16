import 'package:flutter/material.dart';

class WarenkorbScreen extends StatefulWidget {
  const WarenkorbScreen({super.key});
  

  @override
  State<WarenkorbScreen> createState() => _WarenkorbScreenState();
}

class _WarenkorbScreenState extends State<WarenkorbScreen> {
  List <Widget>[
                            _WarenMenuItem("Dach1", "18 days", "7 days", 9499.99),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width: 680, height: 0.5, color: Colors.grey,),
                            ),
                            _WarenMenuItem("Dach2", "14 days", "3 days", 7999.99),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width: 680, height: 0.5, color: Colors.grey,),
                            ),
                            _WarenMenuItem("Dach3", "27 days", "5 days", 12499.99),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width: 680, height: 0.5, color: Colors.grey,),
                            ),
                            _WarenMenuItem("Dach4", "11 days", "2 days", 4999.99),
                          ],
  int itemcount = 4;
  int selitemcount = 1;
  int amountcount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 30.0,),
            child: Row(
              children: [
                const Spacer(),
                Column(
                  children: [
                    Container(
                      height: 24, 
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.grey, width: 1,)
                      ),
                      child: Center(
                        child: Text("1",
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                      ),
                      Text("   Cart   ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 140, height: 1, color: Colors.grey,),
                    Text(""),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 24, 
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.grey, width: 1,)
                      ),
                      child: Center(
                        child: Text("2"),
                      ),
                      ),
                      Text("Address"),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 140, height: 1, color: Colors.grey,),
                    Text(""),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 24, 
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.grey, width: 1,)
                      ),
                      child: Center(
                        child: Text("3"),
                      ),
                      ),
                      Text("Payment")
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        width: 700,
                        child: Row(
                          children: [
                            const Icon(Icons.check_box),
                            Text(selitemcount.toString()+"/"+itemcount.toString()+" items selected",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            const Spacer(),
                            Text("Move to wishlist",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text("Remove",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: ListView.builder(
                        itemBuilder: 
                        )
                      ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("Coupons"),
                  TextField(),
                  Text("segsdf"),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("sdadsfsdf"),
                          Text("dfgsg"),
                          Text("sdgdfgr"),
                        ],
                      ),
                      Image.network("src")
                    ],
                  ),
                  Text("Price Details"),
                  Row(
                    children: [
                      Text("data"),
                      Spacer(),
                      Text("data"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("data"),
                      Spacer(),
                      Text("data"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("data"),
                      Spacer(),
                      Text("data"),
                    ],
                  ),
                  Container(height: 1, color: Colors.grey,),
                  Row(
                    children: [
                      Text("data"),
                      Spacer(),
                      Text("data"),
                    ],
                  ),
                  Container(
                    width: 300, 
                    height: 40, 
                    color: Colors.black,
                    child: Center(
                      child: Row(
                        children: [
                          Text("Place order",
                          style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                          Icon(Icons.arrow_right, color: Colors.white,)
                        ],
                      ),
                    ),
                    )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _WarenMenuItem(
    String name,
    String delivery,
    String deliveryexpr,
    double price,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: 700,
        height: 130,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Stack(
                children: [
                  Image.network(
                    "https://media.istockphoto.com/id/2013848057/de/foto/amalfik%C3%BCste-von-salerno-italien-in-der-abendd%C3%A4mmerung.jpg?s=1024x1024&w=is&k=20&c=qRTfUmil8Si5Dz5UhvvdU_6enLsiV0NimcIM0oDFGZA=",
                    height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.check_box),
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      children: [
                        Icon(Icons.timer, size: 15,),
                        Text(" Casual delivery in ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w700
                        ),),
                        Text(deliveryexpr,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),),
                        Text("  •  ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w700
                        ),),
                        Icon(Icons.flash_on, size: 15,),
                        Text(" Express delivery in ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w700
                        ),),
                        Text(delivery,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(price.toString(),
                        style: TextStyle(
                        fontWeight: FontWeight.bold
                  ),),
                      Text(" €",
                        style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700
                  ),
                  )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0,),
                  child: Icon(Icons.close,
                  color: Colors.grey,
                  size: 18,),
                ),
                Spacer(),
                Row(
                  children: [
                    IconButton(onPressed: () {
                      setState(() {
                        amountcount--;
                      },);
                    }, 
                    icon: Icon(Icons.remove, 
                    size: 14, 
                    color: Colors.grey,)),
                    Text(amountcount.toString()),
                    IconButton(onPressed: () {
                      setState(() {
                        amountcount++;
                      },);
                    }, 
                    icon: Icon(Icons.add,
                    size: 14, 
                    color: Colors.grey,)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
