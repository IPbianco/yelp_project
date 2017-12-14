"use strict";

window.addEventListener("load", function() {

  var currentRestaurantId
  var request
  var data
  var contentDiv

  function getId(location){
    return parseInt(location.pathname.split("/").pop())
  }

  function getReviews(){
    request = new XMLHttpRequest();
    request.onreadystatechange = function() {
      if (request.readyState == 4 && request.status == 200) {
        data = JSON.parse(request.response).reviews;
        console.log(data)
        data.forEach(function(review) {
          contentDiv.innerHTML += review.title
        })
      }
    }
    request.open("GET", `/restaurants/${currentRestaurantId}/reviews`, true)
    request.send(null);
  }

  currentRestaurantId = getId(window.location);
  contentDiv = document.getElementById("content");
  getReviews()
});
