//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require moment
//= require fullcalendar
//= require lettering
//= require_self

var startTheParty = function() {
  console.log('it works!');
  window.setTimeout(function(){
    $('#hello').modal('show');
  }, 1500);
};

var loadEvents = function() {
  $.getJSON('/events', function(events) {
    $('#calendar').fullCalendar({
      events: events,
      header: {
        left: 'prev',
        center: 'title',
        right: 'next'
      },
      dayClick: function(date, jsEvent, view) {
        var today = date.format('MMM Do YY');
        $('#hello .modal-dialog .modal-content .modal-body p').replaceWith('<p>Today is '+today+'</p>');
        $('#hello').modal('show');
      }
    });
  });
};

$(function() {
  loadEvents();

  $(document).on('click', '#restaurants a.btn', function() {
    var $link = $(this);
    var url = $link.attr('href');
    $.getJSON(url, function(noms) {
      $(noms).each(function(index, nom) {
        $link.after('<p>' + nom.name + '</p>');
      });
    });
    return false;
  });

  // $.getJSON('/places', function(data) {
  //   console.log(data);
  // });
  //
  $.getJSON('/restaurants', function(restaurants) {
    $(restaurants).each(function(index, restaurant) {
      console.log(restaurant);
      $('#restaurants').append('<a href="/restaurants/'+restaurant.id+'/noms" class="btn btn-sm btn-info">' + restaurant.name + '</a>');
    });
  });

  // makes the modal event form ajax
  // var $form = $('form#new_event');
  //
  // $('input.btn', $form).click(function() {
  //   $.post($form.attr('action'), $form.serialize(), function(data) {
  //     console.log(data);
  //     console.log('Event created');
  //     $('#create-event').modal('hide');
  //     $('#calendar').html('');
  //     loadEvents();
  //   });
  //   return false;
  // });
});
