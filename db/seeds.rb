# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Section.delete_all
SectionElement.delete_all
Link.delete_all
Section.create(id: 1 ,name: 'What is AktisCMS?', visibility: true)
Section.create(id: 2 ,name: 'What it gives?', visibility: true)
Section.create(id: 3 ,name: 'How to use it?', visibility: true)
Section.create(id: 4 ,name: "Hey! I'm invisible", visibility: false)

Section.all.each do |s|
      Link.create(name: s.name, url: s.refname, visibility: true)
end

SectionElement.create(title: 'Simple CMS', 
	content:
	%{<p>
      <em>Easy to use and demonstrate</em>
      It's really easy to use AktisCMS and find your way around it.
      It was built by <b>Grzegorz Jakubiak</b> for your convinience so you don't have to think, just do. 
      First important principle behind AktisCMS is Click-it-to-get-it.
      </p>}, section_id: 1,visibility: true)
SectionElement.create(title: 'The Process', 
	content:
	%{<p>
      <em>How it was made brah?</em>
      'It's my first serious project' says Jakubiak everytime he is asked about it.
      'I mean I like Rails, Ruby and simplicity that is why I built it'.
      </p>}, section_id: 1,visibility: true)
SectionElement.create(title: 'The Tools', 
	content:
	%{<p>
      <em>What on earth did the man use to make it so amazing?</em>
      The magic potion consist of Ruby on Rails 5 as a core, Haml as a template engine, Bootstrap as a css styles and some RubyGems to add it to its amazingness.
      </p>}, section_id: 1,visibility: true)

SectionElement.create(title: 'The Opportunity', 
	content:
	%{<p>
      <em>I did it because I like trying new things</em>
      Firstly, it gives me the opportunity to show to you what I am capable of when it comes to Web Development.
      And I'm proud of myself man! That's why I ain't gonna lie I'm gonna be bragging about this all the time. 
      </p>}, section_id: 2,visibility: true)
SectionElement.create(title: 'The Chance', 
	content:
	%{<p>
      <em>That's why we do everything</em>
      Randomly, I wanted to show off to this IT companies and make my way through recruitment a lotta easier.
      </p>}, section_id: 2,visibility: true)
SectionElement.create(title: 'The Power', 
	content:
	%{<p>
      <em>Meh...</em>
      To change the web or whatever...
      </p>}, section_id: 2,visibility: true)
SectionElement.create(title: 'What do you mean by how?', 
	content:
	%{<p>
      <em>I mean how</em>
      Just click your way through it and that's it.
      </p>}, section_id: 3,visibility: true)
SectionElement.create(title: 'But mom, do I have to?', 
	content:
	%{<p>
      <em>Yes you do!</em>
      Do me a favor and get your ass here and use it!
      </p>}, section_id: 3,visibility: true)
SectionElement.create(title: 'Random because swagg', 
	content:
	%{<p>
      Drinking vinegar food truck tbh, 8-bit biodiesel humblebrag enamel pin craft beer. 
      Swag listicle pabst mixtape. Cold-pressed umami scenester hexagon cornhole. 
      Pug listicle DIY, irony butcher gochujang bespoke marfa. Chicharrones dreamcatcher portland, 
      tilde man braid flannel single-origin coffee tote bag godard live-edge synth stumptown glossier banjo. 
      Intelligentsia cronut food truck deep v farm-to-table. 
      PBR&B normcore brunch yr four dollar toast leggings, polaroid retro butcher neutra.
      </p>}, section_id: 3,visibility: true)
SectionElement.create(title: 'Oh I copied it why?', 
	content:
	%{<p>
      Drinking vinegar food truck tbh, 8-bit biodiesel humblebrag enamel pin craft beer. 
      Swag listicle pabst mixtape. Cold-pressed umami scenester hexagon cornhole. 
      Pug listicle DIY, irony butcher gochujang bespoke marfa. Chicharrones dreamcatcher portland, 
      tilde man braid flannel single-origin coffee tote bag godard live-edge synth stumptown glossier banjo. 
      Intelligentsia cronut food truck deep v farm-to-table. 
      PBR&B normcore brunch yr four dollar toast leggings, polaroid retro butcher neutra.
      </p>}, section_id: 4,visibility: false)

