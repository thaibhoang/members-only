# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.where(email: "admin@gmail.com").first_or_initialize
user.update!(
  password: "QwE.@nsjfe12",
  password_confirmation: "QwE.@nsjfe12"
)

{
  "The 5 Stages of the Creative Process"=> "In 1940, an advertising executive named James Webb Young published a short guide titled.", 
"Make a Call About What to Focus On"=> "Assuming you’re willing to try things and experiment a bit, the next question is",
"A Volume of Work"=>"Now we have reached the stage where figuring out what to focus on becomes a real possibility.

You have experimented with enough ideas to discover one or two options that seem to provide better than average results for you. You’ve overcome the hurdle of wanting more information and the fear of committing to something and now you’ve made a choice. You took the job. You started the business. You signed up for the class. You’re ready.

Welcome to the grind. It’s time to put in a volume of work. Not just once or twice. Not just when it’s easy. But a consistent, repeated volume of work. You have to fall in love with boredom and stay on the bus.

It is through this sheer number of repetitions that you’ll come to understand the fundamentals of your task. You might know what greatness looks like before this point, but you won’t understand how to achieve greatness until you’ve put the work in yourself.

",
"Opera"=>"Opera refers to a dramatic art form, originating in Europe, in which the emotional content is conveyed to the audience as much through music, both vocal and instrumental, as it is through the lyrics. By contrast, in musical theater an actor's dramatic performance is primary, and the music plays a lesser role. The drama in opera is presented using the primary elements of theater such as scenery, costumes, and acting. However, the words of the opera, or libretto, are sung rather than spoken. The singers are accompanied by a musical ensemble ranging from a small instrumental ensemble to a full symphonic orchestra.",
"Dolphins"=>"Dolphins are regarded as the friendliest creatures in the sea and stories of them helping drowning sailors have been common since Roman times. The more we learn about dolphins, the more we realize that their society is more complex than people previously imagined. They look after other dolphins when they are ill, care for pregnant mothers and protect the weakest in the community, as we do. Some scientists have suggested that dolphins have a language but it is much more probable that they communicate with each other without needing words. Could any of these mammals be more intelligent than man? Certainly the most common argument in favor of man's superiority over them that we can kill them more easily than they can kill us is the least satisfactory. On the contrary, the more we discover about these remarkable creatures, the less we appear superior when we destroy them.  ",
"Unsinkable Ship"=>"Naval architects never claim that a ship is unsinkable, but the sinking of the passenger-and-car ferry Estonia in the Baltic surely should have never have happened. It was well designed and carefully maintained. It carried the proper number of lifeboats. It had been thoroughly inspected the day of its fatal voyage. Yet hours later, the Estonia rolled over and sank in a cold, stormy night. It went down so quickly that most of those on board, caught in their dark, flooding cabins, had no chance to save themselves: Of those who managed to scramble overboard, only 139 survived. The rest died of hypothermia before the rescuers could pluck them from the cold sea. The final death toll amounted to 912 souls. However, there were an unpleasant number of questions about why the Estonia sank and why so many survivors were men in the prime of life, while most of the dead were women, children and the elderly.",
"Erosion in America"=>"Erosion of America's farmland by wind and water has been a problem since settlers first put the prairies and grasslands under the plow in the nineteenth century. By the 1930s, more than 282 million acres of farmland were damaged by erosion. After 40 years of conservation efforts, soil erosion has accelerated due to new demands placed on the land by heavy crop production. In the years ahead, soil erosion and the pollution problems it causes are likely to replace petroleum scarcity as the nation's most critical natural resource problem",

}.each do |key, value| 
  user.posts.find_or_create_by!(
    title: key,
    body: value
  )
end