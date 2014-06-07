#= require active_admin/base
#= require redactor-rails
#= require libs/chosen
#= require_self

$ ->
    $('select').chosen({ allow_single_deselect: true })
