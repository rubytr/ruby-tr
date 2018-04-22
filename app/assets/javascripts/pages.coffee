# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  events = $('aside #events')

  $(window).on 'load', () =>
    $.ajax
      url: '/events.json'
      method: 'GET',
      contentType: 'application/json',
      success: (res) =>
        if res.length
          $.each res, (index, event) =>
            events.find('ul').append '<li><a href="'+event.link+'" target="_blank">'+event.name+'</a></li>'

          events.css { display: 'block' }
