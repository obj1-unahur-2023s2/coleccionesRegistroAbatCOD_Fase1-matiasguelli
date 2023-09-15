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
	
/*	method agregarAbatidosVariosDias(registroAbatidos){
		registroAbatidos.forEach{e => self.agregarAbatidosDia(e)}
	}
	 */
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
	
	method eliminarVariosRegistrosDeDias(listaDeDia){
		if(listaDeDia.all{x => self.yaEstaElDia(x)}){
			self.error("algun dia no esta incluido la lista")
		}
		listaDeDia.forEach{x => self.eliminarElRegistroDelDia(x)}
	}
	
	
	method cantidadDeDiasRegistrados() = registro.size()
	
	method estaVacioElRegistro() = registro.isEmpty() 

	method algunDiaAbatio(cantidad) = registro.any({r => self.cant(r) == cantidad})
	
	method primerValorDeAbatidos() = self.cant(registro.first())
	
	method ultimoValorDeAbatidos() = self.cant(registro.last())
	method maximoValorDeAbatidosBis() = self.cant(registro.max({ r=> self.cant(r)}))
	method maximoValorDeAbatidos() = registro.max({ r=> self.cant(r)}).first()
	method maximoValorConMap()= registro.map({ r=>self.cant(r)})
	method totalAbatidos() = registro.sum({r=> self.cant(r)})
	
	method cantidadDeAbatidosElDia(dia) = self.cant(self.registroDia(dia))
	method ultimoValorDeAbatidosConSize() = self.cant(registro.get(registro.size()-1))
	method esCrack() = (1..registro.size()-1).all({i=> self.cant(registro.get(i))> self.cant(registro.get(i-1))})
	
	
}