import 'package:flutter/material.dart';

void main() => runApp(Inicio());

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MyHomePage(title: 'GPM Tracking'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title; 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Profile(),
          Divider(),
          MenuPrincipal(),
          Divider(),
          MenuSecundario(),


        ],
      ),

    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('http://elbourne.org/images/william_carey.jpg')
            )
          ),
          
        ),
        title: Text(
          "William Carey",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        subtitle: Text("Lima Centro", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 9)),
      ),
      
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuPrincipalItem,
    );
  }
}


List<MenuPrincipalItems> menuPrincipalItem = [
  MenuPrincipalItems(
    title: "Perfil",
    icon: Icons.person, 
    colorBox: Colors.blue,
    colorIcon: Colors.white,
  ),
  MenuPrincipalItems(
    title: "Timeline",
    icon: Icons.hourglass_full, 
    colorBox: Colors.red,
    colorIcon: Colors.white,
  ),
  MenuPrincipalItems(
    title: "Fases",
    icon: Icons.loop, 
    colorBox: Colors.amber,
    colorIcon: Colors.white,
  ),
  MenuPrincipalItems(
    title: "Recordatorio",
    icon: Icons.calendar_today, 
    colorBox: Colors.green,
    colorIcon: Colors.white,
  ),
  MenuPrincipalItems(
    title: "Contactos",
    icon: Icons.contact_mail, 
    colorBox: Colors.purple,
    colorIcon: Colors.white,
  )

];

class MenuPrincipalItems extends StatelessWidget {
  MenuPrincipalItems({this.title, this.icon, this.colorBox, this.colorIcon});
  final String title;
  final IconData icon;
  final Color colorBox, colorIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: colorBox,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: colorIcon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class MenuSecundario extends StatelessWidget {
   
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,
                          
                          
                        ),
                      ),
                      Icon(Icons.lightbulb_outline, color: Colors.white, size: 32.0,),
                      
                    ],
                  ),
                  Text("Claridad en "),
                  Text("el Llamado")
                  
                ],
                
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          
                          
                        ),
                      ),
                      Icon(Icons.map, color: Colors.white, size: 32.0,),
                      
                    ],
                  ),
                  Text("Lugar del"),
                  Text("Llamado")
                  
                ],
                
              ),
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          
                          
                        ),
                      ),
                      Icon(Icons.book, color: Colors.white, size: 32.0,),
                    ],
                  ),
                  Text("Estudios"),
                  Text("Teológicos"),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          
                          
                        ),
                      ),
                      Icon(Icons.language, color: Colors.white, size: 32.0,),
                      
                    ],
                  ),
                  Text("Estudios"),
                  Text("Transculturales"),
                  
                ],
                
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          
                          
                        ),
                      ),
                      Icon(Icons.translate, color: Colors.white, size: 32.0,),
                      
                    ],
                  ),
                  Text("Idioma"),
                  Text("       ")
                  
                ],
                
              ),
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          shape: BoxShape.circle,
                          
                          
                        ),
                      ),
                      Icon(Icons.home, color: Colors.white, size: 32.0,),
                    ],
                  ),
                  Text("Compromiso"),
                  Text("Iglesia Local"),
                ],
              )
            ],
          ),
          
        ],
      ),
    );
  }
}

/* List<MenuSecundarioItems> menuSecundario = [
  
  MenuSecundarioItems(
    title: 'Claridad en el llamado',
    icon: Icons.lightbulb_outline,
    
  ),
  MenuSecundarioItems(
    title: 'Lugar del Llamado',
    icon: Icons.data_usage,
  ),
  MenuSecundarioItems(
    title: 'Estudios Teológicos',
    icon: Icons.book,
  ),
  MenuSecundarioItems(
    title: 'Estudios Transculturales',
    icon: Icons.language,
  ),
  MenuSecundarioItems(
    title: 'Idioma',
    icon: Icons.translate,
  ),
  MenuSecundarioItems(
    title: 'Pulsa & Paket Internet',
    icon: Icons.signal_cellular_4_bar,
  ),
  MenuSecundarioItems(
    title: 'Compromiso Iglesia Local',
    icon: Icons.home,
  ),
  MenuSecundarioItems(
    title: 'Manual Vamos',
    icon: Icons.edit,
  ),
];

class MenuSecundarioItems extends StatelessWidget {
  MenuSecundarioItems({this.title, this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
 */