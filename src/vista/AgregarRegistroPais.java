package vista;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;

public class AgregarRegistroPais {

	private JFrame frame;
	private JTextField textField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					AgregarRegistroPais window = new AgregarRegistroPais();
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
	public AgregarRegistroPais() {
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
		
		JLabel lblAgregarUnRegistro = new JLabel("AGREGAR PAÍS");
		lblAgregarUnRegistro.setBounds(163, 11, 121, 14);
		frame.getContentPane().add(lblAgregarUnRegistro);
		
		textField = new JTextField();
		textField.setBounds(173, 36, 86, 20);
		frame.getContentPane().add(textField);
		textField.setColumns(10);
		
		JLabel lblCampo = new JLabel("Campo1");
		lblCampo.setBounds(36, 39, 46, 14);
		frame.getContentPane().add(lblCampo);
		
		JButton btnIngresarRegistro = new JButton("Ingresar Registro");
		btnIngresarRegistro.setBounds(163, 208, 133, 23);
		frame.getContentPane().add(btnIngresarRegistro);
	}
}
