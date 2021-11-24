Course.destroy_all

Course.create(title: 'JavaScript', description: 'The course will teach you what are closures, IIFEs, Prototypal inheritances, etc. It will also help you to debug your project from your own home. You will be able to understand the source code of frameworks in JavaScript and build your own JavaScript library or framework.', instructor_name: 'James Smith', image: 'https://drive.google.com/file/d/1gO2lVDrB2GJP6LrEeWV5l76J54ZJVIa7/view?usp=sharing')

Course.create(title: 'Node.js Masterclass', description: 'You need to master these platforms first before you can take a turn to become a professional Node developer. Node is a vast field and you can expect to face a lot of challenges. Courses on Node.js will help you jump over these obstacles and hone your skills in Node.js.', instructor_name: 'Anne Taylor', image: 'https://drive.google.com/file/d/1pg2Y4kCJnB5SeOfphcXzBYeICfBGIUhC/view?usp=sharing')

Course.create(title: 'React and Redux', description: 'Redux and React are two major areas that any app developer should put their emphasis on. If you are someone who wants to make your own app or want to work for a company and build an app, then make Redux and React your friends.', instructor_name: 'Robert Williamson', image: 'https://drive.google.com/file/d/15xF_L1xgXGkFys8gJ0aia4RVmTFiWaUu/view?usp=sharing')

3.times do
  User.create!(
    username: Faker::Name.unique.name
  )
end
  
puts "Seed finished"
puts "#{Course.count} courses created"
puts "#{User.count} users created"