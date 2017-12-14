"use strict";

window.addEventListener("load", function() {

  function getId(location){
    return parseInt(location.pathname.split("/").pop())
  }

  var currentRestaurantId = getId(window.location);

  function getReviews(){
    var request = new XMLHttpRequest();
    request.onreadystatechange = function() {

      if (request.readyState == 4 && request.status == 200) {
        var data = JSON.parse(request.response).reviews;
        console.log(data);
      }
    }
    request.open("GET", `/restaurants/${currentRestaurantId}/reviews`, true)
     request.send(null);
  }
  getReviews()
});
