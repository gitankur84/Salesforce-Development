public class TestCollection {
    
    public static void testSet(){
        Set<String> setVar= new Set<String>{'ank', 'ank'};
        setVar.remove('ank');
        
    }
    
      public static void testList(){
        Set<String> setVar= new Set<String>{'ank', 'sai'};
        setVar.remove('ank');
        
    }
    
      public String[] getStrings() {
          
        String[] str=new String[12000];
          for(Integer i=0;i<12000;i++){
              str[i]=i.format();
          }
          return str;
    }


}