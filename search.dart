import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);
  Widget Currencey({title1,subtitle,leading,traling}){
    return  Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[
            BoxShadow(
                blurRadius: 1.0,
                offset: Offset(0,1)
            )
          ]

      ),

      height: 70,
      width: double.infinity,
      child:ListTile(
          leading:Image.network(leading,height: 40,),
          title: Text(title1,style: TextStyle(fontWeight: FontWeight.w600),),
          subtitle: Text(subtitle),
          trailing: Text(traling)
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.withOpacity(0.7),
          elevation: 20,
          centerTitle: false,
          title: Text(
            'Search',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: const Icon(Icons.arrow_back),
          actions: [
            const Icon(Icons.settings),
            SizedBox(
              width: 23,
            ),
          ],
        ),
        body: SafeArea(

          child: Column(
            children: [

              SizedBox(height: 20,),

              Row(
                children: [

                  const SearchField(),

                  SizedBox(width: 10,),

                  Text('Cancel', style: TextStyle(color: Colors.black,),),

                  SizedBox(height: 30,),


                ],
              ),
             SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 14.0),
               child: Column(
                 children: [
                   Currencey(leading: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1200px-Bitcoin.svg.png',title1: 'Bitcoin',subtitle: 'BTC',traling: '\$\2,5902'),
                 SizedBox(height: 30,),
                 Currencey(leading: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1257px-Ethereum_logo_2014.svg.png',title1: 'Ethereum',subtitle: 'ETH',traling: '\$\12750.0'),
                   SizedBox(height: 30,),
                 Currencey(leading: 'https://s2.coinmarketcap.com/static/img/coins/200x200/825.png',
                     title1: 'Tether',subtitle: 'USDT',traling: '73.00'),
                   SizedBox(height: 30,),
                   Container(
                     height: 70, width: double.infinity,
                     decoration: BoxDecoration(
                       color: Colors.deepPurpleAccent.withOpacity(0.7),
                       borderRadius: BorderRadius.circular(14),

                     ),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 145.0,vertical: 20),
                       child: Text('View all',style: TextStyle(color: Colors.white,fontSize: 23),),
                     ),
                   )
                 ],
               ),
             ),



              //SPACE FOR CURRENCIES










            ],
          ),
        )
    );
  }
}

//SearchField Class
class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
            width: 300,
            height: 50.0,
            decoration: BoxDecoration(
              border:
              Border.all(color: Colors.black.withOpacity(0.5), width: 1.5),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.4),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: TextField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: 'Search Cryptocurrency',
                        hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                      ),
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )));
  }
}



//del
class cryptos extends StatelessWidget {
  const cryptos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        cryptoItem(
            name: 'Bitcoin',
            description: 'BTC',
            value: '\$2,509.75',
            growth: 9.7),
      ],
    );
  }
}

class cryptoItem extends StatelessWidget {

  const cryptoItem(
      {Key? key,
        required  this.name,
        required this.description,
        required  this.growth, required this.value})
      : super(key: key);
  final String name;
  final String description;
  final String value;
  final double growth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,

    );
  }
}