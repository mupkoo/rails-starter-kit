module ApplicationHelper
    def resolve_flash(key)
        main = 'alert alert-dismissable '

        case key.to_s
            when 'notice'  then main + 'alert-info'
            when 'success' then main + 'alert-success'
            when 'error'   then main + 'alert-danger'
            when 'alert'   then main + 'alert-danger'
        end
    end
end
