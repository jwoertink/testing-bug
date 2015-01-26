directory = Directory.create(name: 'Lobby', last_contacted_at: Time.current)

## Simulate Appointment waiting

appt = Appointment.create(
  summary: 'Scheduled Appointment',
  start_date: Time.current,
  end_date: Time.current
)
av = AppointmentVisitor.create(
  appointment_id: appt.id,
  firstname: 'Billy',
  lastname: 'Test'
)
