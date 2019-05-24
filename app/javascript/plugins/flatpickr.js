import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#range_start", {
    mode: "range",
    onClose: function(selectedDates, dateStr, instance) {
    	const numberDays = (selectedDates[1] - selectedDates[0])/60/60/24/1000;
    	const priceStr = document.querySelector('t').innerHTML;
    	const price = Number.parseInt(priceStr)
    	
    	const bookingTotal = document.getElementById('booking-total');

    	bookingTotal.insertAdjacentHTML('beforeend', `<p>Nbr of days: ${numberDays} </p>`);
    	bookingTotal.insertAdjacentHTML('beforeend', `<p>Total Price: ${numberDays * price} </p>`);
    }
})


