# TIMESLOTS:
01.upto(31) do |d|
  8.upto(18) do |h|
    Timeslot.create(start_time: DateTime.strptime("03/#{d}/2016 #{h}:00", "%m/%d/%Y %H:%M"))
    Timeslot.create(start_time: DateTime.strptime("03/#{d}/2016 #{h}:30", "%m/%d/%Y %H:%M"))
  end
end

01.upto(30) do |d|
  8.upto(18) do |h|
    Timeslot.create(start_time: DateTime.strptime("04/#{d}/2016 #{h}:00", "%m/%d/%Y %H:%M"))
    Timeslot.create(start_time: DateTime.strptime("04/#{d}/2016 #{h}:30", "%m/%d/%Y %H:%M"))
  end
end

01.upto(31) do |d|
  8.upto(18) do |h|
    Timeslot.create(start_time: DateTime.strptime("05/#{d}/2016 #{h}:00", "%m/%d/%Y %H:%M"))
    Timeslot.create(start_time: DateTime.strptime("05/#{d}/2016 #{h}:30", "%m/%d/%Y %H:%M"))
  end
end

# RECRUITERS
Recruiter.create(id: 11, first_name: 'Son', last_name: "Trinh", email: "son@bullhorn.com", bullhorn_id: 5185260)
Recruiter.create(id: 12, first_name: 'Kristin', last_name: "Smith", email: "k.smith@bullhorn.com", bullhorn_id: 5449213)
Recruiter.create(id: 13, first_name: 'Leon', last_name: "Russo", email: "leon.russo@bullhorn.com")
Recruiter.create(id: 14, first_name: 'Melanie', last_name: "Mosquera", email: "mmosquera@bullhorn.com", bullhorn_id: 5323157)
Recruiter.create(id: 15, first_name: 'Chris', last_name: "Vasich", email: "cvasich@bullhorn.com")
Recruiter.create(id: 16, first_name: 'Dennis', last_name: "McQuilken", email: "dmcquilken@bullhorn.com")

# APPOINTMENTS
Timeslot.all.each do |t|
  if t.start_time.strftime("%H").include?("8" || "9")
    Appointment.create(recruiter_id: 11, timeslot_id: t.id)
  end
  # if t.start_time.strftime("%H").include?("9" || "10")
  #   Appointment.create(recruiter_id: 12, timeslot_id: t.id)
  # end
  # if t.start_time.strftime("%H").include?("11" || "12")
  #   Appointment.create(recruiter_id: 13, timeslot_id: t.id)
  # end
  # if t.start_time.strftime("%H").include?("13" || "14")
  #   Appointment.create(recruiter_id: 14, timeslot_id: t.id)
  # end
  # if t.start_time.strftime("%H").include?("15" || "16")
  #   Appointment.create(recruiter_id: 15, timeslot_id: t.id)
  # end
  # if t.start_time.strftime("%H").include?("17" || "18")
  #   Appointment.create(recruiter_id: 16, timeslot_id: t.id)
  # end
end

# CATEGORIES
Category.create(name: 'Clerical', image: 'clerical.png', bullhorn_id: 1472778)
Category.create(name: 'Accounting and Finance', image: 'finance.png', bullhorn_id: 1472765)
Category.create(name: 'Manufacturing', image: 'manufacturing.png', bullhorn_id: 1472805)
Category.create(name: 'Hospitality', image: 'hospitality.png', bullhorn_id: 1472801)
