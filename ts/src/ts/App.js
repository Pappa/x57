/// <reference path="Calculator.ts"/>
var App = (function () {
    function App(tipRateInput, billAmountInput, output) {
        this.calc = new Calculator();
        this.tipRateInput = tipRateInput;
        this.billAmountInput = billAmountInput;
        this.output = output;
    }
    App.prototype.update = function () {
        this.calc.setRate(parseInt(this.tipRateInput.value, 10));
    };
    App.prototype.calculate = function () {
        var calculated = this.calc.calculate(parseInt(this.billAmountInput.value, 10));
        this.output.textContent = JSON.stringify(calculated);
    };
    return App;
}());
//# sourceMappingURL=App.js.map