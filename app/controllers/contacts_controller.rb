class ContactsController < ApplicationController

    def index
        @form = ContactForm.new
    end

    def create
        @form = ContactForm.new(form_params)

        if @form.valid?
            @form.mail

            redirect_to contacts_url, notice: 'Your message was sent successfully.'
        else
            render :index
        end
    end

    protected

    def form_params
        params.require(:contact_form).permit(:name, :email, :phone, :message)
    end

end
