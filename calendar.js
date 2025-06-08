document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    initialView: 'dayGridMonth',
    themeSystem: 'bootstrap5',
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
    },
    events: 'https://slate.clarkstate.edu/portal/calendar-feed.json',
    
    eventClick: function(info) {
      // Set modal content:
      document.getElementById('eventModalLabel').textContent = info.event.title;
      document.getElementById('eventDescription').textContent = info.event.extendedProps.description || '';
      document.getElementById('eventLocation').textContent = info.event.extendedProps.location ? 'Location: ' + info.event.extendedProps.location : '';
      document.getElementById('eventTime').textContent = 
        'Start: ' + info.event.start.toLocaleString() + 
        (info.event.end ? ' | End: ' + info.event.end.toLocaleString() : '');
      document.getElementById('eventLink').href = info.event.extendedProps.url || '#';

      // Show modal:
      var eventModal = new bootstrap.Modal(document.getElementById('eventModal'));
      eventModal.show();

      // Prevent default browser nav:
      info.jsEvent.preventDefault();
    }

  });

  calendar.render();
});
