// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import "flatpickr"

document.addEventListener("DOMContentLoaded", function() {
  flatpickr("#booking-start-date", {
    enableTime: true,
    dateFormat: "Y-m-d",
    minDate: "today",
  });

  flatpickr("#booking-end-date", {
    enableTime: true,
    dateFormat: "Y-m-d",
    minDate: "today",
  });

});
