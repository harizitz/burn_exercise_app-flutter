import 'package:flutter/material.dart';
import 'exercise.dart';
void main() 
{
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home:Home()
      )
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Exercise> names =[
    Exercise(id:1,title:'Squat',photourl:'images/squat.png',gifurl: 'images/gif/squat.gif'),
     Exercise(id:2,title:'Push-Up',photourl:'images/pushup.jpg',gifurl: 'images/gif/pushup.gif'),
     Exercise(id:3,title:'Glute Bridge',photourl:'images/glutebridge.jpg',gifurl: 'images/gif/glutebridge.gif'),
     Exercise(id:4,title:'Lunge',photourl:'images/lunge.jpg',gifurl: 'images/gif/lunge.gif'),
     Exercise(id:5,title:'Plank',photourl:'images/plank.jpg',gifurl: 'images/gif/plank.gif'),
     Exercise(id:6,title:'Crab Walk',photourl:'images/crabwalk.jpg',gifurl: 'images/gif/crabwalk.gif'),
     Exercise(id:7,title:'Single-Leg Squat',photourl:'images/singlelegsquat.jpg',gifurl: 'images/gif/singlelegsquat.gif'),
     Exercise(id:8,title:'Bird-Dog',photourl:'images/birddog.jpg',gifurl: 'images/gif/birddog.gif'),
     Exercise(id:9,title:'Bicycle Crunch',photourl:'images/bicyclecrunch.jpg',gifurl: 'images/gif/bicyclecrunch.gif'),
      Exercise(id:10,title:'Double Leg Lift',photourl:'images/doubleleglift.gif',gifurl: 'images/gif/doubleleglift.gif'),
      Exercise(id:11,title:'Side Lunge',photourl:'images/sidelunge.jfif',gifurl: 'images/gif/sidelunge.gif'),
      Exercise(id:12,title:'Burpee',photourl:'images/burpee.jpg',gifurl: 'images/gif/Burpee.gif'),
     Exercise(id:13,title:'Squat Jump',photourl:'images/squatjump.jpg',gifurl: 'images/gif/squatjump.gif'),
     Exercise(id:14,title:'Sit-Up',photourl:'images/situp.jpg',gifurl: 'images/gif/situp.gif'),
     Exercise(id:15,title:'Jumping Jacks',photourl:'images/jumpingjacks.png',gifurl: 'images/gif/jumpingjacks.gif'),
     Exercise(id:16,title:'Mountain Climber',photourl:'images/mountainclimber.jpg',gifurl: 'images/gif/mountainclimber.gif'),
     Exercise(id:17,title:'Truck Jump',photourl:'images/truckjump.jpg',gifurl: 'images/gif/truckjump.gif'),
     Exercise(id:18,title:'Butt Kicks',photourl:'images/buttkick.jpg',gifurl: 'images/gif/buttkick.gif'),
     Exercise(id:19,title:'Frog Jump',photourl:'images/frogjump.jfif',gifurl: 'images/gif/frogjump.gif'),
     Exercise(id:20,title:'Pile Squat',photourl:'images/pilesquat.jpg',gifurl: 'images/gif/pilesquat.gif'),
  ];
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home exercises'),
        ),
       body:
       SafeArea(
                child: ListView.builder( 
           padding:  EdgeInsets.all(10.0),
           itemCount: names.length == 0 ? 0 :names.length,
           itemBuilder: (BuildContext context,int index)
           { 
              return ListTile(
                onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=>SecondRoute(data:names[index])),
                 );
               },
                 leading:  Image.asset('${names[index].photourl}',
                 height: 70.0,
                 width: 70.0,
                 ),
                 
               title:Text("${names[index].title}"),
               subtitle: Text("Exercise No: ${names[index].id}"),
               );
           }),
       )
      
    );
}
}





class SecondRoute extends StatelessWidget {

  final Exercise data;
SecondRoute({Key key,this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${data.id}.  ${data.title} exercise'),
      ),
      body: Column (
        children: <Widget>[
         Padding(padding: EdgeInsets.all(20.0)),
            Image.asset('${data.gifurl}',
            height:300.0,
            width: 600.0,
            ),
             SizedBox(height: 20),
            Text('  ${data.title} Exercise',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
        ]
          ),  
        );
  }
}