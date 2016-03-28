module ApplicationHelper

  def genders_for_select
    [nil, "Male", "Female", "Other"]
  end

  def disability_status_for_select
    [nil, "I qualify as disabled.", "I do not qualify as disabled."]
  end

  def races_for_select
    [nil, "Hispanic or Latino", "White (Not Hispanic or Latino)", "Black or African American (Not Hispanic or Latino)", "Native Hawaiian or Other Pacific Islander (Not Hispanic or Latino)", "Asian (Not Hispanic or Latino)", "American Indian or Alaska Native (Not Hispanic or Latino)", "Two or More Races (Not Hispanic or Latino)"]
  end

  def veteran_status_for_select
    [nil, "I am a veteran of the US Armed Forces", "I am not a veteran."]
  end
end
