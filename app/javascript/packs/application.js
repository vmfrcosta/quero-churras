import "bootstrap";
import "../plugins/flatpickr"
import { submitBooking } from '../components/modal'
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

submitBooking();
initMapbox();
