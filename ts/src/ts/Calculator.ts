interface ICalculatedTip {
    billAmount: number;
    tip: number;
    total: number;
}

class Calculator {
    private tipRate: number = 0;
    setRate(rate: number) {
        this.tipRate = rate;
    }
    calculate(billAmount: number) : ICalculatedTip {
        let tip = Math.round(billAmount / 100 * this.tipRate);
        return {
            billAmount: billAmount,
            tip: tip,
            total: (billAmount + tip)
        }
    }
}