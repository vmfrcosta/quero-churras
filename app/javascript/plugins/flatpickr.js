import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  enableTime: false,
  altInput: true,
  allowInput: true,
  confirmText: "OK ",
  confirmIcon: "<i class='fa fa-check'></i>", // your icon's html, if you wish to override
  confirmText: "OK ",
  showAlways: false,
  theme: "dark", // or "dark"
})



