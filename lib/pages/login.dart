

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
          _FondoLogin(),
        _Elementoslogin()
        ],),
      ),
    );
  }
}
// ====================================================================================
//=========Elementos===================================================================
//=====================================================================================
class _Elementoslogin extends StatelessWidget{
@override 
Widget build(BuildContext context){

   return 
   Column(

    children: [
    SizedBox(height: 260.0,),


      SizedBox(height: 30.0,),
       
       Container(
         width: 340.0,
         height: 450.0,
         
         decoration: BoxDecoration(
           
           borderRadius: BorderRadius.circular(20.0),
           color: Colors.white,
           boxShadow:[BoxShadow(
           blurRadius: 10.00,
           color: Colors.grey
           ) 
           ]
           ),
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical:70.0 ),
             child: Form(
               child: Column(
                 children: [
                 Text("Iniciar Sesion", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25  )) ,
                 
                 SizedBox(height: 15.0,),
                
                 _inputEmail(), 
                 SizedBox(height: 30.0,),    
                 _password(),
                 SizedBox(height: 30.0,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(primary: Colors.red,  padding: EdgeInsets.symmetric(horizontal: 60
               ),),
                   onPressed: ()=>{
                     print('jalo'),
Navigator.push(context, MaterialPageRoute(builder: (context)=>Presentacion()))
                   }
                   ,
                   
                   child:Text("Entrar"),)
                 ],
               ),
             ),
           ),
       )
    ],
  );
}
//========================================================
Widget _inputEmail(){
  return TextFormField(
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      fillColor: Colors.red ,
      
      labelText: "Correo Electronico" ,
       labelStyle: TextStyle(color: Colors.red  ),
      hintText: "example@gmail.com",
      icon: Icon(Icons.email, color: Colors.red,)
    ),
  );
}
}
//========================================================
Widget _password(){
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),

      fillColor: Colors.red ,
      labelText: "Contraseña",
      labelStyle: TextStyle(color: Colors.red  ),

      hintText: "Password",
      icon: Icon(Icons.lock, color: Colors.red,)
    ),
  );
}

//===================================================
//Fondo
//===================================================
class _FondoLogin extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container( 
child: Image.network("https://scontent.fmxl1-1.fna.fbcdn.net/v/t1.15752-9/234128676_872173793439968_3627547094450225968_n.png?_nc_cat=107&ccb=1-5&_nc_sid=ae9488&_nc_eui2=AeGbqDYdwwpS_qYg_DXv3tuXuComt_lBK_64Kia3-UEr_igyKyJsmTx8MbZcFvOhbfQL4x5Wt7Q_VL4xd4V2LZbX&_nc_ohc=96UECg1qH9oAX_rA8-K&tn=HlfhNSCW0xyHknVH&_nc_ht=scontent.fmxl1-1.fna&oh=eecc22be99b8eb6f3816f61ff8ebbd2b&oe=613F88E3",height: 50,width: 10.00),
height: 270.0,
width: double.infinity,
decoration: BoxDecoration(
     gradient: LinearGradient(
            colors: [Colors.red, Colors.black],
          ),
     
  
),
    );
  }
}

class  Tabla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
 
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 180.0),
            child: FloatingActionButton(
              focusColor: Colors.red,
              splashColor: Colors.black,
              backgroundColor: Colors.red,
              child:Icon (Icons.email),
              onPressed: (){
                launch("https://scontent.fmxl1-1.fna.fbcdn.net/v/t1.15752-9/239454900_2907448012847748_7810175258537414029_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=ae9488&_nc_eui2=AeEZo_iVhOdawL3_ayclEnabWY6NwSq38txZjo3BKrfy3OiNrEfun1onhRF9ZsVL0n7BL25nbKxssx3o3r2oQ-7N&_nc_ohc=gc-OM7sS5McAX_qofxz&tn=HlfhNSCW0xyHknVH&_nc_ht=scontent.fmxl1-1.fna&oh=2877a72f4cbe106a78c38036ce7777a2&oe=614241E5");
              },
        
                )      );
                     
      
            
      
  }
  }
//=====================================================================================================================================
//Lista
//=====================================================================================================================================
Future<void> ObtenerUser() async {
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data['data'];

    _data.forEach((usuario) {
      final usuarioTemporal1 = UserModel.fromMapJson(usuario);
      usuarios.add(usuarioTemporal1);
    });
  }


// ==============================================================================
//Barra Arriba
//================================================================================
class _Barra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Text("Movimientos"), 
      
      backgroundColor: Colors.red,

    );}}

//   =================================================================================
//   Home
//   ============================================================================================
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return   Container(
 
      margin: EdgeInsets.all(10.0),
      child: Container( 
        
  decoration: BoxDecoration(
     gradient: LinearGradient(
            colors: [Colors.white, Colors.white, ],
          ),
  
   ),
        child: Container(
          
        
          child: Column(
          
            children: [
              
 Image.network("https://scontent.fmxl1-1.fna.fbcdn.net/v/t1.15752-9/234876921_525012275395808_921317385628775469_n.png?_nc_cat=101&ccb=1-5&_nc_sid=ae9488&_nc_eui2=AeEY8sltX_prY3Q9htYe6Wf00oF_3IMcwNHSgX_cgxzA0fBgboMjC_XuBaLItCLiNh_UWWcOpvzqbPSz_Q9FQVpK&_nc_ohc=bYhrvHHfPogAX-9HsgU&_nc_ht=scontent.fmxl1-1.fna&oh=579d5bc80f52b0d627b0ff7884a892b6&oe=61428B7D",height:140,width: 160.00),

              Text(
                '¡Bienvenido usuario!',
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 20,
                  decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Por favor presione el boton de abajo para ver su lista de movimientos',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 15,
              ),
         
             _botonTabla(context)

              
            ],
          ),
        ),
      ),
    );
}}


 Widget _botonTabla(BuildContext context){
    return Container(
      height: 350,
      child: FloatingActionButton(
        splashColor: Colors.black,
        backgroundColor: Colors.red,
        
        onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Tabla()));
               },
        
        child: Icon(Icons.list,
        size: 50, )
       
        ),
    );
 }

 class Presentacion extends StatelessWidget{
@override 
Widget build(BuildContext context){

   return Container(
     decoration: BoxDecoration(image: DecorationImage(image: NetworkImage ("https://scontent.fmxl1-1.fna.fbcdn.net/v/t1.15752-9/236199459_209278054502480_2980605180312928272_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=ae9488&_nc_eui2=AeHxgtTWPc0LA7qPvQ3Vg31tU_hV_S03kRRT-FX9LTeRFFRdlwSCojiNbFSK0P5Dcpv2C1FNDOROWQjMO1amtSrr&_nc_ohc=UJJNQudO9fYAX8CTLZq&_nc_ht=scontent.fmxl1-1.fna&oh=a40cd97d0c286a22292833d7bab97570&oe=611CB5FD"),
 )),
     child: Scaffold(
        backgroundColor: Colors.transparent,
 floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
 floatingActionButton: FloatingActionButton(
 
   backgroundColor: Colors.red,
   onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
   },
     child: Icon(Icons.arrow_circle_down,
        size: 50, )
 )
          ),
   );
    }

 }