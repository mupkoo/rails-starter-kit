class ImageInput < SimpleForm::Inputs::FileInput
    def input
        (build_file + build_cache + build_image + build_remove).html_safe
    end

    protected

    def build_file
        @builder.file_field(attribute_name, input_html_options)
    end

    def build_cache
        @builder.hidden_field("#{attribute_name}_cache").html_safe
    end

    def build_image
        if object.send("#{attribute_name}?")
            version = input_html_options.delete(:preview_version)
            version ||= :thumb
            template.image_tag(object.send(attribute_name).tap {|o| break o.send(version) if version}.send('url'))
        end
    end

    def build_remove
        if object.send("#{attribute_name}?") and !required_field?
            template.content_tag :label, class: 'checkbox remove-photo' do
                @builder.check_box("remove_#{attribute_name}") + "Remove #{attribute_name.to_s.humanize}?"
            end
        end
    end
end
