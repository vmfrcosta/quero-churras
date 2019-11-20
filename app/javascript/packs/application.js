import "bootstrap";
import "../plugins/flatpickr"

const submitBooking = document.querySelector('#submit-booking')

submitBooking.addEventListener('click', (event) => {
	event.preventDefault()
})

console.log(submitBooking)
