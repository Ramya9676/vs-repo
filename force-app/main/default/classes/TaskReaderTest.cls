@isTest
private class TaskReaderTest {
    /**
     * Test method for TaskReader.getTasks()
     */
    @isTest
    static void testGetTasks() {
        // Step 1: Create test data
        List<Task__c> testTasks = new List<Task__c>{
            new Task__c(Name = 'Task 1', Priority__c = 'High', Status__c = 'To Do', Due_Date__c = Date.today().addDays(7)),
            new Task__c(Name = 'Task 2', Priority__c = 'Medium', Status__c = 'In Progress', Due_Date__c = Date.today().addDays(3)),
            new Task__c(Name = 'Task 3', Priority__c = 'High', Status__c = 'To Do', Due_Date__c = Date.today().addDays(10))
        };
        insert testTasks;

        // Step 2: Test the getTasks method
        Test.startTest();
        List<Task__c> highPriorityTasks = TaskReader.getTasks('High', 'To Do');
        Test.stopTest();

        // Step 3: Assertions
        System.assertNotEquals(null, highPriorityTasks, 'The result should not be null');
        System.assertEquals(2, highPriorityTasks.size(), 'There should be exactly 2 high-priority tasks');
        System.assertEquals('Task 1', highPriorityTasks[0].Name, 'The first task should be Task 1');
        System.assertEquals('Task 3', highPriorityTasks[1].Name, 'The second task should be Task 3');
    }
}