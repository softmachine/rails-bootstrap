# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
    $('body').bind 'click', ->
      $('.dropdown-toggle, .menu').parent("li").removeClass("open");

    $(".dropdown-toggle, .menu").click ->
        li = $(this).parent("li").toggleClass('open');
        return false;

    jQuery(top).trigger('initialize:frame');

    $(window).bind 'mercury:saved', ->
      window.location = window.location.href.replace(/\/editor\//i, '/');


