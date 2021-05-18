import visuales.*

class Frutas inherits Visual{
	var property energia
	
	// implementacion comer fruta (ejemplo otro juego)  
	/*method colisionadoPor(personaje) {
		if (personaje.tieneEspatula()){ 
			personaje.agarrarIngrediente(self)
		 	score += 1
		 	personaje.cuantasMonedas()
	   }
	   else{
	      	game.say(personaje, "¡Me falta la espátula!")
	   }
 	nivel.ubicarAleatoriamente(self)
	}
	*/

}

class Frutilla inherits Frutas(image = "frutilla.png",energia = 20){
	
}
class Cereza inherits Frutas(image = "cereza.png",energia = 15){
	
}
class Manzana inherits Frutas(image = "manzana.png",energia = 10){
	
}



// ubicacion frutas aleatorias con colecciones
//[new Frutilla(),new Cereza(),new Manzana()].forEach { ing =>  
//			game.addVisual(ing)
//			self.ubicarAleatoriamente(ing) 
//		}
