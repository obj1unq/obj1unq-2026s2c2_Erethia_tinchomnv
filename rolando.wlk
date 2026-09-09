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

    method verContenidoMochila() {
        return(mochila)
    }

    method llegaAlCastillo() {
        mochila.forEach({artefacto => castillo.almacenarArtefacto(artefacto)})
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