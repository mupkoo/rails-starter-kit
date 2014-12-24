class Mailer < ActionMailer::Base

    layout 'mailer'
    default from: 'no-reply@rails-starter-kit.com',
            to: 'mupkoo@gmail.com'

    def contact(form)
        @form = form

        mail subject: 'Contact form email'
    end

end
