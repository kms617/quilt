module ApplicationHelper

  def education_types_for_select
    ["No/Some High School", "GED", "HS Diploma", "Associate Degree", "College Degree"]
  end

  def languages_for_select
    ["English", "Spanish", "Portugese", "Mandarin", "Vietnamese"]
  end

  def work_types_for_select
    ["Temporary", "Full Time", "Both"]
  end

  def shifts_for_select
    ["Any", "Days Only", "Afternoons Only", "Midnights Only", "Days and Afternoons", "Afternoons and Nights", "Days and Nights"]
  end

  def admin_specialties
    Specialty.where(category_id: 1).map { |specialty| [specialty.name]}
  end

  def contact_specialties
    Specialty.where(category_id: 2).map { |specialty| [specialty.name]}
  end

  def industry_specialties
    Specialty.where(category_id: 3).map { |specialty| [specialty.name]}
  end

  def trade_specialties
    Specialty.where(category_id: 4).map { |specialty| [specialty.name]}
  end

  def specialties_for_select
    specialties = []
    admin = ['Administrative']
    admin << admin_specialties
    specialties << admin
    contacts = ['Contact Center']
    contacts << contact_specialties
    specialties << contacts
    industry = ["Industrial"]
    industry << industry_specialties
    specialties << industry
    skill = ["Skilled Trades"]
    skill << trade_specialties
    specialties << skill
    specialties
  end
end
