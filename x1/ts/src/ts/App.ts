/// <reference path="Calculator.ts"/>

class App {
    calc: Calculator = new Calculator();
    private tipRateInput: HTMLInputElement;
    private billAmountInput: HTMLInputElement;
    private output: HTMLTextAreaElement;

    constructor(tipRateInput: HTMLInputElement, billAmountInput: HTMLInputElement, output: HTMLTextAreaElement) {
        
        this.tipRateInput = tipRateInput;
        this.billAmountInput = billAmountInput;
        this.output = output;
        
    }

    update() : void {
        this.calc.setRate(parseInt(this.tipRateInput.value, 10));
    }

    calculate() : void {
        var calculated: ICalculatedTip = this.calc.calculate(parseInt(this.billAmountInput.value, 10));
        this.output.textContent = JSON.stringify(calculated);
    }

}