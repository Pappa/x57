var Calculator = (function () {
    function Calculator() {
        this.tipRate = 0;
    }
    Calculator.prototype.setRate = function (rate) {
        this.tipRate = rate;
    };
    Calculator.prototype.calculate = function (billAmount) {
        var tip = Math.round(billAmount / 100 * this.tipRate);
        return {
            billAmount: billAmount,
            tip: tip,
            total: (billAmount + tip)
        };
    };
    return Calculator;
}());
//# sourceMappingURL=Calculator.js.map