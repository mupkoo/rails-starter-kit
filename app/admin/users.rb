ActiveAdmin.register User do

    permit_params :email, :password, :password_confirmation, :role, :is_active

    filter :email
    filter :role
    filter :is_active

    index do
        selectable_column

        column :id
        column :email
        column :role
        column :is_active

        actions
    end

    show do |user|
        attributes_table do
            row :id
            row :email
            row :role
            row :is_active
            row :created_at
        end
    end

    form do |f|
        f.inputs 'User Details' do
            f.input :email
            f.input :password, required: false
            f.input :password_confirmation
            f.input :role
            f.input :is_active
        end

        f.actions
    end


    controller do
        def update
            if params[:user][:password].blank?
                resource.update_without_password(permitted_params[:user])
            else
                resource.update_attributes(permitted_params[:user])
            end

            if @user.errors.blank?
                redirect_to admin_user_path(resource), :notice => "User updated successfully."
            else
                render :edit
            end
        end
    end
end
