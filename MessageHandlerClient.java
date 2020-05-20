package client.common;

import java.util.ArrayList;

import client.common.controllers.LoginController;
import client.common.controllers.MarketingAgentCustomerAddController;
import client.common.controllers.MarketingAgentCustomerPurchasePatternMainController;
import client.common.controllers.MarketingAgentCustomersMainController;
import client.common.controllers.MarketingAgentVehicleAddController;
import client.common.controllers.MarketingAgentVehicleMainController;
import client.common.controllers.StationManagerController;
import client.common.controllers.StationManagerNotificationController;
import message_info.*;

//this class is responsible of handling the messages recived from the server, its uses switch cases
//to know what to do

public class MessageHandlerClient {

	public static void HandleMessage(Message message) {
		switch (message.getReturnedType()) {
		case LOGIN_FAILED:
			switch (message.getParent_action()) {
			case "LoginController_login_clicked":
				LoginController.instance.return_login_failed((String) message.getContent());
				break;
			}
			break;
		case LOGIN_SUCCESSFUL:
			switch (message.getParent_action()) { 
			case "LoginController_login_clicked":
				ArrayList<ArrayList<Object>> table = (ArrayList<ArrayList<Object>>) message.getContent();
				LoginController.instance.return_login_success(table);
				break;
			}
			break;
		case RETURNED_INFO:
			break;

		case RETURNED_INFO_FAILED:
			break;

		case UPDATE_FAILED:
			break;

		case UPDATE_SUCCESSFUL:
			break;

		case LOGOUT_SUCCESSFUL:
			switch (message.getParent_action()) {

			case "StationManagerController_logout_clicked":
				StationManagerController.instance.return_logout_success();
				break;

			case "StationManagerNotificationController_logout_clicked":
				StationManagerNotificationController.instance.return_logout_success();
				break;
				
			case "MarketingAgentCustomerMainController_logout_clicked":
				MarketingAgentCustomersMainController.instance.return_logout_success();
				break;
				
			case "MarketingAgentCustomerAddController_logout_clicked":
				MarketingAgentCustomerAddController.instance.return_logout_success();
				break;
			case "MarketingAgentVehicleMainController_logout_clicked":
				MarketingAgentVehicleMainController.instance.return_logout_success();
				break;
			case "MarketingAgentVehicleAddController_logout_clicked":
				MarketingAgentVehicleAddController.instance.return_logout_success();
				break;
			case "MarketingAgentCustomerPurchasePatternMainController_logout_clicked":
				MarketingAgentCustomerPurchasePatternMainController.instance.return_logout_success();
				break;
				
			} 
			break;

		case LOGOUT_FAILED:
			switch (message.getParent_action()) {

			}
			break;
		}
	}
}
