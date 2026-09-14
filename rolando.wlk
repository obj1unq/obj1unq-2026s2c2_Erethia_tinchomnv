object rolando {
    var espacioDisponibleMochila = 3
    var poderBase = 5
    const mochila = #{}
    const objetosEncontrados = []

    method encontrar(objeto) {
        objetosEncontrados.add(objeto)
    }

    method recolectar(objeto) {
        self.validarEspacioMochila(espacioDisponibleMochila)

        mochila.add(objeto)
    }

    method encontrarYRecolectarObjeto(objeto) {
        self.encontrar(objeto)
        self.recolectar(objeto)
    }

    method validarEspacioMochila(_espacioDisponibleMochila) {
        if (mochila.size() >= _espacioDisponibleMochila) {
            self.error("Espacio insuficiente en la mochila")
        }
    }

    method asignarEspacioAMochila(espacio) {
        espacioDisponibleMochila = espacio
    }

    method contenidoMochila() {
        return(mochila)
    }

    method llegaAlCastillo() {
        mochila.forEach({artefacto => castillo.almacenarArtefacto(artefacto)})
        mochila.clear()
    }

    method tieneEnMochila(_artefacto) {
        return mochila.contains(_artefacto)
    }

    method posesiones(){
        return (self.contenidoMochila() + castillo.artefactosAlmacenados() )
    }

    method objetosEncontrados() {
        return (objetosEncontrados)
    }

    method asignarPoderBase(poder) {
        poderBase = poder
    }

    method poderBase() {
        return (poderBase)
    }

    method poderDePelea() {
        return ( poderBase + mochila.sum({artefacto => artefacto.poderQueAporta(self)}) )
    }

    method pelearBatalla() {
        mochila.forEach({artefacto => artefacto.usar()})
        poderBase += 1
    }
}

object castillo {
    const artefactosAlmacenados = []

    method almacenarArtefacto(artefacto) {
        artefactosAlmacenados.add(artefacto)
    }

    method artefactosAlmacenados() {
        return (artefactosAlmacenados)
    }

    method tieneEnAlmacen(_artefacto) {
        return artefactosAlmacenados.contains(_artefacto)
    }
}

object erethia {
  
}

// -- Artefactos -- 
object espadaDelDestino {
    var fueUsada = false

    method usar() {
        fueUsada = true
    }

    method poderQueAporta(personaje) {
        if (fueUsada) {
            return personaje.poderBase() * 0.5
        } else {
            return personaje.poderBase()
        }
    }
}

object libroDeHechizos {

}

object collarDivino {
    var vecesUtilizado = 0

    method usar() {
        vecesUtilizado += 1
    }

    method poderQueAporta(personaje) {
        return if( personaje.poderBase() > 6 ){
            3 + vecesUtilizado
        } else {
            3
        }
    }   
}

object armaduraDeAceroValyrio {
    method usar() { 
    }

    method poderQueAporta(personaje) {
        return (6)
    }
}