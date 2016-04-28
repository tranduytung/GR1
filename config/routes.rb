Rails.application.routes.draw do

  devise_for :clusters, :controllers => {
    :passwords => "clusters/passwords",
    :confirmations => "clusters/confirmations",
    :registrations => "clusters/registrations",
    :sessions => "clusters/sessions"
  }
  root "static_pages#home"

  get "home" => "static_pages#home"

end
