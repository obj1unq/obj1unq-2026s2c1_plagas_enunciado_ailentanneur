object hogar{
    var property nivelDeMugre = 0
    var property confort = 0

    method esBuena(){
       return (confort / 2) >= nivelDeMugre

    }


}object huerta{
    var property capacidad = 0
    var property nivelDeProduccion = 0
    method esBuena(){
        return capacidad > nivelDeProduccion
    }
    
}
object mascota{
    var property  nivelDeSalud = 0
    method esBuena(){
        return nivelDeSalud > 250 
    }    

}
object barrio{
    const  elementos = []

    method elementos(){
        return elementos
    }

    method agregarElemento(unElemento){
        elementos.add(unElemento)
    }
    method esCopado(){
    return elementos.count({elemento => elemento.esBuena()}) > 
           elementos.count({elemento => !elemento.esBuena()})
}

}