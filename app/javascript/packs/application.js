import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

const bookingTotal = document.getElementById('booking-total');
const input = document.getElementById('range_start');

input.addEventListener("click", event => {
  bookingTotal.classList.toggle('hidden');
})
