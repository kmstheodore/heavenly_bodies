// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

window.addEventListener('scroll', function() {
	var element = document.querySelector('#odometer');
	var position = element.getBoundingClientRect();

	// checking whether fully visible
	if(position.top >= 0 && position.bottom <= window.innerHeight) {
		console.log('Element is fully visible in screen');
    odometer.innerHTML = 100000000000;
	} else {
    element.innerHTML = 0;
  }
});
