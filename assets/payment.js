

class Payment {

    init(options) {
        this.rzp = new Razorpay(options);
    }

    open() {
        this.rzp.open();
    }


};


