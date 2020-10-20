package DummyDBpackage;

public class checkLogin {

	public boolean rightCredentials(String roll, String pass){
		if(roll.equals("aa") && pass.equals("aa"))
			return true;
		return false;
	}
}
