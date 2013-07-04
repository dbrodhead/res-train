ActiveAdmin.register User do
  index do                            
    column :email
    column "Role" do |user|
      (user.roles.map{ |p| p.name }).join(' ')
    end
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
   default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation 
      f.input :roles
    end                               
    f.actions                         
  end  
end
