import "bootstrap";
import "../plugins/flatpickr";

const bookingTotal = document.getElementById('booking-total');
const input = document.getElementById('range_start');

input.addEventListener("click", event => {
  bookingTotal.classList.toggle('hidden');
})