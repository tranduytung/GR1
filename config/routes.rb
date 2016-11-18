Rails.application.routes.draw do

  get 'majors/index'

  get 'majors/show'

  get 'majors/edit'

  get 'majors/new'

  get 'universities/show'

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

  devise_for :admins, :controllers => {
    :passwords => "admins/passwords",
    :confirmations => "admins/confirmations",
    :registrations => "admins/registrations",
    :sessions => "admins/sessions",
    :mailer => "admins/mailer"
  }, :skip => [:registrations]

  devise_scope :admin do
    get "admins/edit" => "admins/registrations#edit", :as => "edit_admin_registration"
    put "admins" => "admins/registrations#update", :as => "admin_registration"
  end

  devise_for :universities, :controllers => {
    :passwords => "universities/passwords",
    :confirmations => "universities/confirmations",
    :registrations => "universities/registrations",
    :sessions => "universities/sessions",
    :mailer => "universities/mailer"
  }, :skip => [:registrations]

  devise_scope :university do
    get "universities/edit" => "universities/registrations#edit", :as => "edit_university_registration"
    put "universities" => "universities/registrations#update", :as => "university_registration"
  end

  resources :examinees, only: [:show]
  resources :universities, only: [:show] do
    resources :majors
  end

  root to: "static_pages#home"
  get "home" => "static_pages#home"

  namespace :admins do
    resources :examinees do
      collection {get :export_file_csv}
      collection {post :import_file_csv}
      collection {get :export_file_excel}
    end
  end

end
