object rolando {
    var espacioDisponibleMochila = 2
    const mochila = #{}

    method recolectar(objeto) {
        self.validarEspacioMochila(espacioDisponibleMochila)

        mochila.add(objeto)
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

}

object castillo {
    const artefactosAlmacenados = []

    method almacenarArtefacto(artefacto) {
        artefactosAlmacenados.add(artefacto)
    }

    method artefactosAlmacenados(_artefactosAlmacenados) {
        return (artefactosAlmacenados)
    }

    method tieneEnAlmacen(_artefacto) {
        return artefactosAlmacenados.contains(_artefacto)
    }
}

// -- Artefactos -- 
object espadaDelDestino {
    
}

object libroDeHechizos {

}

object collarDivino {
  
}

object armaduraDeAceroValyrio {
  
}