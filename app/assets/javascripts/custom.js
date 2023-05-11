// app/assets/javascripts/custom.js

// Custom JavaScript
document.addEventListener('DOMContentLoaded', function() {
  // Initialize Bootstrap Carousel
  const carousel = new bootstrap.Carousel(document.querySelector('.carousel'), {
    interval: 5000, // Set the interval (in milliseconds) for auto-sliding
    wrap: true, // Enable looping of carousel items
    pause: 'hover' // Pause the carousel on mouse hover
  });
});
