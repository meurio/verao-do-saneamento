// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require foundation
//= require jquery.mask.min
//= require_tree .

$(function(){
  $(document).foundation();
  $("#user_phone").mask('(00) 000000000');

  $('a.facebook_button, a.twitter_button').click(function(event, target){
    event.preventDefault();
    var obj = $(event.target);
    var url = null;
    url = obj.attr('href');
    if (url == undefined) {
      url = obj.parent('a').attr('href');
    }
    window.open(url, '', 'width=600,height=300');
  });
});
