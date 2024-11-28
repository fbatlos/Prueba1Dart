
/*

1º Estás desarrollando una aplicación para gestionar géneros musicales favoritos. El
usuario puede añadir géneros a su lista, pero hay restricciones. Primero, no puede
añadir géneros duplicados. Segundo, el usuario solo puede tener un máximo de 5
géneros favoritos. Si intenta añadir un sexto género, se debe mostrar un mensaje de
error
 */

import 'dart:ffi';

class Playlist{

  Set<String> favoritePlaylist = {};

   String addSongs(String newSongs){

    if(favoritePlaylist.length < 5){
        favoritePlaylist.add(newSongs);
        return "Se ha añadido con exito.";
    }else{
      return "Ya tienes 5 canciones ";
    }
  }
}

/*
Estás desarrollando una aplicación básica de tareas donde los usuarios pueden
agregar y ver tareas que necesitan hacer. La lista de tareas se muestra de forma
secuencial y el usuario puede verlas en el orden en que las agregó.
 */

class Tareas{

  List<String> listaTareas = [];

  String addTarea(String tarea){
    listaTareas.add(tarea);
    return "Se añadió una tarea";
  }

  void showTareas(){
    listaTareas.forEach(print);
  }


}

/*
Estás desarrollando una aplicación sencilla para gestionar las calificaciones de los
estudiantes. Para cada estudiante, se almacena su nombre y la calificación que ha
obtenido.
 */

class ManagerNotes{

  Map<String,double> calificaiones = {};

  String addNota(String estudiante, double nota){

    if(nota < 0 || nota > 10 ){
      return "La nota no es valida";
    }

    if(estudiante.isEmpty){
      return "Es necesario un estudiante";
    }

    calificaiones[estudiante] = nota;

    return "La nota de $estudiante se ha guardado correctamente.";
  }

  void showCalificaciones(){

    calificaiones.forEach((key, value) {
      print('Estudiante: $key, Calificación: $value');
    });
  }

}


void main(){

    print("Act 1 --------------------------------------");
    //Act1 prueba
    var playlist = new Playlist();
    for(var i = 0; i <7 ; i++){
        print(playlist.addSongs("$i"));
    }


    print("Act 2 --------------------------------------");
    //Act2
    var tareas = new Tareas();
    tareas.addTarea("Hacer ADA");
    tareas.addTarea("Hacer PDM");
    tareas.addTarea("Aprender Dart");

    tareas.showTareas();


    print("Act 3 --------------------------------------");
    //Act2
    var calificaciones = new ManagerNotes();


    print(calificaciones.addNota("Paco", 10.0));
    print(calificaciones.addNota("", 1.0));//nombre vacio
    print(calificaciones.addNota("Pepe", 100.0));//No es valido por la nota
    print(calificaciones.addNota("Pepe", 7.0));

    calificaciones.showCalificaciones();




}