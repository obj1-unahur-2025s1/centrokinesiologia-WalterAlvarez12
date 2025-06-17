class Paciente {
  var edad
  var fortalezaMuscular
  var  nivelDeDolor
  method fortalezaMusuclar() = fortalezaMuscular
  method nivelDeDolor() = nivelDeDolor
  method puedeUsar(unAparato) {
    return 
    unAparato.puedeSerUsadoPor(self)
  }
  method usar(unAparato) {
    if(!self.puedeUsar(unAparato)) {
      self.error("El paciente no puede usar el aparato")
    }
    unAparato.esUsadoPor(self)
  }
  method aumentarFortaleza(unValor) {
    fortalezaMuscular = fortalezaMuscular + unValor
  }

  method disminuirDolor(unValor) {
    nivelDeDolor = nivelDeDolor - unValor
  }
}

class Magneto {
  method esUsadoPor(unPaciente) {
    unPaciente.disminuirDolor(unPaciente.nivelDeDolor() * 0.1)
  }
  method puedeSerUsadoPor(unPaciente) {
    return true
  }
}

class Bicicleta {
   method esUsadoPor(unPaciente) {
    unPaciente.disminuirDolor(4)
    unPaciente.aumentarFortaleza(3)
   }
   method puedeSerUsadoPor(unPaciente) {
    return 
    unPaciente.edad() > 8
  }
}

class Minitramp {
   method esUsadoPor(unPaciente) {
    unPaciente.aumentarFortaleza(unPaciente.edad())
  }
  method puedeSerUsadoPor(unPaciente) {
    return 
    unPaciente.nivelDeDolor() < 20
  }
}
