type HelloRequest:void {
  .person[1,5]:void {
    .name:string
    .age:int
  }
  .sponsor:string
}

type sumRequest:void {
	.numbers[1,*]:int
}

interface HelloIface {
RequestResponse:
  hello(HelloRequest)(string)
}

interface CalcIface {
RequestResponse: 
	sumFunc(sumRequest)(int)
}
