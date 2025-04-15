package com.example.pra5;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
public class HomeFragment extends Fragment {
    private static final String TAG = "HelloWorldFragment";
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Log.d("fragmentlifecycle", "onCreateView called");
        return inflater.inflate(R.layout.fragment_home, container, false);
    }
    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Log.d("fragmentlifecycle", "onViewCreated called");
    }
    @Override
    public void onStart() {
        super.onStart();
        Log.d("fragmentlifecycle", "onStart called");
    }
    @Override
    public void onResume() {
        super.onResume();
        Log.d(TAG, "onResume called");
    }
    @Override
    public void onPause() {
        super.onPause();
        Log.d("fragmentlifecycle", "onPause called");
    }
    @Override
    public void onStop() {
        super.onStop();
        Log.d("fragmentlifecycle", "onStop called");
    }
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        Log.d("fragmentlifecycle", "onDestroyView called");
    }
    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d("fragmentlifecycle", "onDestroy called");
    }}
