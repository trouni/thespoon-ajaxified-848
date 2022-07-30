# # { hello: 'it worked in jbuilder' }
# json.hello 'it worked in jbuilder'

if @review.persisted?
  json.new_review_html json.partial!('reviews/review.html.erb', review: @review)
  json.form_html json.partial!('reviews/form.html.erb', review: Review.new, restaurant: @restaurant)
else
  json.form_html json.partial!('reviews/form.html.erb', review: @review, restaurant: @restaurant)
end