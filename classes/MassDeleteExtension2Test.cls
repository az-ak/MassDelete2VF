@isTest
private class MassDeleteExtension2Test {

    static testMethod void testDeleteRecords() {
        List<Lead> leads = new List<Lead>();
        ApexPages.StandardSetController sc = new ApexPages.StandardSetController(leads);
        MassDeleteExtension2 extension = new MassDeleteExtension2(sc);
        System.assertNotEquals(null, extension.deleteRecords());
    }

    static testMethod void testSelectedSize() {
        List<Lead> leads = new List<Lead>();
        leads.add(new Lead(LastName='test'));
        ApexPages.StandardSetController sc = new ApexPages.StandardSetController(leads);
        sc.setSelected(leads);
        MassDeleteExtension2 extension = new MassDeleteExtension2(sc);
        System.assertEquals('1', extension.getMySelectedSize());
    }
}