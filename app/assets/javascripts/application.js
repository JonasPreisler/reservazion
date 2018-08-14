// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require Chart.bundle
//= require chartkick
//= require jquery
//= require jquery_ujs
//= require jquery-ui/effect-highlight
//= require activestorage
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap/modal
//= require chosen-jquery
//= require picker
//= require picker.date
//= require picker.time
//= require_tree .


$().ready(function () {
  $('.datepicker').pickadate({
  	format: 'yyyy-mm-dd',
	monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    weekdaysShort: ['Lun', 'Mar', 'Miér', 'Jue', 'Vier', 'Sáb', 'Dom'],
    today: 'hoy',
  });
  $('.timepicker').pickatime({
  	format: 'HH:i',
  	min: [16,0],
	max: [22,0]
  })
});

// data attributes (my preference because it's explicit and flexible)
$('[data-target=my-form]')

// using jQuery's closest() method; "this" will refer to the radio button you clicked
$(this).closest(form)

// an ID or class
$("#my-form")
$(".my-form")


