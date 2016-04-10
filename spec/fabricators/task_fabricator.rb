Fabricator(:task) do

  name {Faker::Name.name}
  finished {false}

end