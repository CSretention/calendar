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
    events: [
      {
        title: 'Example Event A',
        start: '2025-06-10'
      },
      {
        title: 'Example Event B',
        start: '2025-06-15T14:00:00'
      }
    ]
  });

  calendar.render();
});
