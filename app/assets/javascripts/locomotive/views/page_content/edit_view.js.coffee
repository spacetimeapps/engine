Locomotive.Views.PageContent ||= {}

class Locomotive.Views.PageContent.EditView extends Backbone.View

  el: '.content-main'

  events:
    'click .content-overlay': 'close_sidebar'

  initialize: ->
    _.bindAll(@, 'shrink_preview', 'close_sidebar')

  render: ->
    super()

    # FIXME: the real magic happens in the app/javascript/src/locomotive/content_editing.es6 file

  shrink_preview: (event) ->
    $(@el).removeClass('actionbar-closed')

  close_sidebar: (event) ->
    PubSub.publish 'sidebar.close'
