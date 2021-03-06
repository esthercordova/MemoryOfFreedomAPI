Rails.application.routes.draw do
  resources :profiles, except: [:new, :edit]
  resources :user_questions, except: [:new, :edit]
  resources :questions, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  get '/user_question/find/' => 'user_questions#findQuestionId'
  # get '/user_questions?status=easy' => 'user_questions#show'
end
