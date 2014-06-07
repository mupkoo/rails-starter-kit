class EditorInput < Formtastic::Inputs::TextInput

    def input_html_options
        { class: 'redactor' }.merge(super)
    end

end
