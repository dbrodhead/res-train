ActiveAdmin.register User do
  index do                            
    column :email
    column "Role" do |user|
      (user.roles.map{ |p| p.name }).join(' ')
    end
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    column 'First Name', :fname
    column 'Last Name', :lname
    column :rank
    column :department
    column :trade
    column :position
   default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation 
      f.input :roles
      f.input :fname, label: 'First Name'
      f.input :lname, label: 'Last Name'
      f.input :rank
      f.input :department
      f.input :trade
      f.input :position
    end                               
    f.actions                         
  end  
end
