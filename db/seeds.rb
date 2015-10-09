require 'ffaker'

ga = Bootcamp.create(name: 'General Assembly - SF', email: 'sf@generalassemb.ly', phone: '+1 (415) 592-6885', url: 'https://generalassemb.ly/san-francisco', photo: 'http://static1.squarespace.com/static/522d5bfee4b090a2d482afb3/t/53eac34be4b0a70179a4fee6/1407894347951/General+Assembly+Logo', address: '5th Floor, 225 Bush St, San Francisco, CA 94104', information: 'General Assembly is a global network of campuses for technology, business, and design. General Assembly offers many different ways to learn important skills taught by top practitioners with real-world experience.', faq: 'https://generalassemb.ly/faq', courses: 'Web Development Immersive| User Expereience Design Immersive| Product Management Immersive| Back End Web Development| Visual Design| Data Science| Front End Web Development| Digital Marketing| Mobile Development')

hr = Bootcamp.create(name: 'Hack Reactor', email: 'admissions@hackreactor.com', phone: '+1 (415) 547-0254', url: 'http://www.hackreactor.com/', photo: 'http://code-ninja.co/images/blog/Hack-Reactor-Blog.png', address: '944 Market St #8, San Francisco, CA 94102', information: 'You’ll begin Hack Reactor with a feeling of excitement and anticipation. Twelve weeks later, you’ll follow the footsteps of our trailblazing alumni, taking the methodologies and best practices you perfected at our coding bootcamp to your next job. We’ve built world class software engineering curriculum and programming courses. However, Hack Reactor is, above all else, a world-class learning environment.', faq: 'http://www.hackreactor.com/questions', courses: 'Full Stack Web Development')

answer = ['Employed', 'Not Employed', 'Still Attending', 'Not Looking']

worth = ['Yes', 'No']

bc = [ga, hr]




100.times do
  user = User.create(
    username: FFaker::Internet::user_name,
    email: FFaker::Internet::email,
    password: "password"
  )

  review = BootcampReview.create(content: FFaker::HipsterIpsum::paragraph, campus: rand(7 .. 10), worthit: worth[rand(0 .. 1)], location: rand(4 .. 7), jobhelp: rand(5 .. 10), hired: answer[rand(0 .. 3)])

  user.bootcamp_reviews << review
  bc[rand(0 .. 1)].bootcamp_reviews << review

end

100.times do
  user = User.create(
    username: FFaker::Internet::user_name,
    email: FFaker::Internet::email,
    password: "password"
  )

  review = BootcampReview.create(content: FFaker::HipsterIpsum::paragraph, campus: rand(6 .. 9), worthit: worth[rand(0 .. 1)], location: rand(3 .. 6), jobhelp: rand(5 .. 9), hired: answer[rand(0 .. 3)])

  user.bootcamp_reviews << review
  bc[1].bootcamp_reviews << review

end

100.times do
  user = User.create(
    username: FFaker::Internet::user_name,
    email: FFaker::Internet::email,
    password: "password"
  )

  review = BootcampReview.create(content: FFaker::HipsterIpsum::paragraph, campus: rand(7 .. 10), worthit: worth[0], location: rand(5 .. 8), jobhelp: rand(5 .. 9), hired: answer[rand(0 .. 3)])

  user.bootcamp_reviews << review
  bc[0].bootcamp_reviews << review

end
