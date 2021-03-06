package dk.itu.mario.engine;
import java.awt.Dimension;
import java.awt.Toolkit;

import javax.swing.JFrame;

public class Play {

	public static void main(String[] args)
	{

		JFrame frame = new JFrame("Mario Experience Showcase");
        //frame.setExtendedState(JFrame.MAXIMIZED_BOTH); 
        frame.setUndecorated(true);
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		MarioComponent mario = new MarioComponent(screenSize.width, screenSize.height,true);

		frame.setContentPane(mario);
		frame.setResizable(false);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.pack();

		
		frame.setLocation((screenSize.width-frame.getWidth())/2, (screenSize.height-frame.getHeight())/2);

		frame.setVisible(true);

		mario.start();

	}

}
