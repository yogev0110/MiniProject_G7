package client.common.controllers;

import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;
import client.MainClientGUI;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.input.MouseEvent;
import message_info.Message;
import message_info.MessageType;

public class LoginController extends AbstractController {

	public static LoginController instance; // holding an instance of this controller here

	@FXML
	private ImageView logo;

	@FXML
	private TextField username_text;

	@FXML
	private TextField password_text;

	@FXML
	private Button login_btn;

	/*
	 * this method is responsible for handling the "login" button getting pressed
	 * the method sends to the server the information of the loggin.
	 */
	@FXML
	void login_clicked(MouseEvent event) {
		String user, pass;
		user = username_text.getText();
		pass = password_text.getText();
		Message message = new Message(MessageType.LOGIN, "LoginController_login_clicked",
				"SELECT * FROM users WHERE username = \"" + user + "\" AND password = \"" + pass + "\"");
		MainClientGUI.client.handleMessageFromClientUI(message);
	}

	/*
	 * this method is activated when the clientMessageHandler recives a failure of
	 * loggin its responsible to handle it to the client
	 */
	public void return_login_failed(String errorMsg) {
		Platform.runLater(new Runnable() {
			@Override
			public void run() {
				Alert alert = new Alert(AlertType.ERROR);
				alert.setTitle("LOGIN FAIELD");
				alert.setHeaderText(null);
				alert.setContentText(errorMsg);
				alert.show(); 
			}
		});
	}

	/*
	 * this method is activated when the clientMessageHandler recives a success of
	 * loggin its responsible to handle it to the client
	 */

	public void return_login_success(ArrayList<ArrayList<Object>> user) {
		MainClientGUI.setUserID(((int) user.get(0).get(2)));
		MainClientGUI.loggedIn = true;
		switchScenes("/client/boundry/MarketingAgentMainCustomerForm.fxml", "/client/boundry/MarketingAgentMainCustomer.css");
	}
 
	/*
	 * this method is the first thing that the controller does. we help to start the
	 * controller in here.
	 */
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		instance = this;
		MainClientGUI.run_Client();
	}
}