	10.times do |blog|
		Blog.create!(
		title: "my posts #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et sem eget 
	neque dignissim luctus. Maecenas sed quam a leo sodales scelerisque id a mauris. 
	Nullam ligula diam, sollicitudin rhoncus consequat id, tempus a risus. Nunc ornare 
	id purus quis malesuada. Sed ac risus sit amet velit tristique faucibus."
	)
	end

	puts '10 blogs created'

5.times do |skill|
	Skill.create!(
		title: "Rails#{skill}",
		percent_utilized: 20
)
end

puts '5 skills created'

7.times do |portafolio|
	Portafolio.create!(
		title: "my Image#{portafolio}",
		subtitle: 'main image',
		body: 'Nullam ligula diam, sollicitudin rhoncus consequat id, tempus a risus. Nunc ornare 
		id purus quis malesuada. Sed ac risus sit amet velit tristique faucibus.',
		main_image: 'main image',
		thumb_image: 'thumb image',
)
end

	puts '7 portafolios created'

