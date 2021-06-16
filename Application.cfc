
component {
    this.name = createUUID();
    function onRequestStart(){
        application.filterObject = createObject('component','assets.db.database');
    }
}