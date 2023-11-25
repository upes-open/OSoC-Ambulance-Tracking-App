const queryOverpass = require('@derhuerst/query-overpass')

async function getHospitalData(lat, long) {
    try{
        hospitals = await queryOverpass(`
            [out:json][timeout:25];
            node(around:10000, ${lat}, ${long})["amenity"="hospital"];
            out body;
        `);                     // returns an object with numbers for keys, and hospital data as values

        // remove hospitals without phone number
        for (const i in hospitals) {
            let hasPhone = 0;
            for (const k in hospitals[i]["tags"]) {
                if (k.toLowerCase().indexOf("phone") != -1) {
                    hasPhone = 1;
                    break;
                }
            }
            if (hasPhone == 0) {
                delete hospitals[i];
            }
            hasPhone = 0;
        }
        // The elements in hospitals that had no phone number were deleted show up as "empty elemets" for some reason when printing
        // the object as whole, but don't show up when looping through the object, if you try to index that deleted key, it returns "undefined"

        hospitals.filter(hospital => hospital); /* removed "undefined" elements after deleting*/

        return hospitals;
    }

    catch (error) {
        console.error(error); 
        return -1;
    }

}

module.exports = getHospitalData;