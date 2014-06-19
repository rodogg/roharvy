package droid.roharvy.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import droid.roharvy.app.library.DatabaseHandler;
import droid.roharvy.app.library.UserFunctions;
import java.util.HashMap;

/**
 *
 */
public class Main extends Activity {
    Button logout_BTN;
    Button changepass_BTN;

    /**
     * Called when the activity is first created.
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        changepass_BTN = (Button) findViewById(R.id.btchangepass);
        logout_BTN = (Button) findViewById(R.id.btnlogout);

        DatabaseHandler db = new DatabaseHandler(getApplicationContext());

        /**
         * HashMap to load data from the Sqlite database
         **/
        HashMap<String, String> user = db.getUserDetails();

        /**
         * Change Password Activity Started
         **/
        changepass_BTN.setOnClickListener(new View.OnClickListener() {

            public void onClick(View arg0) {

                Intent change_pass = new Intent(getApplicationContext(), ChangePassword.class);
                startActivity(change_pass);
            }
        });

        /**
         * Logout from the User Panel which clears the data in Sqlite database
         **/
        logout_BTN.setOnClickListener(new View.OnClickListener() {

            public void onClick(View arg0) {

                UserFunctions logout = new UserFunctions();
                logout.logoutUser(getApplicationContext());
                Intent login = new Intent(getApplicationContext(), Login.class);
                login.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(login);
                finish();
            }
        });

        /**
         * Sets user first name and last name in text view.
         **/
        final TextView login = (TextView) findViewById(R.id.textwelcome);
        login.setText("Welcome  " + user.get("fname"));
        final TextView lname = (TextView) findViewById(R.id.lname);
        lname.setText(user.get("lname"));

    }
}
