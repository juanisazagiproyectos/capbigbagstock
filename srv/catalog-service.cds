using {com.ui.bigbagstock as bigbag} from '../db/schema';

service CatalogService {
    // entity BigBagStock as projection on bigbag.BigBagStock;
    entity BigBagStock @(restrict : [
        {
            grant : ['READ'],
            to    : ['BigbagStockViewer']
        },
        {
            grant : [
                'READ',
                'DELETE'
            ],
            to    : ['BigbagStockDelete']
        },
        {
            grant : [
                'READ',
                'CREATE',
                'UPDATE'
            ],
            to    : ['BigbagStockOperator']
        }
    ]) as projection on bigbag.BigBagStock;

    annotate BigBagStock with @odata.draft.enabled;

    // entity Bigbagtype as projection on bigbag.Bigbagtype;

    entity Bigbagtype @(restrict : [
        {
            grant : ['READ'],
            to    : ['BigbagStockViewer']
        },
        {
            grant : ['*'],
            to    : ['BigbagStockManager']
        }
    ]) as projection on bigbag.Bigbagtype;

    annotate Bigbagtype with @odata.draft.enabled;

    // entity Shift as projection on bigbag.Shift;

    entity Shiftsk @(restrict : [
        {
            grant : ['READ'],
            to    : ['BigbagStockViewer']
        },
        {
            grant : ['*'],
            to    : ['BigbagStockManager']
        }
    ]) as projection on bigbag.Shiftsk;

    annotate Shiftsk with @odata.draft.enabled;

    // entity Reference as projection on bigbag.Reference;
    entity Referencesk @(restrict : [
        {
            grant : ['READ'],
            to    : ['BigbagStockViewer']
        },
        {
            grant : ['*'],
            to    : ['BigbagStockManager']
        }
    ]) as projection on bigbag.Referencesk;

    annotate Referencesk with @odata.draft.enabled;

    // entity Observation as projection on bigbag.Observation;

    entity Observationsk @(restrict : [
        {
            grant : ['READ'],
            to    : ['BigbagStockViewer']
        },
        {
            grant : ['*'],
            to    : ['BigbagStockManager']
        }
    ]) as projection on bigbag.Observationsk;

    annotate Observationsk with @odata.draft.enabled;
}
