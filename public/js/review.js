"use strict";

window.addEventListener("load", function() {

  var currentRestaurantId,
      reviewsArray,
      data,
      restaurantName,
      title,
      description,
      rating;

  function getId(location){
    return parseInt(location.pathname.split("/").pop())
  }

  function getRestaurantName() {
    $.get(`/restaurants/${currentRestaurantId}.json`, function(data) {
      restaurantName = data.name
      $("#content").prepend(`<h1>${restaurantName}</h1><br>`)
    })
  }

  function getReviews() {
    $.get(`/restaurants/${currentRestaurantId}/reviews`, function(data) {
      reviewsArray = data.reviews
      reviewsArray.forEach(function(review) {
        $("#reviewsList").append(`<li>${review.title}</li>`)
        $("#reviewsList").append(`<li>${review.description}</li><br>`)
      })
    })
  }

  function addNewReviewField() {
    $("#create").click(function (event) {
      event.preventDefault()
      title = $("#reviewTitle").val()
      description = $("#reviewDescription").val()
      rating = $("#reviewRating").val()
      $.post(`/restaurants/${currentRestaurantId}/reviews`, { title: `${title}`, description: `${description}`, rating: `${rating}`, restaurant: `${currentRestaurantId}`}, function() {
        document.getElementById("reviewsList").innerHTML = ""
        getReviews()
      })
    })
  }

  currentRestaurantId = getId(window.location);
  getRestaurantName()
  getReviews()
  addNewReviewField()
});
