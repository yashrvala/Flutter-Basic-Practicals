package com.example.practical_5;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d("Yash1", "onCreate");
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        if (savedInstanceState == null) {
            getSupportFragmentManager().beginTransaction()
                    .replace(R.id.main, new HomeFragment())
                    .commit();
        }
    }
    protected void onStart() {
        super.onStart();
        Log.d("Yash2", "onStart");
    }
    protected void onResume() {
        super.onResume();
        Log.d("Yash1", "onResume");
    }
    protected void onPause() {
        super.onPause();
        Log.d("lifecycle", "onPause");
    }
    protected void onStop() {
        super.onStop();
        Log.d("lifecycle", "onStop");
    }
    protected void onDestroy() {
        super.onDestroy();
        Log.d("lifecycle", "onDestroy");
    }
    protected void onRestart() {
        super.onRestart();
        Log.d("lifecycle", "onRestart");
    }
}
