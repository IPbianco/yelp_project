$(document).ready(function() {
  console.log('test')


  restaurantsGet()

  function restaurantsGet() {
    var index = 1
    $.get('http://localhost:3000/restaurants', function(data){
      data.forEach(function(element) {
      eachRestaurant(element, index)
      index++;
      });
   });
  }

  // function eachRestaurant(element, index) {
  //   var container = index
  //   $('#restaurants').append("<div id="+container+" class='container' style='margin-top: 20;'</div>");
  //   // $("#"+container).append("<div class=</div>")
  //   $("#"+container).append("<div class='image'><img style='width:240px; height:160px;border-radius:10px' src= "+ element['images']['source']['source']['url'] +"/><</div>")
  //   $("#"+container).append("<div class='name'>" + element.name + "</div>")
  //   // $("#"+container).append("<div class='location test'><b href=\"#\">" + element.location + "</b></div>")
  //   // $("#"+container).append("<div class='price'><c href=\"#\">" + "£" + element.price + "</c></div>")
  //   // $("#"+container).append("<div class='capacity'><d href=\"#\">" + "Guests: "+ element.capacity + "</d></div>")
  //   // $("#"+container).append("<form class='rentalButton' action='/rental/save' method='post'><e href=\"#\"><button id='more-info"+element.id+"' type='submit' class='button' name='id' value="+element.id+" class='rental_id'>More Info</button></e></form>")
  //
  // };
  });
