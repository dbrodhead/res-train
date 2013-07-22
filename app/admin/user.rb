ActiveAdmin.register User do
  index do                            
    column :email
    column "Role" do |user|
      (user.roles.map{ |p| p.name }).join(' ')
    end
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    column :fname
    column :lname
    column :rank
    column :department
    column :trade
   default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation 
      f.input :roles
      f.input :fname
      f.input :lname
      f.input :rank
      f.input :department
      f.input :trade
    end                               
    f.actions                         
  end  
end
