class ContactForm

    include ActiveModel::Model

    attr_accessor :name, :email, :phone, :message

    # Validations
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :message, presence: true, length: { minimum: 10 }

    def mail
        Mailer.contact(self).deliver
    end

end
