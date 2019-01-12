public with sharing class MassDeleteExtension2 {

    ApexPages.StandardSetController setCon;

    public MassDeleteExtension2(ApexPages.StandardSetController controller) {
        setCon = controller;
    }

    public String getMySelectedSize() {
        return setCon.getSelected().size() +'';
    }

    public PageReference deleteRecords(){
        delete setCon.getSelected();
        return setCon.cancel();
    }

}