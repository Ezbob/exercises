include "../common.iol"

execution { 
	concurrent 
}

inputPort CalcInput {
	Location: "socket://localhost:11002/"
	Protocol: sodep
	Interfaces: CalcIface
}

main {
	sumFunc(requestNumbers)(result) { 
		foreach ( number : requestNumbers.numbers ) {
			result += number
		}	
	}
}
		