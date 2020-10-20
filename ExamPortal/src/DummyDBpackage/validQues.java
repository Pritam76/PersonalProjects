package DummyDBpackage;

public class validQues {

	public boolean isValidQues(String name){
		System.out.println(name);
		if(name.equals("attempt1.docx")||name.equals("attempt2.docx"))
			return true;
		return false;
	}
}
