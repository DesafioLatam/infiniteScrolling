# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $(window).scroll ->
    url = $("#view-more").attr('href')
    if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50)
      $("#view-more").attr('href', '')
      $.getScript url