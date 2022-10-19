namespace com.ui.bigbagstock;

using {managed} from '@sap/cds/common';

entity BigBagStock : managed {
    key ID                : UUID @(Core.Computed : true);
        quantity          : Integer;
        registration_date : Date;
        bigbagtype        : Association to Bigbagtype;
        shiftsk           : Association to Shiftsk;
        referencesk       : Association to Referencesk;
        observationsk     : Association to Observationsk;
}

entity Bigbagtype : managed {
    key ID          : UUID @(Core.Computed : true);
        description : String;
}

entity Shiftsk : managed {
    key ID          : UUID @(Core.Computed : true);
        description : String;
}

entity Referencesk : managed {
    key ID          : UUID @(Core.Computed : true);
        description : String;
}

entity Observationsk : managed {
    key ID          : UUID @(Core.Computed : true);
        description : String;
}
