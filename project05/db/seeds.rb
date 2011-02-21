# An even better way of doing this is to create a yaml file of seed data,
# and have this seeds.rb script load that yaml data accordingly.
#
# In addition, it's better to use docstrings than these ugly long lines of text.
article_attributes = [ 
                       {:title => 'The Failure of Symbolic Thought',
                        :author_name => 'John Zerzan',
                        :body => 'To what degree can it be said that we are really living? As the substance of culture seems to shrivel and offer less balm to troubled lives, we are led to look more deeply at our barren times. And to the place of culture itself in all this. 
           
                        An anguished Ted Sloan asks (1996), "What is the problem with modernity? Why do modern societies have such a hard time producing adults capable of intimacy, work, enjoyment, and ethical living? Why is it that signs of damaged life are so prevalent?" According to David Morris (l994), "Chronic pain and depression, often linked and occasionally even regarded as a single disorder, constitute an immense crisis at the center of postmodern life." We have cyberspace and virtual reality, instant computerized communication in the global village; and yet have we ever felt so impoverished and isolated?'
                       },
                       {:title => 'O Rotten Gotham',
                        :author_name => 'Tom Wolfe',
                        :body => 'I just spent two days with Edward T. Hall, an anthropologist, watching thousands of my fellow New Yorkers short-circuiting themselves into hot little twitching death balls with jolts of their adrenaline. Dr. Hall  says it is overcrowding that does it. Overcrowding gets the adrenaline going, and the adrenaline gets them queer, autistic, sadistic, barren, batty, sloppy,  hot-in-the-pants, chance red-on-the-flankers, leering, puling, numb – the usual in New York, in other words, and God knows what else. Dr. Hall has  the theory that overcrowding has already thrown New York into a state of behavioral sink. Behavioral sink is a term from ethology, which is the study'
                       },
                       {:title => 'Invisible Man',
                        :author_name => 'Ralph Ellison',
                        :body => "Within the first five minutes of meeting someone, we've got them sized up, categorized, and filed away under a billion different headings: girl next door, rebel, tough guy, femme fatale, flamboyant, rich, wallflower, punk, exotic, hippie, fashionista, and so on. You're labeled by what school you go to, your athletic prowess, your looks, where you shop, your zip code, what car you drive, what cell phone you use, where you went for vacation last summer – and, oh yes, your race.
           
                        The narrator of Invisible Man gets labeled more frequently than a pack of bad-for-your-health cigarettes. Throughout the novel, he's mistaken for a reverend, a pimp, a gambler, a fink, a unionist, a \"Southern Negro,\" a \"New York Negro,\" a rapist, a lover, a doctor, and a good singer. So what happens when we get slapped with that inevitable label (or two or three or four)? We can embrace or reject them, but either way, they're going to affect us, and, to some degree, determine our actions. Ever notice how counter-culture teens conform to a rebellious standard so they can avoid... being conformists? Right.
           
                        What makes Invisible Man so compelling is that its narrator recognizes this, reflects on it in great depth, and chooses to deal with and live in the world anyway. Not exactly an easy feat. How does he pull it off, you ask? Good question. Get on that, and tell us what you think."
                       },
                       {:title => 'How to Survive in the Woods',
                        :author_name => 'Nicole Willson',
                        :body => 'Be calm in the situation: You are your most valuable resource. Pay attention and take note of your surroundings. The only thing that can fail you in any environment is lack of motivation. If you beleieve you will survive your chances are higher. Its all about will-power!
              
                         Go to your nearest source of water: If you do not now where that is, then go downhill until you find a moving, clean source. The ideal water source would be a moving river with sandy banks.'
                       }
                     ]

article_attributes.each do |attributes|
  Article.create!(attributes)
end
