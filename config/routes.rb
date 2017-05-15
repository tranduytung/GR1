Rails.application.routes.draw do

  get 'search/index'

  get 'majors/index'

  get 'majors/show'

  get 'majors/edit'

  get 'majors/new'

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

  namespace :universities do
    resources :benchmarks do
      collection {get :export_file_excel}
      collection {post :import_file_excel}
    end
    resources :majors do
      collection {get :recomment_benchmarks}
      collection {get :export_file_excel}
      collection {post :import_file_excel}
    end
    resources :majors, only: :show do
      get :registers, on: :member
      get :export_registers, on: :member
    end
    resources :major_group_exams do
      collection {get :export_file_excel}
      collection {post :import_file_excel}
    end
    resources :registers
  end

  resources :universities, only: [:show, :index]
  resources :universities, only: [:show] do
    resources :majors, only: [:index, :show]
  end

  namespace :examinees do
    resources :registers, only: [:new, :index]
    resources :suggestions do
    collection {get :major}
  end
  end
  resources :examinees, only: :show
  root to: "static_pages#home"
  get "home" => "static_pages#home"

  namespace :admins do
    resources :examinees do
      collection {get :export_file_csv}
      collection {post :import_file_csv}
      collection {post :import_file_excel}
      collection {get :export_file_excel}
    end
    resources :universities do
      collection {post :import_file_excel}
      collection {get :export_file_excel}
    end
    resources :register_times, only: [:edit, :update]
    root :to => "static_pages#index"
  end

  resources :searchs do
    collection {get :major}
  end
  resources :charts do
    collection {get :graduated}
    collection {get :by_graduated}
    collection {get :graduate_score}
    collection {get :by_graduate_score}
    collection {get :graduate}
    collection {get :home_town}
    collection {get :by_home_town}
    collection {get :math}
    collection {get :literature}
    collection {get :english}
    collection {get :physical}
    collection {get :chemistry}
    collection {get :biological}
    collection {get :history}
    collection {get :geography}
    collection {get :by_exam_score}
  end

end
