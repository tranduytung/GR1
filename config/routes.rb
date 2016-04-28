Rails.application.routes.draw do

  devise_for :clusters, :controllers => {
    :passwords => "clusters/passwords",
    :confirmations => "clusters/confirmations",
    :registrations => "clusters/registrations",
    :sessions => "clusters/sessions",
    :mailer => "clusters/mailer"
  }, :skip => [:registrations]

  devise_scope :cluster do
  	get "clusters/edit/new" => "clusters/registrations#edit", :as => "edit_cluster_registration"
  	put "clusters" => "clusters/registrations#update", :as => "cluster_registration"
  end

  root to: "static_pages#home"

  get "home" => "static_pages#home"

end
