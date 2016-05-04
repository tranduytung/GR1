Rails.application.routes.draw do

  get 'examinees/show'

  devise_for :examinees, :controllers => {
    :passwords => "examinees/passwords",
    :confirmations => "examinees/confirmations",
    :registrations => "examinees/registrations",
    :sessions => "examinees/sessions",
    :mailer => "examinees/mailer"
  }, :skip => [:registrations]

  devise_scope :examinee do
  	get "examinees/edit" => "examinees/registrations#edit", :as => "edit_examinee_registration"
  	put "examinees" => "examinees/registrations#update", :as => "examinee_registration"
  end

  devise_for :clusters, :controllers => {
    :passwords => "clusters/passwords",
    :confirmations => "clusters/confirmations",
    :registrations => "clusters/registrations",
    :sessions => "clusters/sessions",
    :mailer => "clusters/mailer"
  }, :skip => [:registrations]

  devise_scope :cluster do
  	get "clusters/edit" => "clusters/registrations#edit", :as => "edit_cluster_registration"
  	put "clusters" => "clusters/registrations#update", :as => "cluster_registration"
  end

  resources :clusters, only: [:index, :show]
  resources :examinees, only: [:index, :show]

  root to: "static_pages#home"

  get "home" => "static_pages#home"

end
