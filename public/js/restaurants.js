$(document).ready(function() {
  console.log('test')


  restaurantsGet()

  function restaurantsGet() {
    var index = 1
    $.get('http://localhost:3000/restaurants', function(data){
      console.log(data);
      data.forEach(function(element) {
      eachRestaurant(element, index)
      index++;
      });
   });
  }

  function eachRestaurant(element, index) {
    var container = index
    $('#restaurants').append("<div id="+container+" class='container' style='margin-top: 20;'</div>");
    // $("#"+container).append("<div class=</div>")
    $("#"+container).append("<div class='image'><img style='width:240px; height:160px;border-radius:10px' src= "+ element.images['source']['url'] +"/></div>")
    $("#"+container).append("<div class='name'>" + element.name + "</div>")
    $("#"+container).append("<div class='description'>" + element.description + "</div>")
    $("#"+container).append(`<form class='moreInfo' action='/restaurants/${element.id}' method='get'><button type='submit' value="Submit">More Info</button></form>`)

  };
  });
