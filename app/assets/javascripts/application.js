//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker
//= require pickers
//= require underscore
//= require gmaps/google
//= require_tree .

$(function() {

  $('.slider').sss({
    slideShow : true,
    startOn : 0,
    speed : 4500,
    transition : 400,
    arrows : true
  });
});
