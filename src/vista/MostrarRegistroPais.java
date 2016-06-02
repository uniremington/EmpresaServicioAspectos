package vista;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextArea;
import javax.swing.JButton;

public class MostrarRegistroPais {

	private JFrame frame;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MostrarRegistroPais window = new MostrarRegistroPais();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public MostrarRegistroPais() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JLabel lblConsultarRegistros = new JLabel("Consultar Registros");
		lblConsultarRegistros.setBounds(174, 21, 131, 25);
		frame.getContentPane().add(lblConsultarRegistros);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(98, 71, 227, 110);
		frame.getContentPane().add(textArea);
		
		JButton btnConsultar = new JButton("Consultar");
		btnConsultar.setBounds(159, 206, 89, 23);
		frame.getContentPane().add(btnConsultar);
	}
}
