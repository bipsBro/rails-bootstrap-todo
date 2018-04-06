//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $('.has-tooltip').tooltip();
});
$(document).ready(function() {
  $('.has-tooltip').tooltip();
  $('.has-popover').popover({
    trigger: 'hover'
  });
});
