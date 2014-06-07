class BaseUploader < CarrierWave::Uploader::Base

    include CarrierWave::MiniMagick

    storage :file

    def store_dir
        "uploads/#{model.class.to_s.underscore.pluralize}/#{model.id}/#{mounted_as}"
    end

    version :thumb do
        process resize_to_fill: [100, 100]
    end

    def extension_white_list
        %w(jpg jpeg gif png)
    end

end
