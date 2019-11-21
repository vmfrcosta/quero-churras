
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

	console.log(checkIn)
	console.log(checkOut)
	console.log(address)
	console.log(submitBtn)
	console.log(price)
	console.log(modalCheckIn)
	console.log(modalCheckOut)
	console.log(modalAddress)
	console.log(modalPrice)

	submitBtn.addEventListener('click', (event) => {
		event.preventDefault()
		modalCheckIn.innerText = checkIn.value
		modalCheckOut.innerText = checkOut.value
		modalAddress.innerText = address.value
		modalPrice.innerText = parseInt(price.innerText, 10) * ((new Date(checkOut.value) - new Date(checkIn.value)) / (60000 * 1440)) 
	})
}


export { submitBooking }