
const submitBooking = () => {

	const checkIn = document.querySelector('#booking_check_in')
	const checkOut = document.querySelector('#booking_check_out')
	const address = document.querySelector('#booking_address')
	const price = document.querySelector('#price')
	const submitBtn = document.querySelector('#submit-booking')
	const modalCheckIn = document.querySelector('#modal-check-in')
	const modalCheckOut = document.querySelector('#modal-check-out')
	const modalAddress = document.querySelector('#modal-address')
	const modalPrice = document.querySelector('#modal-price')

	submitBtn.addEventListener('click', (event) => {
		event.preventDefault()
		modalCheckIn.innerText = checkIn.value.split(" ")[0].split('-').reverse().join("-")
		modalCheckOut.innerText = checkIn.value.split(" ")[2].split('-').reverse().join("-")
		modalAddress.innerText = address.value
		modalPrice.innerText = "R$ " + parseInt(price.innerText, 10) * ((new Date(checkIn.value.split(" ")[2]) - new Date(checkIn.value.split(" ")[0])) / (60000 * 1440)) 
	})
}


export { submitBooking }