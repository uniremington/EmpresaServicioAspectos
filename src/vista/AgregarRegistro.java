package vista;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;

public class AgregarRegistro {

	private JFrame frame;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					AgregarRegistro window = new AgregarRegistro();
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
	public AgregarRegistro() {
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
		
		JLabel lblAgregarUnRegistro = new JLabel("Agregar un registro");
		lblAgregarUnRegistro.setBounds(163, 11, 121, 14);
		frame.getContentPane().add(lblAgregarUnRegistro);
		
		textField = new JTextField();
		textField.setBounds(173, 36, 86, 20);
		frame.getContentPane().add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBounds(173, 67, 86, 20);
		frame.getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		textField_2 = new JTextField();
		textField_2.setBounds(173, 98, 86, 20);
		frame.getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		textField_3 = new JTextField();
		textField_3.setBounds(173, 129, 86, 20);
		frame.getContentPane().add(textField_3);
		textField_3.setColumns(10);
		
		textField_4 = new JTextField();
		textField_4.setBounds(173, 160, 86, 20);
		frame.getContentPane().add(textField_4);
		textField_4.setColumns(10);
		
		JLabel lblCampo = new JLabel("Campo1");
		lblCampo.setBounds(36, 39, 46, 14);
		frame.getContentPane().add(lblCampo);
		
		JLabel lblCampo_1 = new JLabel("Campo 2");
		lblCampo_1.setBounds(36, 70, 46, 14);
		frame.getContentPane().add(lblCampo_1);
		
		JLabel lblCampo_2 = new JLabel("Campo 3");
		lblCampo_2.setBounds(36, 101, 46, 14);
		frame.getContentPane().add(lblCampo_2);
		
		JLabel lblCampo_3 = new JLabel("Campo 4");
		lblCampo_3.setBounds(36, 132, 46, 14);
		frame.getContentPane().add(lblCampo_3);
		
		JLabel lblCampo_4 = new JLabel("Campo 5");
		lblCampo_4.setBounds(36, 166, 46, 14);
		frame.getContentPane().add(lblCampo_4);
		
		JButton btnIngresarRegistro = new JButton("Ingresar Registro");
		btnIngresarRegistro.setBounds(163, 208, 133, 23);
		frame.getContentPane().add(btnIngresarRegistro);
	}
}
