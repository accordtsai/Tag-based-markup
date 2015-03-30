namespace :fake do

  desc "generate fake datas"
  task "generate_fake_data" => :environment do
    user = User.create(email: "testaccount@gmail.com", password: "12345678")
    pl1 = user.patient_lists.create(
      name: "PatientList Fake #1",
      content: "content here"
    )
    pl2 = user.patient_lists.create(
      name: "PatientList Fake #2",
      content: "content here"
    )

    p1 = Patient.create(
      name: "Peter Wang",
      personal_data: "Personal Data Here",
      first_name: "Peter",
      last_name: "Wang"
    )

    p2 = Patient.create(
      name: "Harry Potter",
      personal_data: "Personal Data Here",
      first_name: "Harry",
      last_name: "Potter"
    )

    pl1.patients << p1
    pl1.patients << p2
    pl2.patients << p1

    e1 = p1.encounters.create(
      title: "Patient's First Encounter",
      signed_date: Time.now.to_date,
      content: "Content here, good patient."
    )

    e2 = p1.encounters.create(
      title: "Patient's Second Encounter",
      signed_date: Time.now.to_date,
      content: "Better and better."
    )

    t1 = user.tags.create(
      name: "Good"
    )

    t2 = user.tags.create(
      name: "Bad"
    )

    t3 = user.tags.create(
      name: "Headache"
    )

    e1.tags << t1
    e1.tags << t3
    e2.tags << t1

  end

end