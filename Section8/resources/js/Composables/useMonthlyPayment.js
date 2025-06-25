import { computed, isRef } from "vue";

export const useMonthlyPayment = (total, interest, duration) => {
    const monthlyPayment = computed(() => {
        const principal = isRef(total) ? total.value : total;
        const monthlyInterest =
            (isRef(interest) ? interest.value : interest) / 100 / 12;
        const numberOfMonths =
            (isRef(duration) ? duration.value : duration) * 12;

        if (!principal || !numberOfMonths) return 0;

        if (monthlyInterest === 0) {
            return principal / numberOfMonths;
        }

        return (
            (principal *
                monthlyInterest *
                Math.pow(1 + monthlyInterest, numberOfMonths)) /
            (Math.pow(1 + monthlyInterest, numberOfMonths) - 1)
        );
    });

    const totalPaid = computed(() => {
        const months = isRef(duration) ? duration.value * 12 : duration * 12;
        return monthlyPayment.value * months;
    });

    const totalInterest = computed(() => {
        const principal = isRef(total) ? total.value : total;
        return totalPaid.value - principal;
    });

    return { monthlyPayment, totalPaid, totalInterest };
};

export const usehighlow = (monthlyPayment) => {
    const highlow = computed(() => {
        return monthlyPayment.value > 10000 ? "text-red-500" : "";
    });
    return { highlow };
};
