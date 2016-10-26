Rails.application.routes.draw do

  get 'results/edit'
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

  resources :examinees, only: [:show]

  root to: "static_pages#home"
  get "home" => "static_pages#home"

end
