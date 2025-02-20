public with sharing class TaskReader {
    public static List<Task__c> getTasks(String priority, String status) {
        // Query Task__c records based on input criteria
        return [
            SELECT Id, Name, Priority__c, Status__c, Due_Date__c
            FROM Task__c
            WHERE Priority__c = :priority AND Status__c = :status
            //test compare
        ];
    }
}