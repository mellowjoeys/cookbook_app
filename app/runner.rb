require 'http'

# Index Action

# response = HTTP.get("http://localhost:3000/api/recipes")
# p response.parse

# # Show Action

# response = HTTP.get("http://localhost:3000/api/recipes/1")
# p response.parse

#Create Action

client_params = {}

print "Title: "
client_params[:title] = gets.chomp
print "Chef: "
client_params[:chef] = gets.chomp
print "prep_time: "
client_params[:prep_time] = gets.chomp
print "ingredients: "
client_params[:ingredients] = gets.chomp
print "directions: "
client_params[:directions] = gets.chomp
print "image_url: "
client_params[:image_url] = gets.chomp

response = HTTP.post(
                    "http://localhost:3000/api/recipes",
                      form: client_params)
                            
#                     form: {
#                             title: "Bubble Gum",
#                             chef: "Josh",
#                             prep_time: 5, 
#                             ingredients: "wrapped gum",
#                             directions: "unwrap gum",
#                             image_url: "gum url..."
#                           }
#                     )
# p response.parse
p client_params

