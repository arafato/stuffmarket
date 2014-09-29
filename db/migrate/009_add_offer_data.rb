class AddOfferData < ActiveRecord::Migration
  def self.up
    Offer.delete_all

    Offer.create(:name => 'Ajax on Rails',
                 :short_description => 'Ajax on Rails by Scott Raymond',
                 :long_description => 'Learn to build dynamic, interactive web applications using the two most important
                 approaches to web development today: Ajax and the phenomenally efficient Ruby on Rails platform.
                 This book teaches intermediate to advanced web developers how to use both Ajax and Rails to quickly build high-performance,
                 scalable applications without being overwhelmed with thousands of lines of JavaScript code.
                 More than just recipes, you also get a thorough,
                 low-level understanding of whats happening under the hood.
                 Ajax on Rails includes three fully worked out Rails/Ajax applications, and quick reference sections for Prototype and script.aculo.us.
                 Testing lessons show you how to eliminate cross-browser JavaScript errors and DOM debugging nightmares using a combination of Firebug, and Venkman.
                 Advanced material explains the most current design practices for Ajax usability. Youll learn to avoid user experience mistakes with proven design patterns. Beyond the how-to, Ajax on Rails helps you consider when Ajax is (and isnt) appropriate, and the trade-offs associated with it. For those new to Rails, this book provides a quick introduction, the big picture, a walk through the installation process, and some tips on getting started. If youve already started working with Rails and seek to deepen your skill set, youll find dozens of examples drawn from real-world. ',
                 
                 :picture_url => '/images/offer_pics/ajaxOnRails.png',
                 :user_id => 1,
                 :category_id => 5)
                 
                 
    Offer.create(:name => 'Introduction to Algorithms',
                 :short_description => 'Introduction to Algorithms by Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest',
                 :long_description => 'Overview of algorithms (including algorithms as a technology); designing and analyzing algorithms; asymptotic notation; recurrences and recursion; probabilistic analysis and randomized algorithms; heapsort algorithms; priority queues; quicksort algorithms; linear time sorting (including radix and bucket sort); medians and order statistics (including minimum and maximum); introduction to data structures (stacks, queues, linked lists, and rooted trees); hash tables (including hash functions); binary search trees; red-black trees; augmenting data structures for custom applications; dynamic programming explained (including assembly-line scheduling, matrix-chain multiplication, and optimal binary search trees); greedy algorithms (including Huffman codes and task-scheduling problems); amortized analysis (the accounting and potential methods); advanced data structures (including B-trees, binomial and Fibonacci heaps, representing disjoint sets in data structures); graph algorithms (representing graphs, minimum span
ing trees, single-source shortest paths, all-pairs shortest paths, and maximum flow algorithms); sorting networks; matrix operations; linear programming (standard and slack forms); polynomials and the Fast Fourier Transformation (FFT); number theoretic algorithms (including greatest common divisor, modular arithmetic, the Chinese remainder theorem, RSA public-key encryption, primality testing, integer factorization); string matching; computational geometry (including finding the convex hull); NP-completeness (including sample real-world NP-complete problems and their insolvability); approximation algorithms for NP-complete problems (including the traveling salesman problem); reference sections for summations and other mathematical notation, sets, relations, functions, graphs and trees, as well as counting and probability backgrounder (plus geometric and binomial distributions).  
                 ',
                 :picture_url => '/images/offer_pics/algorithms.png',
                 :user_id => 1,
                 :category_id => 5)
                 
                 
    Offer.create(:name => 'Design Patterns. Elements of Reusable Object-Oriented Software',
                 :short_description => 'Design Patterns. Elements of Reusable Object-Oriented Software Erich Gamma, Richard Helm, Ralph E. Johnson',
                 :long_description => 'Design Patterns is based on the idea that there are only so many design problems in computer programming. This book identifies some common program-design problems--such as adapting the interface of one object to that of another object or notifying an object of a change in another objects state--and explains the best ways (not always the obvious ways) that the authors know to solve them. The idea is that you can use the authors sophisticated design ideas to solve problems that you often waste time solving over and over again in your own programming. The authors have come up with some ingenious ways to solve some common vexations among object-oriented programmers. Want to build a page-layout program that embeds inline images among characters of various sizes? How about building a program that converts files of one format to another? Chances are, some programmer already has thought of a better solution than you will and the recipes you need are here. Solutions are presented in generalised diagrams of data and logic structures. The idea is that you can take the concepts presented here and adapt them--in whatever language you use--to your individual situation. You may have to read some of the chapters several times before you fully understand them, but when you find a solution in this book, it will make your job easier and your results more elegant.',
                 :picture_url => '/images/offer_pics/pattern.png',
                 :user_id => 1,
                 :category_id => 5)
                 
                 
                 
                 
                 Offer.create(:name => 'The Very Hungry Caterpillar',
                 :short_description => 'The Very Hungry Caterpillar by Eric Carle',
                 :long_description => "
                 With its lovely, humorous illustrations and wonderful narrative about a hungry caterpillar growing up to be a beautiful butterfly, Eric Carles story touches anyone who still has some growing to do. Along with reassuring repetition--He was still hungry ...--the book includes some wonderful interactive moments: what youngster can resist sticking a finger through that hole in the page as his ravenous friend makes his way through various delicacies?
                 ",
                 :picture_url => '/images/offer_pics/caterpillar.png',
                 :user_id => 1,
                 :category_id => 6)
                 
                 
                 Offer.create(:name => 'Harry Potter and the Sorcerers Stone',
                 :short_description => 'Harry Potter and the Sorcerers Stone by J. K. Rowling',
                 :long_description => "
                 Readers are in for a delightful romp with this award-winning debut from a British author who dances in the footsteps of P.L. Travers and Roald Dahl. As the story opens, mysterious goings-on ruffle the self-satisfied suburban world of the Dursleys, culminating in a trio of strangers depositing the Dursleys' infant nephew Harry in a basket on their doorstep. After 11 years of disregard and neglect at the hands of his aunt, uncle and their swinish son Dudley, Harry suddenly receives a visit from a giant named Hagrid, who informs Harry that his mother and father were a witch and a wizard, and that he is to attend Hogwarts School of Witchcraft and Wizardry himself. Most surprising of all, Harry is a legend in the witch world for having survived an attack by the evil sorcerer Voldemort, who killed his parents and left Harry with a lightning-shaped scar on his forehead. And so the fun begins, with Harry going off to boarding school like a typical English kid?only his supplies include a message-carrying owl and a magic wand. There is enchantment, suspense and danger galore (as well as enough creepy creatures to satisfy the most bogeymen-loving readers, and even a magical game of soccerlike Quidditch to entertain sports fans) as Harry and his friends Ron and Hermione plumb the secrets of the forbidden third floor at Hogwarts to battle evil and unravel the mystery behind Harry's scar. Rowling leaves the door wide open for a sequel; bedazzled readers will surely clamor for one. Ages 8-12.
                  ",
                 :picture_url => '/images/offer_pics/potter.png',
                 :user_id => 1,
                 :category_id => 6)
                 
                 
                 Offer.create(:name => 'Poohs Best Day',
                 :short_description => 'Poohs Best Day',
                 :long_description => "
                 Winnie the Pooh,a bear, has different adventures with all his friends: Christopher Robin , Piget, Rabbit, Owl, Kanga, Roo, Tiger, and many more. I like this book because it is funny. Pooh and his friends are cute (from the pictures) and have great and different personalities. Please buy and read this great book. You will love the characters.
                 ",
                 :picture_url => '/images/offer_pics/pooh.png',
                 :user_id => 1,
                 :category_id => 6)
                 
                 
                 Offer.create(:name => 'The Catcher in the Rye',
                 :short_description => 'The Catcher in the Rye  by Jerome D. Salinger',
                 :long_description => "
                  Since his debut in 1951 as The Catcher in the Rye, Holden Caulfield has been synonymous with cynical adolescent. Holden narrates the story of a couple of days in his sixteen-year-old life, just after he's been expelled from prep school, in a slang that sounds edgy even today and keeps this novel on banned book lists. It begins, If you really want to hear about it, the first thing you'll probably want to know is where I was born and what my lousy childhood was like, and how my parents were occupied and all before they had me, and all that David Copperfield kind of crap, but I don't feel like going into it, if you want to know the truth. In the first place, that stuff bores me, and in the second place, my parents would have about two hemorrhages apiece if I told anything pretty personal about them. His constant wry observations about what he encounters, from teachers to phonies (the two of course are not mutually exclusive) capture the essence of the eternal teenage experience of alienation. 
                  ",
                 :picture_url => '/images/offer_pics/catcher.png',
                 :user_id => 1,
                 :category_id => 7)
                 
                 
                 Offer.create(:name => 'High Fidelity',
                 :short_description => 'High Fidelity - A Novel by Nick Hornby',
                 :long_description => "
                 It has been said often enough that baby boomers are a television generation, but the very funny novel High Fidelity reminds that in a way they are the record-album generation as well. This funny novel is obsessed with music; Hornby's narrator is an early-thirtysomething English guy who runs a London record store. He sells albums recorded the old-fashioned way--on vinyl--and is having a tough time making other transitions as well, specifically adulthood. The book is in one sense a love story, both sweet and interesting; most entertaining, though, are the hilarious arguments over arcane matters of pop music. 
                 ",
                 :picture_url => '/images/offer_pics/hifi.png',
                 :user_id => 1,
                 :category_id => 7)
                 
                 
                 Offer.create(:name => 'Death of a Salesman',
                 :short_description => 'Death of a Salesman by Arthur Miller ',
                 :long_description => "
                 The tragedy of Loman the all-American dreamer and loser works eternally, on the page as on the stage. A lot of plays made history around 1949, but none have stepped out of history into the classic canon as Salesman has. Great as it was, Tennessee Williams's work can't be revived as vividly as this play still is, all over the world. (This edition has edifying pictures of Lee J. Cobb's 1949 and Brian Dennehy's 1999 performances.) It connects Aristotle, The Great Gatsby, On the Waterfront, David Mamet, and the archetypal American movie antihero. It even transcends its author's tragic flaw of pious preachiness (which undoes his snoozy The Crucible, unfortunately his most-produced play).
                 ",
                 :picture_url => '/images/offer_pics/salesman.png',
                 :user_id => 1,
                 :category_id => 7)
                 
                 
                 
                 
                 Offer.create(:name => 'Jaws',
                 :short_description => 'Jaws (Widescreen Anniversary Collectors Edition) ',
                 :long_description => "
                 In the vastly overrated 1998 book Easy Riders, Raging Bulls, author Peter Biskind puts the blame for Hollywood's blockbuster mentality at least partially on Steven Spielberg's box-office success with this adaptation of Peter Benchley's bestselling novel. But you can't blame Spielberg for making a terrific movie, which Jaws definitely is. The story of a Long Island town whose summer tourist business is suddenly threatened by great-white-shark attacks on humans bypasses the potboiler trappings of Benchley's book and goes straight for the jugular with beautifully crafted, crowd-pleasing sequences of action and suspense supported by a trio of terrific performances by Roy Scheider (as the local sheriff), Richard Dreyfuss (as a shark specialist), and particularly Robert Shaw (as the old fisherman who offers to hunt the shark down). The sequences on Shaw's boat--as the three of them realize that in fact the shark is hunting them--are what entertaining moviemaking is all about.
                 ",
                 :picture_url => '/images/offer_pics/jaws.png',
                 :user_id => 1,
                 :category_id => 8)
                 
                 
                 Offer.create(:name => 'Indiana Jones and the Raiders of the Lost Ark',
                 :short_description => 'Indiana Jones and the Raiders of the Lost Ark (Widescreen Edition)',
                 :long_description => "
                 This is a very great movie, If only this thing would go that far! The Jones movie's are my favoite movies of all time!!!! Any body needs to see the movies, and it's awesome that they are selling them indivisual. There like page tuners, you can't but the book down. Well with these movies its the same, you Just can't stop watching them... everybody can enjoy the movie's. You probably wouldn't let your kids watch the jones for a while becuase of there violence and gore. But actually, I saw them when I was a 7 year old boy. And you know what, I loved them! Personaly my favorite is the last one. 
                 ",
                 :picture_url => '/images/offer_pics/indianaJones.png',
                 :user_id => 1,
                 :category_id => 8)
                 
                 
                 Offer.create(:name => 'Back to the Future Part III ',
                 :short_description => 'Back to the Future Part III ',
                 :long_description => "
                 Shot back-to-back with Back to the Future II, this final chapter in the series is less hectic than that film and has the same sweet spirit of the first, albeit in a whole new setting. This time, Michael J. Fox's character ends up in the Old West of 1885, trying to prevent the death of mad scientist Christopher Lloyd at the hands of a gunman. Director Robert Zemeckis successfully blends exciting special effects with the traditions of a Western, and comes up with something original and fun.
                 ",
                 :picture_url => '/images/offer_pics/backFuture.png',
                 :user_id => 1,
                 :category_id => 8)
                 
                 
                 
                 
                 
                 Offer.create(:name => 'Secretary',
                 :short_description => 'Secretary',
                 :long_description => "
                 This kinky love story features a standout performance by Maggie Gyllenhaal, an offbeat young actress in her first starring role. Gyllenhaal plays Lee, a nervous girl who compulsively cuts herself, who gets a job as a secretary for Edward, an imperious lawyer (James Spader, an old hand at tales of perverse affection). Edward's reprimands for typos and spelling errors begin with mild humiliation, but as Lee responds to his orders--which are driven as much by his own anxieties and fears as any sense of order--the punishments escalate to spankings, shackles, and more. Secretary walks a fine line. It finds sly humor in these sadomasochistic doings without turning them into a gag, and it takes Lee and Edward's mutual desires seriously without getting self-righteous or pompous. Certainly not a movie for everyone, but some people may be unexpectedly stirred up by this smart and steamy tale of repressed passion.
                 ",
                 :picture_url => '/images/offer_pics/secretary.png',
                 :user_id => 1,
                 :category_id => 9)
                 
                 
                 Offer.create(:name => 'The Big Lebowski (Widescreen Collectors Edition)',
                 :short_description => 'The Big Lebowski (Widescreen Collectors Edition)',
                 :long_description => "
                 After the tight plotting and quirky intensity of Fargo, this casually amusing follow-up from the prolifically inventive Coen (Ethan and Joel) brothers seems like a bit of a lark, and the result was a box-office disappointment. The good news is, The Big Lebowski is every bit a Coen movie, and its lazy plot is part of its laidback charm. After all, how many movies can claim as their hero a pot-bellied, pot-smoking loser named Jeff The Dude Lebowski (Jeff Bridges) who spends most of his time bowling and getting stoned? And where else could you find a hairnetted Latino bowler named Jesus (John Turturro) who sports dazzling purple footgear, or an erotic artist (Julianne Moore) whose creativity consists of covering her naked body in paint, flying through the air in a leather harness, and splatting herself against a giant canvas? Who else but the Coens would think of showing you a camera view from inside the holes of a bowling ball, or an elaborate Busby Berkely-styled musical dream sequence involving a Viking goddess and giant bowling pins? The plot--which finds Lebowski involved in a kidnapping scheme after he's mistaken for a rich guy with the same name--is almost beside the point. What counts here is a steady cascade of hilarious dialogue, great work from Coen regulars John Goodman and Steve Buscemi, and the kind of cinematic ingenuity that puts the Coens in a class all their own. Be sure to watch with snacks in hand, because The Big Lebowski might give you a giddy case of the munchies.
                 ",
                 :picture_url => '/images/offer_pics/lebowski.png',
                 :user_id => 1,
                 :category_id => 9)
                 
                 
                 Offer.create(:name => 'Snatch ',
                 :short_description => 'Snatch (Widescreen Edition) ',
                 :long_description => "
                 Usually it might seem a tad unfair to begin a review by referring to the director's missis. But then the missis in question wouldn't usually be Madonna--a woman whose ability to reinvent herself several times before breakfast seems in marked contrast to that of hubby Guy Ritchie. Certainly, this follow-up to the filmmaker's breakthrough film--the high-energy, expletive-strewn cockney-gangster movie Lock, Stock and Two Smoking Barrels--hardly breaks new ground being, well, another high-energy, expletive-strewn cockney-gangster movie. OK, so there are some differences. This time around our low-rent hoodlums are battling over dodgy fights and stolen diamonds rather than dodgy card games and stolen drugs. There has been some minor reshuffling of the cast too, with Sting and Dexter Fletcher making way for the more bankable Benicio Del Toro and Brad Pitt, the latter pretty much stealing the whole shebang as an incomprehensible Irish gypsy. And, sure, people who really, really liked Lock, Stock--or have the memory of a goldfish--will really, really like this. The suspicion lingers, however, that if the director doesn't do something very different next time around then his career may prove to be considerably shorter than that of his missis.
                 ",
                 :picture_url => '/images/offer_pics/snatch.png',
                 :user_id => 1,
                 :category_id => 9)
                 
                 
                 
                 
                 Offer.create(:name => 'Punished Sluts',
                 :short_description => 'Punished Sluts',
                 :long_description => "
                 It seems every slut in the dungeon is cheating on someone... and there's hell to pay when they get caught!
                 ",
                 :picture_url => '/images/offer_pics/sluts.png',
                 :user_id => 1,
                 :category_id => 10)


                 Offer.create(:name => '1 Night in Paris',
                 :short_description => '1 Night in Paris',
                 :long_description => "
                 America's hottest hotel heiress gets nasty on camera!!! Rick in Paris' hotel. Rick's tongue in Paris' pussy. Rick's dick in Paris' mouth. Rick's cock in Paris' pussy. Added Bonus: 4 of Red Light District's Hottest Hardcore Scenes including Taylor Rain, Monica Sweetheart, Randi Wright and Teagan.
                  ",
                 :picture_url => '/images/offer_pics/paris.png',
                 :user_id => 1,
                 :category_id => 10)
                 
                 
                 Offer.create(:name => 'Deep Throat XXX' ,
                 :short_description => 'XXX RARE VINTAGE',
                 :long_description => "
                 Ever since Larry Flynt started hanging around with President Jimmy Carter's Evangelical sister, the linkage between smut and religion has been one of great volatility and curiosity. In passion of the ass #2 (a spinoff of Mel Gibson's mainstream movie) legend pictures presents porn star Anastasia Christ. It doesn't get more volatile than that.
                 ",
                 :picture_url => '/images/offer_pics/ass.png',
                 :user_id => 1,
                 :category_id => 10)
                 
                 
                 Offer.create(:name => 'Blue Lines Massive Attack' ,
                 :short_description => 'Blue Lines from Massive Attack',
                 :long_description => "
                 The influence of Bristol, U.K.'s Massive crew on bringing trippy beats to the foreground is immeasurable. Not only were they the early test ground for other alterna-hop stars (ex-clansman Tricky, former songstresses Nicolette and Martina, and the lesser known productionists Smith & Mighty), they've spread their influence to everyone from fellow Bristol residents Portishead to Björk. Blue Lines is Massive's debut record and is the second musical union of Bristol's renowned collective, Wildbunch. The emotional purging and beat-driven orchestral movement of Unfinished Sympathy was among the first signs of life in contemporary English trip-hop culture. Other masterpieces, like Daydreaming, which features Shara Nelson, Tricky, and other friends on the mic, throb with deep, dubby beats and soulful ambiance. Blue Lines marks the beginning of a musical legacy that is ever expanding.
                 ",
                 :picture_url => '/images/offer_pics/blueLines.png',
                 :user_id => 1,
                 :category_id => 11)
                 
                 Offer.create(:name => 'Moon Safari Air' ,
                 :short_description => 'Moon Safari by Air',
                 :long_description => "
                 French duo Air's debut album is a superlatively happy collection of experimental disco-mood sound nestled between ambient soundscape and breathy pop. It's jazzy and melodic, and mostly laid-back, but not excessively so. There are a few shake-it, shake-it numbers, too, like the absurdly daft hit Sexy Boy. It's snap your fingers and hang out (while reading) music or dance around sexy-slow with your mate music. It's also the perfect music to do your ironing or some other chore to; it's hypnotizing wallpaper music. It slips in and out of your consciousness, forcing you to move around with a relaxed smile before you even realize it. Oh, and contrary to sampler fashion, Nicolas Godin and Jean Benoit Dunckel played the instruments themselves.
                 ",
                 :picture_url => '/images/offer_pics/moonSafari.png',
                 :user_id => 1,
                 :category_id => 11)
                 
                 Offer.create(:name => 'Vegas - The Crystal Method ' ,
                 :short_description => 'Vegas - The Crystal Method  NEW',
                 :long_description => "
                 When Ken Jordan and Scott Kirkland started distributing homemade singles around Los Angeles at the beginning of the '90s, their bass-fortified, hard-rolling techno concoctions perked up the ears of industry impresarios and local scenesters alike. Vegas, their affectionately-titled major label debut, refines the formula. Thick with layers of pounding beats and rock dynamics, it takes the typical club fare and beefs it up with a uniquely western slant. The detectable influences range from the power chords of AC/DC to old school hip-hop patterns to the smooth melodies of Stevie Wonder. On blistering tracks like Trip Like I Do and Keep Hope Alive, the Crystal Method confirm that America has become a force of contention in the electronica field.
                 ",
                 :picture_url => '/images/offer_pics/vegas.png',
                 :user_id => 1,
                 :category_id => 11)
                 
                 
                 
                 
                 Offer.create(:name => 'Cantaloupe Island - Herbie Hancock ' ,
                 :short_description => 'Cantaloupe Island - Herbie Hancock ',
                 :long_description => "A collection of Herbie's earliest, this is sort of a Best Of of his early solo career. Although an excellent collection, none of the originial albums are particularly expensive, and all have great music. Maiden Voyage in particular is such a dexterous and contemplative album that it seems wrong not to appreciate it in its entirety. 
                 ",
                 :picture_url => '/images/offer_pics/cantaloupe.png',
                 :user_id => 1,
                 :category_id => 12)
                 
                 
                 Offer.create(:name => 'Diane by Chet Baker' ,
                 :short_description => 'Diane by Chet Baker',
                 :long_description => "
                 For those who are looking for a collection of smokey late night ballads by Chet Baker, this is the CD to pick up. It's a stripped down duet collection of just piano and trumpet. Cool jazz for the night owl! 
                 ",
                 :picture_url => '/images/offer_pics/chetBaker.png',
                 :user_id => 1,
                 :category_id => 12)
                 
                 
                 Offer.create(:name => 'What a Wonderful World -  Louis Armstrong' ,
                 :short_description => 'What a Wonderful World -  Louis Armstrong',
                 :long_description => "
                 This disc might rate as one of the ten discs that I would take with me to a deserted island if only allowed 10. The album is filled with emotion, feeling, great musicality, and arrangements. Truly a plug and play disc. Not a bad song on the entire album. You'll never be bored hearing it and you'll probably find yourself singing along with all the cuts after awhile.
                  ",
                 :picture_url => '/images/offer_pics/wonderful.png',
                 :user_id => 1,
                 :category_id => 12)
                 
                 
                 
                 Offer.create(:name => 'Paranoid - Black Sabbath ' ,
                 :short_description => 'Paranoid ....- Black Sabbath ',
                 :long_description => "
                 Though most of Black Sabbath's classic material from this album (War Pigs, Iron Man, Fairies Wear Boots, and the title track) can also be found on the collection We Sold Our Soul for Rock & Roll, Paranoid is essential for the completist. One of the best albums from one of the bands to define heavy metal, this album is chock-full of the best stuff from Sabbath's Osbourne years. (Where else will you be able to hear Rat Salad?) The music isn't exactly complex, but it doesn't need to be; its importance lies in its evocative power, with which any teenager will be able to identify
                 ",
                 :picture_url => '/images/offer_pics/paranoid.png',
                 :user_id => 1,
                 :category_id => 13)
                 
                 
                 Offer.create(:name => 'Stadium Arcadium - Red Hot Chili Peppers ' ,
                 :short_description => 'Stadium Arcadium - Red Hot Chili Peppers ',
                 :long_description => "
                 Four-year career hiatuses followed by sprawling double-albums could spell trouble for a band of the Chili Peppers' stature: consider they'd originally recorded enough for three discs. The restless, trouble-plagued outfit that helped break alternative rock into the mainstream with a potent fusion of punk 'n' funk in the '80s finds itself two decades on almost completely devoid of the former's energetic abandon, while the latter's effusive rhythms are considerably subdued over the course of this two-hour, 28-track collection. It's not so much that the Peppers have lost their muscular, often uber-macho edge as they have willfully tamed it in service of mature reinvention here. The mellower, often introspective, if no less potent pop ethos that characterized the crossover hit Under the Bridge blossoms fully here on tracks like disc one's Snow, Wet Sand, and the jazz-cool of Hey.
                 ",
                 :picture_url => '/images/offer_pics/stadium.png',
                 :user_id => 1,
                 :category_id => 13)
                 
                 
                 Offer.create(:name => 'Sgt. Peppers Lonely Hearts Club Band - The Beatles ' ,
                 :short_description => 'Sgt. Peppers Lonely Hearts Club Band - The Beatles ',
                 :long_description => "
                 Before Sgt. Pepper, no one seriously thought of rock music as actual art. That all changed in 1967, though, when John, Paul, George and Ringo (with A Little Help from their friend, producer George Martin) created an undeniable work of art which remains, after 30-plus years, one of the most influential albums of all time. From Lennon's evocative word/sound pictures (the trippy Lucy in the Sky With Diamonds, the carnival-like Being for the Benefit of Mr. Kite) and McCartney's music hall-styled When I'm 64, to Harrison's Eastern-leaning Within You Without You, and the avant-garde mini-suite, A Day in the Life, Sgt. Pepper was a milestone for both '60s music and popular culture.
                 ",
                 :picture_url => '/images/offer_pics/pepper.png',
                 :user_id => 1,
                 :category_id => 13)
                 
                 
                 
                 





  end

  def self.down
    Offer.delete_all
  end
end
