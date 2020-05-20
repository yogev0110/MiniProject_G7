package client.common.controllers;

import java.net.URL;
import java.util.ResourceBundle;
import client.MainClientGUI;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.input.MouseEvent;
import message_info.Message;
import message_info.MessageType;

public class StationManagerController extends AbstractController {
 
	public static StationManagerController instance; // holding an instance of this controller here

	@FXML
	private Button main_btn;

	@FXML
	private Button report_btn;

	@FXML
	private Button notification_btn;

	@FXML
	private Button station_btn;

	@FXML
	private Button logout_btn;

	/*
	 * this method is responsible for handling a click in the logout button
	 */
	@FXML
	void logout_btn_clicked(MouseEvent event) {
		String quary = "UPDATE users SET connection_status = 0 WHERE userID = " + MainClientGUI.getUserID();
		Message message = new Message(MessageType.LOGOUT, "StationManagerController_logout_clicked", quary);
		MainClientGUI.client.handleMessageFromClientUI(message);
	}

	/*
	 * this method is responsible for handling a click in the manu button
	 */
	@FXML
	void main_btn_clicked(MouseEvent event) {

	}

	/*
	 * this method is responsible for handling a click in the notification button
	 */
	@FXML
	void notification_btn_clicked(MouseEvent event) {
		switchScenes("/client/boundry/StationManagerNotificationForm.fxml",
				"/client/boundry/StationManagerNotification.css");
	}

	/*
	 * this method is responsible for handling a click in the report button
	 */
	@FXML
	void report_btn_clicked(MouseEvent event) {

	}

	/*
	 * this method is responsible for handling a click in the station button
	 */
	@FXML
	void station_btn_clicked(MouseEvent event) {

	}

	public void return_logout_success() {
		MainClientGUI.loggedIn = false;
		switchScenes("/client/boundry/LoginForm.fxml", "/client/boundry/MainCss.css");
	}

	/*
	 * this method is the first thing that the controller does. we help to start the
	 * controller in here.
	 */
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		instance = this;
	}

}
