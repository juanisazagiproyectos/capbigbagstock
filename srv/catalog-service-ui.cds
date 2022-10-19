using CatalogService from './catalog-service';

// uibigbagcond App Annotations
annotate CatalogService.BigBagStock with {
    bigbagtype        @title : '{i18n>bigbagtype}'  @mandatory;
    shiftsk           @title : '{i18n>shift}'  @mandatory;
    referencesk       @title : '{i18n>reference}'  @mandatory;
    observationsk     @title : '{i18n>observation}'  @mandatory;
    quantity          @title : '{i18n>quantity}'  @mandatory;
    registration_date @title : '{i18n>registration_date}'  @mandatory;
}

annotate CatalogService.BigBagStock with @(UI : {
    HeaderInfo       : {
        TypeName       : '{i18n>Bigbag}',
        TypeNamePlural : '{i18n>Bigbags}',
        Title          : {
            $Type : 'UI.DataField',
            Value : shiftsk_ID
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : bigbagtype_ID
        }
    },
    SelectionFields  : [
        createdAt,
        referencesk_ID
    ],
    // SelectOptions    : [{
    //     $Type        : 'UI.SelectOptionType',
    //     PropertyName : Customer,
    //     Ranges       : [{
    //         $Type  : 'UI.SelectionRangeType',
    //         Sign   : #I,
    //         Option : #EQ,
    //         Low    : 'ABC'
    //     }]
    // }],
    LineItem         : [
        {Value : referencesk_ID},
        {Value : observationsk_ID},
        {Value : quantity}
    ],
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Detail}',
        Target : '@UI.FieldGroup#Main'
    }],
    FieldGroup #Main : {Data : [
        {Value : referencesk_ID},
        {Value : observationsk_ID},
        {Value : registration_date},
        {Value : quantity}
    ]}
}, ) {
    createdAt @UI.HiddenFilter : false;
    createdBy @UI.HiddenFilter : false;
};

annotate CatalogService.BigBagStock with {
    bigbagtype @(Common : {
        Text            : bigbagtype.description,
        TextArrangement : #TextOnly,
        ValueList       : {
            Label          : '{i18n>bigbagtype}',
            CollectionPath : 'Bigbagtype',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : bigbagtype_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'description'
                }
            ]
        }
    });
}

annotate CatalogService.BigBagStock with {
    shiftsk @(Common : {
        Text            : shiftsk.description,
        TextArrangement : #TextOnly,
        ValueList       : {
            Label          : '{i18n>shift}',
            CollectionPath : 'Shiftsk',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : shiftsk_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'description'
                }
            ]
        }
    });
}

annotate CatalogService.BigBagStock with {
    referencesk @(Common : {
        Text            : referencesk.description,
        TextArrangement : #TextOnly,
        ValueList       : {
            Label          : '{i18n>reference}',
            CollectionPath : 'Referencesk',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : referencesk_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'description'
                }
            ]
        }
    });
}

annotate CatalogService.BigBagStock with {
    observationsk @(Common : {
        Text            : observationsk.description,
        TextArrangement : #TextOnly,
        ValueList       : {
            Label          : '{i18n>observation}',
            CollectionPath : 'Observationsk',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : observationsk_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'description'
                }
            ]
        }
    });
}

// bigbagtype_search_help App Annotations
annotate CatalogService.Bigbagtype with {
    description @title : '{i18n>bigbagtype}'  @mandatory;
}

annotate CatalogService.Bigbagtype with @(UI : {
    HeaderInfo       : {
        TypeName       : '{i18n>bigbagtype}',
        TypeNamePlural : '{i18n>bigbagtypes}'
    },
    SelectionFields  : [ID],
    LineItem         : [{Value : description}],
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Detail}',
        Target : '@UI.FieldGroup#Main'
    }],
    FieldGroup #Main : {Data : [{Value : description}, ]}
}, ) {};

// shift_sk_search_help App Annotations
annotate CatalogService.Shiftsk with {
    description @title : '{i18n>shift}'  @mandatory;
}

annotate CatalogService.Shiftsk with @(UI : {
    HeaderInfo       : {
        TypeName       : '{i18n>shift}',
        TypeNamePlural : '{i18n>shifts}'
    },
    SelectionFields  : [ID],
    LineItem         : [{Value : description}],
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Detail}',
        Target : '@UI.FieldGroup#Main'
    }],
    FieldGroup #Main : {Data : [{Value : description}, ]}
}, ) {};

// reference_sk_search_help App Annotations
annotate CatalogService.Referencesk with {
    description @title : '{i18n>reference}'  @mandatory;
}

annotate CatalogService.Referencesk with @(UI : {
    HeaderInfo       : {
        TypeName       : '{i18n>reference}',
        TypeNamePlural : '{i18n>references}'
    },
    SelectionFields  : [ID],
    LineItem         : [{Value : description}],
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Detail}',
        Target : '@UI.FieldGroup#Main'
    }],
    FieldGroup #Main : {Data : [{Value : description}, ]}
}, ) {};

// observation_sk_search_help App Annotations
annotate CatalogService.Observationsk with {
    description @title : '{i18n>observation}'  @mandatory;
}

annotate CatalogService.Observationsk with @(UI : {
    HeaderInfo       : {
        TypeName       : '{i18n>observation}',
        TypeNamePlural : '{i18n>observations}'
    },
    SelectionFields  : [ID],
    LineItem         : [{Value : description}],
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Detail}',
        Target : '@UI.FieldGroup#Main'
    }],
    FieldGroup #Main : {Data : [{Value : description}, ]}
}, ) {};
