Course.destroy_all

Course.create(title: 'JavaScript', description: 'The course will teach you what are closures, IIFEs, Prototypal inheritances, etc. It will also help you to debug your project from your own home. You will be able to understand the source code of frameworks in JavaScript and build your own JavaScript library or framework.', instructor_name: 'James Smith', image: 'https://images.unsplash.com/photo-1579468118864-1b9ea3c0db4a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYzNzc0NTI5NQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300')

Course.create(title: 'Node.js Masterclass', description: 'You need to master these platforms first before you can take a turn to become a professional Node developer. Node is a vast field and you can expect to face a lot of challenges. Courses on Node.js will help you jump over these obstacles and hone your skills in Node.js.', instructor_name: 'Anne Taylor', image: 'https://images.unsplash.com/photo-1627398242454-45a1465c2479?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYzMzM3Mzk5NA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300')

Course.create(title: 'React and Redux', description: 'Redux and React are two major areas that any app developer should put their emphasis on. If you are someone who wants to make your own app or want to work for a company and build an app, then make Redux and React your friends.', instructor_name: 'Robert Williamson', image: 'https://images.unsplash.com/photo-1581276879432-15e50529f34b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxfDB8MXxhbGx8fHx8fHx8fA&ixlib=rb-1.2.1&q=80&w=300&utm_source=unsplash_source&utm_medium=referral&utm_campaign=api-credit')

3.times do
  User.create!(
    username: Faker::Name.unique.name
  )
end
  
puts "Seed finished"
puts "#{Course.count} courses created"
puts "#{User.count} users created"