module ApplicationHelper

  def recruiters_for_select
    [['All Available', [11, 12, 14]], ['Son Trinh', 11], ['Kristin Smith', 12], ['Melanie Mosquera', 14]]
  end

  def genders_for_select
    [[nil, 'U'], ['Male', 'M'], ['Female', 'F']]
  end

  def disability_status_for_select
    [[nil, 'U'], ['I qualify as disabled.', 'Y'], ['I do not qualify as disabled.', 'N']]
  end

  def races_for_select
    [[nil, 'Unknown'], "Hispanic or Latino", "White (Not Hispanic or Latino)", "Black or African American (Not Hispanic or Latino)", "Native Hawaiian or Other Pacific Islander (Not Hispanic or Latino)", "Asian (Not Hispanic or Latino)", "American Indian or Alaska Native (Not Hispanic or Latino)", "Two or More Races (Not Hispanic or Latino)"]
  end

  def veteran_status_for_select
    [[nil, 'U'], ['I am a veteran of the US Armed Forces.', 'Y'], ['I am not a veteran,', 'N']]
  end
end
