ActiveAdmin.register User do
   form do |f|
      f.inputs "Details" do
        f.input :name
        f.input :email
        f.input :phone
        f.input :portfolio_link
        f.input :portfolio_description
        f.input :portfolio_file
    
      end
      
      f.actions
    end

  end


