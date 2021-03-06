include "common.iol"

execution { concurrent }

inputPort HelloInput {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: HelloIface
}

outputPort CalcOut {
Location: "socket://localhost:8002/"
Protocol: sodep
Interfaces: CalcIface
}

main {
	hello( team )( response ) {
		for (i = 0, i < #team.person, ++i) {
		  	sumIn.numbers[i] = team.person[i].age
		};
		sum@CalcOut(sumIn)(ageSum);
		response = "The total age of the team is " + ageSum
	}
}
