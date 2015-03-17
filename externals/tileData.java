import com.cycling74.max.*;

class tile
{
	int rotation;
	boolean exists;
	int dmx_number;
	int module_number;
	int hw_id;
	//Date firstUseData;
	float amount_of_electricity;

	public tile() 
	{

	}
}

public class tileData extends MaxObject
{
	int width = 160;
	int height = 160;
	tile[][] tileBoard = new tile[width][height];

	private static final String[] INLET_ASSIST = new String[]{
		"inlet 1 help"
	};
	private static final String[] OUTLET_ASSIST = new String[]{
		"outlet 1 help"
	};
	
	public tileData(Atom[] args)
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL});
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);

	}
    
	public void bang()
	{
	}
    
	public void inlet(int i)
	{
	}
    
	public void inlet(float f)
	{
	}
    
    
	public void list(Atom[] list)
	{
	}

	public void generate    
}




