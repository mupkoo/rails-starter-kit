class UploaderInput < Formtastic::Inputs::FileInput

    def to_html
        options = { class: 'uploader' }.merge(input_html_options)

        input_wrapping do
            label_html <<
            image_html <<
            hidden_field <<
            builder.file_field(method, options) <<
            remove_checkbox
        end
    end

    protected

    def image_html
        if builder.object.send(method).present?
            builder.template.image_tag builder.object.send(method).try(:url, :thumb)
        end
    end

    def hidden_field
        builder.hidden_field("#{method}_cache")
    end

    def remove_checkbox
        if builder.object.send(method).present?
            "<label class=\"uploader-label\">#{builder.check_box("remove_#{method}")} Remove #{method}?</label>".html_safe

        end
    end
end
