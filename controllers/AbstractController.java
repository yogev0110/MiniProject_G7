package client.common.controllers;

import java.io.IOException;

import client.MainClientGUI;
import javafx.application.Platform;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;

public abstract class AbstractController implements Initializable {

	public void switchScenes(String fxmlFile,String cssFile) {

		/*
		 * this method is responsible for switching scenes in the application.
		 * it recives the fxml file path & the css asotiated with it.
		 */
		Platform.runLater(new Runnable() {
			@Override
			public void run() {
				Parent current = null;
				try {
					current = FXMLLoader.load(getClass().getResource(fxmlFile));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Scene scene = new Scene(current);
				scene.getStylesheets().add(cssFile);
				MainClientGUI.primaryStage.setScene(scene);
				MainClientGUI.primaryStage.show();
			}
		});
	}
}