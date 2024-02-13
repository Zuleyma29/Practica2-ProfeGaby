import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter= 0;
  TextEditingController counterTxt= TextEditingController();
  @override
  Widget build(BuildContext context) {
    counterTxt.text = counter.toString();
    return Scaffold( 
        appBar: AppBar(
          title: const Text('Práctica 2'),
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 11, 247, 46),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
              separador(15.0),
              titulo(),
              separador(35.0),
              creditos(),
              separador(60.0),
              contador(),
            ],
          ),
        ),
        floatingActionButton: botones(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }

  Row botones() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget> [

          FloatingActionButton(
            foregroundColor: Colors.black,
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              counter--;
              counterTxt.text= counter.toString();
              // print('Se presiono el boton -');
              // print(counter);
            },
            child: const Icon(Icons.exposure_minus_1),
            ),

            FloatingActionButton(
            foregroundColor: Colors.black,
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              counter=0;
              counterTxt.text = counter.toString();
             // print('Se presiono el boton 0');
             // print(counter);
            },
            child: const Icon(Icons.exposure_zero),
            ),

          FloatingActionButton(
            foregroundColor: Colors.black,
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              counter++;
              counterTxt.text = counter.toString();
              // print('Se presiono el boton +');
              // print(counter);
            },
            child: const Icon(Icons.exposure_plus_1),
            ),
            
        ],
      );
  }

  SizedBox separador(double alto) {
    return SizedBox(
                  height: alto,
                );
  }

  Row creditos() {
    return const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Desarrolladora: ',
                    style: TextStyle(
                    color: Color.fromARGB(255, 11, 12, 12),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                    ),
                    Text('Zuleyma Pelcastre Vargas',
                    style: TextStyle(
                    color: Color.fromARGB(255, 32, 189, 4),
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                  ),
                    ),
                  ],
                );
  }

  Text titulo() {
    return const Text('Contador de taps',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 231, 170),
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold,
                  ),
                );
  }

Widget contador(){
  return  SizedBox(
    width: 150,
    child:  TextField(
      controller: counterTxt,
      enabled:false,
      keyboardType: TextInputType.number,
      maxLength: 6,
      style: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 3, 152, 50),
      ),
      //maxLines: 3, expande el TexField 3 lineas
      cursorColor: Colors.cyan,
      cursorRadius: const Radius.elliptical(10.0,15.0),
      cursorWidth: 5.0,
      // obscureText: true, oculta el texto que se escribes
      decoration: const InputDecoration(
        icon: Icon(Icons.add_alarm_outlined),
        iconColor: Color.fromARGB(255, 17, 239, 47),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.teal),
        )
      
      ),
    ),
  );

}
}