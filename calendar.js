document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');
  var currentCategory = 'all';

  var calendar = new FullCalendar.Calendar(calendarEl, {
    initialView: 'dayGridMonth',
    themeSystem: 'standard',
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
    },
    events: 'https://slate-calendar-proxy.retention.workers.dev/',

    eventDidMount: function(info) {
      // Add ARIA label for each event (WCAG)
      info.el.setAttribute('aria-label', info.event.title + ' on ' + info.event.start.toLocaleDateString());
    },

    eventClick: function(info) {
      // Fill modal with event data
      document.getElementById('eventModalLabel').textContent = info.event.title;
      document.getElementById('eventModalDate').textContent = info.event.start.toLocaleString();
      document.getElementById('eventModalLocation').textContent = info.event.extendedProps.location || info.event.location || '';
      document.getElementById('eventModalDescription').textContent = info.event.extendedProps.description || info.event.description || '';
      document.getElementById('eventModalLink').href = info.event.url || '#';

      // Show modal
      var eventModal = new bootstrap.Modal(document.getElementById('eventModal'));
      eventModal.show();

      // Prevent default click behavior
      info.jsEvent.preventDefault();
    },

    eventFilter: function(event) {
      // Only show matching category
      if (currentCategory === 'all') {
        return true;
      }
      // Assuming "type" is in extendedProps or at root (adjust if needed)
      return event.extendedProps.type === currentCategory || event.type === currentCategory;
    }
  });

  calendar.render();

  // Handle category filter change
  document.getElementById('calendarCategoryFilter').addEventListener('change', function(e) {
    currentCategory = e.target.value;
    calendar.refetchEvents();
  });
});
