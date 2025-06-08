document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    initialView: 'dayGridMonth',
    themeSystem: 'standard',
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
    },
    events: 'https://slate-calendar-proxy.retention.workers.dev/',

    eventClick: function(info) {
      // Fill modal with event data
      document.getElementById('eventModalLabel').textContent = info.event.title;
      document.getElementById('eventModalDate').textContent = info.event.start.toLocaleString();
      document.getElementById('eventModalLocation').textContent = info.event.extendedProps.location || '';
      document.getElementById('eventModalDescription').textContent = info.event.extendedProps.info || '';
      document.getElementById('eventModalLink').href = info.event.url || '#';

      // Show modal
      var eventModal = new bootstrap.Modal(document.getElementById('eventModal'));
      eventModal.show();

      // Prevent default click behavior
      info.jsEvent.preventDefault();
    }
  });

  calendar.render();
});
