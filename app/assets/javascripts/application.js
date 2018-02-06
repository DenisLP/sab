/*global $*/
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_self
//= require_tree .

$( document ).ready(function(jQuery) {
  
  function enablePrintDocuments() {
    auth1 = $('#auth_1').is(':checked');
    auth2 = $('#auth_2').is(':checked');
    auth3 = $('#auth_3').is(':checked');
    auth4 = $('#auth_4').is(':checked');
    auth5 = $('#auth_5').is(':checked');
    
    if(auth1 && auth2 && auth3 && auth5 && auth5) {
      $('#printDocumentsButtom').attr("disabled", false);
    } else {
      $('#printDocumentsButtom').attr("disabled", true);
    }
    console.log('a1: ' + auth1 + ', a2: ' + auth2);
  }
  
  chronos_wake_up();
  
  // Step 2 Show vehicle information
  $( "#car_selection" ).change(function() {
    $('#step2_vehicle_info').show();
    // setCarData('2017', 'Ferrari', 'enzo', 'v12', 'Deluxe');
  });
  
  
  //Sign - step 4
  var touchzone = document.getElementById("touchzone");
  touchzone.addEventListener("touchstart", touchHandler, false);

});

function touchHandler(event) {
var canvas;
      var ctx;
      var lastPt=null;
 
      function init() {
        var touchzone = document.getElementById("mycanvas");
        touchzone.addEventListener("touchmove", draw, false);
        touchzone.addEventListener("touchend", end, false);
        ctx = touchzone.getContext("2d");
      }
 
      function draw(e) {
        e.preventDefault();
        if(lastPt!=null) {
          ctx.beginPath();
          ctx.moveTo(lastPt.x, lastPt.y);
          ctx.lineTo(e.touches[0].pageX, e.touches[0].pageY);
          ctx.stroke();
        }
        lastPt = {x:e.touches[0].pageX, y:e.touches[0].pageY};
      }
 
      function end(e) {
        e.preventDefault();
        // Terminate touch path
        lastPt=null;
      }
}


function showCarFields() {
  $('#step2_vehicle_info').show();
}
function setCarData(year, make, model, engine, trim) {
  $('#vehicle_model').attr('value', model);
  $('#vehicle_year').attr('value', year);
  $('#vehicle_engine').attr('value', engine);
  $('#vehicle_make').attr('value', make);
  $('#vehicle_trim_code').attr('value', trim_code);
  console.log(year, make, model, engine, trim);
  
}

function upload_photo(name) {
  
 $.ajax({
  url: "ajax_php_file.php", // Url to which the request is send
  type: "POST",             // Type of request to be send, called as method
  data: new FormData(this), // Data sent to server, a set of key/value pairs (i.e. form fields and values)
  contentType: false,       // The content type used when sending data to the server.
  cache: false,             // To unable request pages to be cached
  processData:false,        // To send DOMDocument or non processed data file it is set to false
  success: function(data)   // A function to be called if request succeeds
  {
  $('#loading').hide();
  $("#message").html(data);
  }
  });
  
  
}

function dragstart_handler(ev) {
 console.log("dragStart");
 // Add the target element's id to the data transfer object
 ev.dataTransfer.dropEffect = "move";
  ev.dataTransfer.setData("text/plain", ev.target.id);
  ev.dataTransfer.setData("text/html", "<p>Example paragraph</p>");
  ev.dataTransfer.setData("text/uri-list", "http://developer.mozilla.org");
}

function dragover_handler(ev) {
 ev.preventDefault();
 // Set the dropEffect to move
 ev.dataTransfer.dropEffect = "move"
}
function drop_handler(ev) {
 ev.preventDefault();
 // Get the id of the target and add the moved element to the target's DOM
 var data = ev.dataTransfer.getData("text");
 ev.target.appendChild(document.getElementById(data));
}

function openVehicleModal(id, vin, model, year, make, job_number, trim_code, paint_code, primary_impact, impact_note, prior_damage_note, vehicle_status) {
  $('#id').attr('value', id);
  $('#vin').attr('value', vin);
  $('#model').attr('value', model);
  $('#year').attr('value', year);
  $('#make').attr('value', make);
  $('#job_number').attr('value', job_number);
  $('#trim_code').attr('value', trim_code);
  $('#paint_code').attr('value', paint_code);
  $('#primary_impact').attr('value', primary_impact);
  $('#impact_note').attr('placeholder', impact_note);
  $('#prior_damage_note').attr('placeholder', prior_damage_note);
  // $('#vehicle_status').attr('value', );
  $('#vehicle_modal').show();
}
function closeVehicleModal() {
  $('#vehicle_modal').hide();
}

function chronos_wake_up() {
  cars = $('.vehicle_missing_isle');
  var total = 0;
  for(i = 0; i < cars.length; i++) {
    $('#'+cars[i].children["vehicle_cell_status"].value).append(cars[i]);
    total = total + 1;
  }
  return total;
}

function acceptAllAuths() {
    document.getElementById("auth_1").checked = true;
    document.getElementById("auth_2").checked = true;
    document.getElementById("auth_3").checked = true;
    document.getElementById("auth_4").checked = true;
    document.getElementById("auth_5").checked = true;
    document.getElementsByClassName("btn_next").disabled = true;
}

function runAllRobots() {
    document.getElementById("script_1").checked = true;
    document.getElementById("script_2").checked = true;
    document.getElementById("script_3").checked = true;
    document.getElementById("script_4").checked = true;
    document.getElementById("script_5").checked = true;
    document.getElementsByClassName("btn_next").disabled = true;
}


function step2_show_vehicle_info() {
  alert('its working!');
}

function login() {
  console.log("Checking user...");
  console.log("Checking password...");
  console.log("User & Password matched!");
  console.log("Access authorized!");
  $('.customer_login').hide();
  
}