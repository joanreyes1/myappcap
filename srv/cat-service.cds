using {myappcap.db as myappcap} from '../db/schema';

service CatalogService @(path : '/srv') {

    entity Sales as
        select from myappcap.Sales {*};

};

annotate CatalogService.Sales with @UI : {
    LineItem : [
        {Value : id,      Label : 'ID'},
        {Value : cedula,  Label : 'Cèdula'},
        {Value : nombres, Label : 'Nombres'},
        {Value : apellidos,  Label : 'Apellidos'},
        {Value : direccion, Label : 'Direcciòn'}
    ]
};