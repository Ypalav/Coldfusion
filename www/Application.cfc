/**
 * ComponentName.cfc
 *
 * @author anonymous
 * @date date
 **/
component {

    this.name = 'learncfinaweek'
    this.dataSource = 'learncfinaweek'
    this.applicationtimeout = CreateTimeSpan(10, 0, 0, 0);
    this.sessionmanagement = true
    this.sessiontimeout = CreateTimeSpan(0, 0, 30, 0);

    function onApplicationStart(){
      application.myName = 'Yogesh';
      application.myPosition = 'A Dev';
      return true;
    }

    function onRequestStart(String targetPage){
      if(StructKeyExists(url, 'reload')){
        onApplicationStart();
      }
    }
}
