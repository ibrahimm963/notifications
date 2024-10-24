import 'package:flutter/material.dart';

class WarenkorbScreen extends StatefulWidget {
  const WarenkorbScreen({super.key});
  

  @override
  State<WarenkorbScreen> createState() => _WarenkorbScreenState();
}

class _WarenkorbScreenState extends State<WarenkorbScreen> {
  
  int itemcount = 6;
  int selitemcount = 1;
  int amountcount = 1;
  double dach1pr = 9499.99;
  double deliverypr = 19.99;
  double totalpr = 9499.99 + 19.99;
  List<bool> _isSelected = [false, false, false, false, false, false];

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
              SizedBox(
                width: 820, height: 620,
                child: Padding(
                  padding: const EdgeInsets.only(left: 150.0),
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
                        child: SizedBox(
                          width: 730, height: 575, 
                          child: ListView(
                            children:[
                                _WarenMenuItem("Dach1", "14 days", "7 days", dach1pr, 0 ),
                                _WarenMenuItem("Dach2", "10 days", "5 days", 7999.99, 1),
                                _WarenMenuItem("Dach3", "16 days", "8 days", 12499.99, 2),
                                _WarenMenuItem("Dach4", "7 days", "3 days", 5999.99, 3),
                                _WarenMenuItem("Dach5", "18 days", "7 days", 1999.99, 4),
                                _WarenMenuItem("Dach6", "22 days", "9 days", 22999.99, 5),
                              ],
                          ),
                        )
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150.0, left: 100, top: 8.0, bottom: 18.0,),
                child: SizedBox(
                  height: 620, width: 458,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Coupons",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                      ),
                      const TextField(
                              style: TextStyle(
                                color: Colors.black
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.shop),
                                suffixIcon: Icon(Icons.close),
                                labelText: "Coupons", 
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                hoverColor: Colors.black,
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                ),
                                enabledBorder:OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                                  ),
                              ),
                            ),
                      Spacer(),
                      Text("Gifting",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Buying for a loved one?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text("TextTextText",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey
                              ),),
                            ),
                            Text("TextTextText",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.purple
                        ),),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text("Price Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text("$selitemcount item",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Text("Dach1",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey
                                    ),),
                                    Spacer(),
                                    Text(dach1pr.toString()+" €",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text("No Coupons",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Text("Delivery Charges",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey
                                    ),),
                                    Spacer(),
                                    Text(deliverypr.toString()+" €",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(width: 600, 
                        height: 0.5, 
                        color: Colors.grey,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0, bottom: 30.0),
                        child: Row(
                          children: [
                            Text("Total Amount",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$totalpr €",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17
                                    ),),
                          ],
                        ),
                      ),
                      Container(
                        width: 600, 
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Place order  ",
                            style: TextStyle(
                              color: Colors.white
                            ),),
                            Icon(Icons.arrow_forward, 
                            color: Colors.white,
                            size: 20,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          Container(
            width: 740,
            height: 130,
            child: Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.network(
                        "https://media.istockphoto.com/id/2013848057/de/foto/amalfik%C3%BCste-von-salerno-italien-in-der-abendd%C3%A4mmerung.jpg?s=1024x1024&w=is&k=20&c=qRTfUmil8Si5Dz5UhvvdU_6enLsiV0NimcIM0oDFGZA=",
                        height: 100,
                        ),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(top: 3.0, left: 9.0),
                      child: IconButton(
                        icon: Icon(_isSelected[index]
                            ? Icons.check_box
                            : Icons.check_box_outline_blank_outlined),
                        onPressed: () {
                          setState(() {
                            _isSelected[index] = !_isSelected[index];
                          });
                        },
                      ),
                    ),
                  ],
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
                      padding: const EdgeInsets.only(top: 8.0,),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: 680, height: 0.5, color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
