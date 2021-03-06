'use strict'

# =============================================
# Module
# =============================================
angular.module 'ngFiltersMasks'

# =============================================
# App Config
# =============================================
.config([ '$translateProvider', ($translateProvider) ->
    # $translateProvider.addInterpolation('$translateMessageFormatInterpolation')
    $translateProvider.useMessageFormatInterpolation()

    $translateProvider.useLoader('$translatePartialLoader', {
      urlTemplate: 'app/{part}/i18n/{lang}.json'
    }).useSanitizeValueStrategy('escaped')
    .preferredLanguage('pt_br')
    .fallbackLanguage('pt_br')
  ]
).run ($rootScope, $translate, $translatePartialLoader)->

  $rootScope.$on '$translatePartialLoaderStructureChanged', ()->
    $translate.refresh()

  $translatePartialLoader.addPart('project')


