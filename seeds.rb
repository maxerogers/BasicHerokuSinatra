facts = ['The oldest in-tact fossilized remains of a pet canine dates back 33,000 years. It was discovered in Siberia in the 1970s.',
'When drinking water, dogs cup the back of their tongues to transfer water from the bowl into their mouths.',
'Out of the 12 that were on board, three dogs survived the Titanic: two small Pomeranians and a Pekinese.',
'The Prairie Dog is actually part of the squirrel family. Early settlers named them after canines because their calls sounded like barking dogs.',
'In Moscow, some stray dogs learned to use the underground transit system to navigate throughout the city in search of food.',
'The Australian Shepherd isn\'t even from Australia. Its origins are tied to the Basque region of Europe. More: http://ow.ly/muBPX',
'Studies have shown that obedient dogs live longer lives than pugnacious pugs.',
'Dogs can be beneficial additions to the lives of children with Autism. Trained dogs can lessen the child\'s tendency of aggressiveness and give them a sense of independence.',
'Legacy pets: In the United States, about 1 million dog owners have named their pets the primary beneficiary in their wills.',
'Grapes and raisins even in small amounts can cause kidney failure in dogs.',
'Some dogs can identify the smell of lung cancer from sniffing a person\'s breath.',
'The Alaskan Malamute can withstand temperatures as low as 70 degrees below zero. More: http://ow.ly/muBOi']

Fact.all.destroy

facts.each do |fact|
	Fact.create(data: fact)
end