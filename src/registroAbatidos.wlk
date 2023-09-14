object reg {
	const registro = []
	
/* 	const abatidos = []
	const dias = []
*/	
	method  agregarAbatidosDia(cantidad, dia){
		if(self.yaEstaElDia(dia)){
			self.error("ya existe el dia")
			}
		registro.add ([cantidad,dia])
	}
	
	method agregarAbatidosVariosDias(registroAbatidos){
		registro.addAll(registroAbatidos)
	}
	
	method dia(reg) = reg.get(1)
	
	method cant(reg) = reg.first()
	
	method yaEstaElDia(dia) = registro.any ({r => self.dia(r) == dia})
	
	method registroDia(dia) = registro.find({r=> self.dia(r) == dia})
	
	method eliminarElRegistroDelDia(dia){
		if(!self.yaEstaElDia(dia)){
			self.error("el dia no esta en la lista")
		}
		registro.remove(self.registroDia(dia))
	}
	
	
	
	
/*	method cantidadDeDiasRegistrados() = dias.size()
	
	method estaVacioElRegistro() = abatidos.isEmpty() && dias.isEmpty()
	
	method algunDiaAbatio(cantidad) = abatidos.any({a => a == cantidad})
	
	method primerValorDeAbatidos() = abatidos.first()
	
	method ultimoValorDeAbatidos() = abatidos.last()
	
	method maximoValorDeAbatidos() = abatidos.max()
	
	method totalAbatidos() = abatidos.sum()
	
	method cantidadDeAbatidosElDia(dia){
		
	}
	 */
	
	
}