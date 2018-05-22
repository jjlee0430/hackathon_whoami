Rails.application.routes.draw do
  root 'posts#startpage'

  get 'posts/index'

  get 'posts/new'

  post 'posts/create'

  get 'posts/show1/:post_id' => 'posts#show1'
  
  get 'posts/check1/:post_id' => 'posts#check1'
  
  get 'posts/show2/:post_id' => 'posts#show2'
  
  get 'posts/check2/:post_id' => 'posts#check2'

  get 'posts/show3/:post_id' => 'posts#show3'

  get 'posts/check3/:post_id' => 'posts#check3'

  
  get 'posts/finish/:post_id' => 'posts#finish'

  get 'posts/wrong1/:post_id' => 'posts#wrong1'
  
  get 'posts/wrong2/:post_id' => 'posts#wrong2'
  
  get 'posts/wrong3/:post_id' => 'posts#wrong3'




  get 'posts/edit/:post_id' => 'posts#edit'

  post 'posts/update/:post_id' => 'posts#update'

  get 'posts/destroy/:post_id' => 'posts#destroy'

  post '/posts/finish/:post_id/comments/create' => 'comments#create'

  get '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
