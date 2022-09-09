using { CatalogService }from './cat-service';

annotate CatalogService.Books with @(
    UI: {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Book',
            TypeNamePlural : 'Books',
            Description : {
                $Type : 'UI.DataField',
                Value : title,
            },
            
        },
        SelectionFields  : [
            ID,
            title
        ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
            }

        ],
        Facets  : [
            {
                $Type : 'UI.ReferenceFacet',
                Target : '@UI.Identification',
                ID : 'bookData',
                Label : 'Book Data',
            },
        ],
        Identification  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
            }
        ],
    }
){
    ID @title: 'ID';
    title @title: 'Title';
    stock @title: 'Stock';
}