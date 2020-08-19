Rails.application.routes.draw do

  authenticated :student do
    root to: 'dashboard#student', as: :student_dashboard
  end
  
  authenticated :teacher do
    root to: 'dashboard#teacher', as: :teacher_dashboard
  end
  
  root 'pages#home'
  
  resources :courses
  
  devise_for :students
  devise_for :teachers
      
end
