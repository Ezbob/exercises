include "../common.iol"

execution { 
	concurrent 
}

inputPort CalcInput {
	Location: "socket://localhost:8002/"
	Protocol: sodep
	Interfaces: CalcIface
}

main {
	sum(requestNumbers)(result) { 
		for ( i = 0, i < #requestNumbers.numbers, ++i ) {
			result += requestNumbers.numbers[i]
		}	
	}
}
