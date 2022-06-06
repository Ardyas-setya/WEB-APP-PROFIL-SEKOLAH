package com.example.afinal.ui.prestasi;

import android.content.Context;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.afinal.AdapterRecyclerView;
import com.example.afinal.R;

public class PrestasiViewModel extends ViewModel {

    private final MutableLiveData<String> mText;

    public PrestasiViewModel() {
        mText = new MutableLiveData<>();
        mText.setValue("This is gallery fragment");
    }

public class PrestasiRecycleriew extends AppCompatActivity{
    Context context;
    RecyclerView recyclerView;
    RecyclerView.Adapter recyclerViewAdapter;
    RecyclerView.LayoutManager recylerViewLayoutManager;
    String[] subjects = {
            "Facebook", "Twitter", "Instagram", "SnapChat",
            "WhatsApp", "LINE", "KakaoTalk", "Telegram", "Messenger",
            "YouTube", "TikTok", "Vine", "Vimeo",
            "Figma", "Adobe XD", "Sketch", "Framer",
            "Android", "iOS", "Windows",
            "Opera", "Mozilla", "Safari", "Edge",
            "Paypal", "Mastercard", "Visa",
            "Bitcoin", "Ethereum"
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        context = getApplicationContext();
        recyclerView = findViewById(R.id.recyclerView);
        recylerViewLayoutManager = new LinearLayoutManager(context);
        recyclerView.setLayoutManager(recylerViewLayoutManager);
        recyclerViewAdapter = new AdapterRecyclerView(context, subjects);
        recyclerView.setAdapter(recyclerViewAdapter);
    }
}


    public LiveData<String> getText() {
        return mText;
    }
}