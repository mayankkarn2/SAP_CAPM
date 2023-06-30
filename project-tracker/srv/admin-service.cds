using my.project as my from '../db/data-model';

// @requires: 'authenticated-user'
service AdminService @(path:'/admin') {
    entity Tasks as projection on my.Tasks excluding { ID };
}