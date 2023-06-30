using my.project as my from '../db/data-model';

// @requires: 'authenticated-user'
service ProjectService @(path:'/user'){
    @readonly entity Tasks as projection on my.Tasks excluding { ID };
    // @insertonly entity Tasks as projection on my.Tasks excluding { ID };
    function getTasks(user: String) returns String;
}