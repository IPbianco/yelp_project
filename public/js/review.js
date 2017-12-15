"use strict";

window.addEventListener("load", function() {

  var currentRestaurantId
  var request
  var data
  var contentDiv

  function getId(location){
    return parseInt(location.pathname.split("/").pop())
  }

  function getReviews() {
    $.get(`/restaurants/${currentRestaurantId}/reviews`, function(data) {
      console.log(data)
    })
  }

  currentRestaurantId = getId(window.location);
  contentDiv = document.getElementById("content");
  getReviews()
});
