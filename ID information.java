import 使用個案圖.上傳;
import 使用個案圖.量測;

/**
 * @author user
 * @version 1.0
 * @created 04-十二月-2023 下午 09:02:34
 */
public class ID information {

	private char Address;
	private char Birthday;
	private char BloodType;
	private char CellPhone;
	private double Center;
	private char Gender;
	private char ID;
	private char Name;
	private int PatientNB;
	private boolean Pregnant;
	private char Remark;
	private double Weight;
	private Measure Record m_Measure Record;

	public ID information(){

	}

	public void finalize() throws Throwable {

	}

	public Measure Record getMeasure Record(){
		return m_Measure Record;
	}

	public Query Data(){

	}

	/**
	 * 
	 * @param newVal
	 */
	public void setMeasure Record(Measure Record newVal){
		m_Measure Record = newVal;
	}

}