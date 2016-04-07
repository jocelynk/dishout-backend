/**
 * Created by User on 4/7/2016.
 */
var database = require('../server/database.js');
console.log("*****Drop Locations API Initiated*****")
exports.drop_locations = function(req, res) {
    console.log("*****Made Get Drop Locations Call*****")
    database('dbo.drop_off_locations')
        .join('dbo.addresses', 'dbo.addresses.address_id', '=', 'dbo.drop_off_locations.address_id')
        .select('dbo.drop_off_locations.location_name', 'dbo.drop_off_locations.location_type', 'dbo.addresses.street1', 'dbo.addresses.street2', 'dbo.addresses.street3', 'dbo.addresses.city', 'dbo.addresses.state', 'dbo.addresses.zipcode').then(function(v) {
            var locations = [];
            for(var i = 0; i < v.length; i++) {
                locations.push(v[i]);
            }
            res.json(locations);

        });
}