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
//= require jquery.mask.min
//= require_tree .

$(function(){
  $("#user_phone").mask('(00) 000000000');

  $(".button.facebook_share").click(function(event){
    window.open(
      $(event.target).attr("href"),
      'facebox-share-dialog',
      'width=626,height=436'
    );
    return false;
  });

  $(".button.twitter_share").click(function(event){
    window.open(
      $(event.target).attr("href"),
      'twitter-share-dialog',
      'width=626,height=436'
    );
    return false;
  });
});
