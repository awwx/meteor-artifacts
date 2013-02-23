console.log 'FOO'

if Meteor.isClient
  Template.hello.greeting = ->
    "Welcome to minimal."

  x = 0

  Template.inner.events
    'click #inner-clickme': ->
      if x
        $('#inner-clickme').html 'CLICK'
        x = 0
      else
        $('#inner-clickme').html 'ZURP'
        x = 1

